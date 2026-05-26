# CLRHack Self-Host Bootstrap Plan

## Goal

Produce a trusted bootstrap chain where CLRHack compiles the compiler source set into a Gen1 compiler artifact, then uses Gen1 to produce Gen2 with equivalent behavior.

## Current Baseline

- `dotnet test CLRHack.sln` is green.
- `sbcl --script build-tests.lisp` is green and still exercises the standalone compile/link lane.
- The existing bootstrap driver already reaches `SelfHostCompilerGen1` according to the current incompatibility log.
- The bootstrap source inventory is currently the eight-file compiler lane in `bootstrap-selfhost.lisp`.

## Known Blockers For The Next Milestone

- Gen2 is not yet established as a standing, repeatable bootstrap target.
- The bootstrap lane still depends on host SBCL for orchestration, macro expansion, and error reporting.
- Deterministic source order and artifact comparison are not yet enforced as hard bootstrap contracts.

## Incremental Strategy

The strategy is to make each bootstrap step independently shippable before widening scope:

1. Freeze the compiler source inventory and make the bootstrap driver deterministic.
2. Keep host-based execute mode as the only implementation until the source order and failure reporting are reproducible.
3. Use Gen1 to compile the same source set into Gen2 only after the current inventory is stable and the first failing form is logged precisely.
4. Add equivalence checks only after Gen2 exists and can be compared to Gen1 without changing the bootstrap surface.

## Phases

### Phase 0. Contract and Inventory Freeze

Goal:
- Define the bootstrap contract as a concrete inventory plus named artifacts: `SelfHostCompilerGen1` and `SelfHostCompilerGen2`.

Code areas:
- `bootstrap-selfhost.lisp`

Runtime implications:
- None beyond the existing host SBCL lane.

Exit criteria:
- The compiler source list is explicit, ordered, and documented.
- Dry-run and execute mode use the same inventory.
- The driver reports missing files and preflight issues before compilation starts.

New tests:
- A bootstrap dry-run check that asserts the source list and order.
- A preflight check for required files and `dotnet` availability.

### Phase 1. Source Boundary Hardening

Goal:
- Remove path, naming, and load-order ambiguity from the bootstrap lane.

Code areas:
- `bootstrap-selfhost.lisp`
- Source-file handling in the Lisp compiler front end if inventory discovery needs support.

Runtime implications:
- None unless a source-boundary bug exposes a missing reader or path primitive.

Exit criteria:
- Clean checkout and repeated runs produce the same source order and artifact names.
- Failure reports name the exact source form that stopped the lane.

New tests:
- Inventory determinism test.
- Artifact-name sanitization test.
- Regression test for the first unsupported source form reporting path.

### Phase 2. Gen1 As A Real Compiler Host

Goal:
- Use the current compiler source set to produce a complete Gen1 artifact without relying on ad hoc manual repair.

Code areas:
- Compiler source files that still require host-specific macros or reader behavior.
- `bootstrap-selfhost.lisp` execute mode.

Runtime implications:
- Only add runtime support if a compiler-source requirement proves the runtime is the controlling blocker.

Exit criteria:
- `SelfHostCompilerGen1` builds end-to-end from the host lane on demand.
- The execute mode logs every failing source in a single run instead of stopping silently.

New tests:
- Gen1 build smoke test.
- First-failure aggregation test for execute mode.
- Minimal post-link smoke run for the Gen1 artifact.

### Phase 3. Gen2 Self-Compile Lane

Goal:
- Have Gen1 compile the same source set and link `SelfHostCompilerGen2`.

Code areas:
- Any compiler-source form that still assumes host-only behavior during self-compilation.
- Bootstrap link and manifest handling, if Gen2 needs a separate root or dependency shape.

Runtime implications:
- Keep runtime changes minimal and justified by a concrete self-hosting blocker.

Exit criteria:
- Gen1 can build Gen2 with the same source inventory.
- Gen2 runs the same smoke checks as Gen1.

New tests:
- Gen1-to-Gen2 compile smoke test.
- Manifest-link test for Gen2 output.
- Simple behavioral parity test on one or two tiny compiler-input fixtures.

### Phase 4. Equivalence And Trust

Goal:
- Prove that Gen1 and Gen2 are behaviorally equivalent for the supported compiler surface.

Code areas:
- Bootstrap comparison helpers and any artifact normalization utilities.

Runtime implications:
- None unless the comparison needs additional metadata from the runtime.

Exit criteria:
- The baseline suite passes under the self-host lane.
- Any Gen1 versus Gen2 drift is tracked as a real regression, not an artifact-order artifact.

New tests:
- Normalized artifact comparison test.
- Bootstrap replay test from clean checkout.
- Re-run of the existing standalone suite against Gen1 and Gen2 outputs.

## Validation Gates

1. `dotnet test CLRHack.sln` remains green.
2. `sbcl --script build-tests.lisp` remains green.
3. Bootstrap lane dry-run passes and reports the same inventory each time.
4. Bootstrap lane execute mode reaches Gen1 link.
5. Gen1 can build Gen2.
6. Standalone execution remains green for any codegen or runtime change touched by a phase.

## Risks To Watch

- Compiler source forms outside the current compiled Lisp surface.
- Host SBCL assumptions leaking into path handling, package setup, or macro expansion.
- Non-deterministic artifact content obscuring real regressions.
- Adding runtime features before a compiler-source requirement proves they are necessary.

## Immediate Next Tasks

1. Keep the compiler source inventory current in the bootstrap driver.
2. Add a reproducible dry-run check if the inventory or order changes.
3. When the next bootstrap failure appears, log the first unsupported source form before changing runtime code.

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
