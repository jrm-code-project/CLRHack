# CLRHack Self-Host Bootstrap Plan

## Goal

Produce a trusted bootstrap chain where CLRHack compiles the compiler source set into a Gen1 compiler artifact, then uses Gen1 to produce Gen2 with equivalent behavior.

## Scope and Assumptions

- Scope in this document is the Lisp compiler frontend and codegen pipeline.
- Runtime validation remains the existing .NET build and standalone harness.
- Self-hosting is introduced as an additive lane; host SBCL remains fallback until gates are green.

## Milestones

### M0. Bootstrap Contract

Deliverables:
- Stable source inventory and build order.
- Named artifacts: `SelfHostCompilerGen1`, `SelfHostCompilerGen2`.
- Pass criteria and reproducibility checks.

Exit criteria:
- Contract agreed and committed.

### M1. Bootstrap Driver

Deliverables:
- Scripted driver to compile compiler modules and link a runner.
- Safe dry-run mode for inventory validation.
- Explicit execute mode for full compile attempts.

Exit criteria:
- Driver validates inventory in dry-run mode.
- Driver can start execute mode and emit partial artifacts for debugging.

### M2. Source Boundary Hardening

Deliverables:
- Deterministic source roots and path handling.
- Canonical source order for compiler modules.

Exit criteria:
- No load-order ambiguity.
- Same source inventory works from clean checkout.

### M3. Gen1 Build

Deliverables:
- Full module compile of compiler source set.
- Linked `SelfHostCompilerGen1` runner.

Exit criteria:
- Gen1 build completes end-to-end from host invocation.

### M4. Gen2 Build (Self-Compile)

Deliverables:
- Gen1 compiles same source set and links `SelfHostCompilerGen2`.

Exit criteria:
- Gen2 build completes without host-only codepaths.

### M5. Equivalence and Trust

Deliverables:
- Behavioral parity checks across baseline suite.
- Artifact comparison policy (manifest and normalized IL-level checks).

Exit criteria:
- No behavioral regressions between Gen1 and Gen2.

## Validation Gates

1. `dotnet test CLRHack.sln` remains green.
2. `sbcl --script build-tests.lisp` remains green.
3. Bootstrap lane dry-run passes.
4. Bootstrap lane execute mode reaches Gen1 link.
5. Gen1 can build Gen2.

## Risks to Watch

- Compiler source forms outside currently compiled Lisp surface.
- Hidden host assumptions in path and package setup.
- Non-deterministic artifact content obscuring real regressions.

## Immediate Next Tasks

1. Keep the compiler source inventory current in the driver script.
2. Run dry-run mode from clean checkout and validate file discovery.
3. Begin execute-mode attempts and record first unsupported source form.

## Bootstrap Incompatibility Log

1. Fixed: `RETURN-FROM NIL` lexical lookup failure while compiling `clr-read.lisp`.
: Added custom `loop` macro registration in `ast.lisp` that delegates to host `macroexpand-1` so implicit `block nil` semantics are preserved.
2. Fixed: `make-array` macro arity mismatch (`invalid number of arguments`) from keyword options.
: Updated custom `make-array` macro to accept `&rest options` and ignore unsupported keywords for now.
3. Fixed: pseudo quasiquote leakage in macro definitions (`BACKQUOTE`/`COMMA` forms surfacing during `data.lisp` macroexpansion).
: Added recursive normalization of pseudo quasiquote forms in `ast.lisp` before host `eval` of `defmacro` bodies.
4. Fixed: bootstrap assembly names with hyphens caused invalid IL extern syntax in linked module references.
: `bootstrap-selfhost.lisp` now sanitizes assembly names to alphanumeric and `_`.
5. Fixed: reader was misclassifying opcode-like dotted tokens as Javadot forms.
: Tightened `clr-read.lisp` Javadot detection so opcode symbols like `tail.`, `ldarg.0`, and `ldc.i4.0` remain symbols.
6. Historical: `LOOP-COLLECTOR` host structures from loop macroexpansion were the first known frontend representation gap.
: Current impact should be revalidated against the latest bootstrap baseline before more loop work is queued, because newer failures now stop the lane earlier in `data.lisp` and `ast.lisp`.
7. Partial: `SelfHost_clr_read` now compiles and assembles after declaration no-op lowering, character literal emission fix, and dotted-token reader hardening.
8. Fixed: self-host IL payload and duplicate-declaration issues in `data`/`ast-walker`.
: `generate-step2.lisp` now coerces non-symbol quoted names to strings before `ldstr` in static symbol initialization, and `data.lisp` now uses `cil-structured-block` (plus `compute-maxstack` support for that type) to avoid duplicate emitted `CIL_BLOCK` classes.
9. Fixed: `generate-step1.lisp` no longer fails on `RETURN-FROM: Block SCAN not found in lexical environment`.
: `block-needs-result-temp-p` no longer emits an invalid `(return-from scan)` from its local helper; latest bootstrap execute compiles `SelfHost_generate_step1` successfully.
10. Fixed: `data.lisp` no longer fails in self-host execute mode on `CLRHACK::%CONS`.
: Added host-side `%cons` and `%intern` bridge functions in `ast.lisp` so normalized `defmacro` bodies using backquote/quote can be `eval`'d during compiler self-compilation.
11. Fixed: `ast.lisp` no longer fails in self-host execute mode on the `go` special-form path.
: Added custom `case` and `ecase` macro expansion in `setup-macro-environment`, so self-compiling `lisp->ast` no longer misreads `case` clauses like `(go ...)` as real `go` forms.
12. Fixed: bootstrap no longer dies in `clr-read.lisp` during `CLRHACK::COMPUTE-MAXSTACK`.
: `data.lisp` `compute-maxstack` now keeps the precise control-flow walk for ordinary methods but falls back to a conservative finite upper bound when the worklist explodes; this prevents SBCL heap exhaustion on large self-host methods like `SelfHost_clr_read`.
13. Fixed: `ast.lisp` no longer fails on `invalid number of arguments: 3` during self-host compile.
: The custom `defvar` and `defparameter` macro expanders in `ast.lisp` now tolerate optional docstrings, matching the usage in compiler source files such as `*lifted-lambdas*`.
14. Milestone reached: bootstrap execute now compiles every compiler module and links `SelfHostCompilerGen1`.
: Latest `sbcl --script bootstrap-selfhost.lisp --execute` completed end-to-end and produced `bin/Release/net8.0/SelfHostCompilerGen1.dll`; a smoke run of `dotnet bin/Release/net8.0/SelfHostCompilerGen1.dll` exits cleanly.
