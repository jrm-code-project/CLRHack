# CLRHack Self-Hosting Strategy

## Objective

Make the Lisp compiler capable of compiling its own source set into a working Gen1 compiler, then use Gen1 to produce Gen2 with no behavioral regressions against the current host-driven pipeline.

This document turns the existing bootstrap contract into an execution strategy. It assumes host SBCL remains the control environment until the self-host lane reaches each named exit criterion.

## Standing Rules

These rules apply to every phase.

1. The existing test surface stays green before and after each phase slice.
2. Runtime growth is allowed only when a compiler source form or bootstrap execution failure proves it is required.
3. Each new capability lands with a focused regression test before the next unsupported feature is tackled.
4. The bootstrap lane remains additive until Gen2 parity is established.

## Validation Ladder

Run the cheapest relevant gates first, but do not declare a phase complete until its full gate set passes.

1. `dotnet test CLRHack.sln`
2. `sbcl --script build-tests.lisp`
3. `./run-standalone-tests.sh` whenever compiler output, linker behavior, or runtime semantics change
4. `sbcl --script bootstrap-selfhost.lisp`
5. `sbcl --script bootstrap-selfhost.lisp --execute`

## Current Baseline

Already in place:

- A bootstrap driver exists in `bootstrap-selfhost.lisp` with dry-run and execute modes.
- The compiler source inventory is defined and ordered as `package.lisp`, `clr-read.lisp`, `data.lisp`, `ast.lisp`, `ast-walker.lisp`, `generate-step1.lisp`, and `generate-step2.lisp`.
- The standard solution and standalone harness are the current source of truth for correctness.
- Several self-host blockers have already been removed, including quasiquote normalization, assembly-name sanitization, reader token hardening, IL stringification fixes, and duplicate declaration cleanup.

Known open blockers at the time of writing:

- The older `LOOP-COLLECTOR` representation gap should be treated as historical but not yet retired until a later bootstrap run proves it is no longer reachable.

Current milestone status:

- Host-driven bootstrap execute now completes end-to-end and links `SelfHostCompilerGen1.dll`.
- The next active phase is Gen1 bring-up: proving the linked self-hosted artifact can perform useful compiler work rather than only link successfully.

## Phase 0: Guardrails And Observability

### Goal

Make self-host work measurable and repeatable before more language surface is added.

### Work

- Keep `bootstrap-selfhost.lisp` as the authoritative source inventory and build order.
- Record every bootstrap failure by source file and controlling subsystem: reader, AST lowering, pass 1, pass 2, runtime, linker.
- Normalize the definition of done for each self-host blocker: focused regression first, phase gates second, bootstrap rerun third.

### Existing Gates That Must Stay Green

- `dotnet test CLRHack.sln`
- `sbcl --script build-tests.lisp`
- `sbcl --script bootstrap-selfhost.lisp`

### New Tests To Add In This Phase

- A small bootstrap smoke check that asserts the expected compiler source inventory and order.
- A regression around bootstrap artifact naming so sanitized assembly names do not regress.

### Exit Criteria

- Dry-run output is stable from a clean checkout.
- Every new blocker is logged as a named failing capability, not as an anonymous bootstrap crash.

## Phase 1: Frontend Parity For Compiler Sources

### Goal

Ensure every form used by compiler source files can be read, macroexpanded, normalized, and translated into the existing AST surface.

### Why This Phase Comes First

Current open failures stop before runtime or linker concerns become decisive. The shortest path to progress is to eliminate frontend representation gaps first.

### Work

- Teach `ast.lisp` to normalize the `loop` forms used by compiler sources into AST-friendly constructs.
- Decide whether to support `LOOP-COLLECTOR` directly or to rewrite that macroexpansion product into simpler forms before AST translation.
- Finish any remaining declaration, docstring, and quasiquote normalization needed by compiler macros.
- Keep `clr-read.lisp` aligned with compiler-source token reality, especially dotted symbols, character forms, and emitted opcode-like symbols.

### Runtime Impact

- None by default.
- If host macroexpansion helpers are still required, isolate them behind explicit bootstrap-only scaffolding rather than broad runtime changes.

### Existing Tests That Must Stay Green

- `MacroTest`
- `ClosureTest`
- `MultipleValuesTest`
- `ScopingTests`
- `dotnet test CLRHack.sln`
- `sbcl --script build-tests.lisp`

### New Tests To Add In This Phase

- A focused regression for the compiler-source `loop` pattern that currently yields `LOOP-COLLECTOR`.
- A reader regression for opcode-like dotted tokens and any compiler-source character literal edge cases.
- A macro normalization regression that covers the specific compiler macro forms that were failing during self-host.

### Exit Criteria

- `ast.lisp` and `generate-step2.lisp` no longer fail because of unsupported frontend forms.
- Bootstrap execute can advance past frontend translation for all compiler modules currently blocked by `LOOP-COLLECTOR`.

## Phase 2: Lexical Control-Flow Completeness

### Goal

Make pass 1 and pass 2 correctly compile the lexical control-flow shapes that the compiler source set actually uses.

### Why This Phase Is Separate

The remaining `RETURN-FROM` failure is a control-flow correctness problem, not another reader or macroexpansion problem.

### Work

- Fix the lexical environment propagation bug behind `RETURN-FROM: Block SCAN not found in lexical environment` in `generate-step1.lisp` or its upstream AST construction path.
- Audit the compiler sources for cross-scope `block`, `return-from`, `tagbody`, and `go` usage.
- If compiler sources require true non-local lexical exits, consume the already tracked `non-local-p` flags and add the missing runtime and codegen support rather than continuing to treat local and non-local exits identically.

### Runtime Impact

- Add runtime support for lexical non-local exits only if the compiler source set proves it is needed.
- If needed, introduce dedicated exception carriers for block exits and tagbody exits, and catch/rethrow them at function boundaries in a way that preserves unwind semantics.

### Existing Tests That Must Stay Green

- `BlockTest`
- `LabelsTest`
- `TagbodyTest`
- `LexicalExitsTest`
- `ComplexScopingTest`
- `dotnet test CLRHack.sln`
- `sbcl --script build-tests.lisp`

### New Tests To Add In This Phase

- A focused regression for the exact `SCAN` pattern that currently loses its block binding.
- If non-local exits are implemented, new cross-function `return-from` and `go` tests that assert unwind and value preservation behavior.
- A compiler-source fixture that exercises the control-flow form in the same shape used by `generate-step1.lisp`.

### Exit Criteria

- `generate-step1.lisp` compiles cleanly in bootstrap execute mode.
- Any added runtime-based non-local exit path is covered by standalone and solution tests.

## Phase 3: Codegen And Runtime Completeness For Compiler Modules

### Goal

Ensure the compiler can emit valid IL, manifests, and metadata for its own modules, not just for the external test suite.

### Work

- Audit self-hosted compiler modules for any remaining literal serialization issues, duplicate declarations, invalid field or method signatures, or linker contract drift.
- Keep separate-compilation behavior deterministic so compiler modules can depend on earlier compiler modules exactly the same way test fixtures do.
- Verify that manifest contents and linked program initialization order remain stable across repeated bootstrap runs.

### Runtime Impact

- Extend runtime support only for data shapes proven to be emitted by compiler modules and not yet accepted by the current runtime bridge.
- Prefer targeted bridge methods over broad new host interop when the need is limited to compiler bootstrap data.

### Existing Tests That Must Stay Green

- `CallableHardeningTest`
- `ClrExplicitFormsTest`
- `ReflectionTest`
- Separate compilation and linker checks in `build-tests.lisp`
- `dotnet test CLRHack.sln`
- `sbcl --script build-tests.lisp`
- `./run-standalone-tests.sh`

### New Tests To Add In This Phase

- A focused regression for any compiler-module literal or metadata shape that breaks IL emission.
- A bootstrap-oriented separate-compilation smoke case that mirrors compiler-module dependency order.
- A deterministic manifest comparison test that normalizes ordering-sensitive fields before comparison.

### Exit Criteria

- All compiler source files compile successfully under bootstrap execute mode.
- The linker produces `SelfHostCompilerGen1.dll` from the compiler module manifests.

## Phase 4: Gen1 Bring-Up

### Goal

Turn the linked self-hosted compiler artifact into a usable compiler driver.

### Work

- Define the smallest supported command or entrypoint surface for `SelfHostCompilerGen1`.
- Verify that Gen1 can compile at least one trivial Lisp file and one compiler-source smoke input without relying on host-only codepaths that are supposed to be retired.
- Keep host SBCL available as the fallback builder while Gen1 is being stabilized.

### Runtime Impact

- Fill only the runtime gaps exposed by executing Gen1 as a compiler process: argument handling, file lookup, path resolution, or reflection surfaces.
- Avoid broad runtime refactors before there is a concrete Gen1 execution failure demanding them.

### Existing Tests That Must Stay Green

- Full solution tests
- Full standalone suite
- Bootstrap dry-run and execute

### New Tests To Add In This Phase

- A Gen1 smoke test that compiles a minimal file and asserts the resulting artifact runs.
- A focused regression for the first host-only assumption found when invoking Gen1 as a compiler.

### Exit Criteria

- `SelfHostCompilerGen1` can compile the minimal supported smoke program.
- Gen1 is usable enough to start a full compiler-source self-compile attempt.

## Phase 5: Gen2 Self-Compile

### Goal

Use Gen1 to compile the compiler source inventory into `SelfHostCompilerGen2`.

### Work

- Run the same ordered source inventory through Gen1.
- Keep the output naming, manifest order, and root-manifest policy identical to the host-driven bootstrap unless a deliberate contract change is made.
- Capture every Gen1-vs-host divergence as either a real compiler bug, a runtime gap, or a normalization issue in the comparison tooling.

### Runtime Impact

- Any runtime additions here must be justified as requirements for running the compiler itself, not as convenience features.

### Existing Tests That Must Stay Green

- Full solution tests
- Full standalone suite
- Host bootstrap execute
- Gen1 smoke tests

### New Tests To Add In This Phase

- A Gen1-to-Gen2 bootstrap smoke test.
- A regression harness that compares normalized Gen1 and host-produced manifests for the same source input.

### Exit Criteria

- `SelfHostCompilerGen2` links successfully.
- Gen1 and host SBCL produce behaviorally equivalent outputs for the compiler source set under the normalization rules adopted by the project.

## Phase 6: Trust And Host Retirement Boundaries

### Goal

Decide what evidence is required before self-hosting becomes the default development path rather than an experimental lane.

### Work

- Define normalized equivalence checks for manifests, linked module initialization order, and representative emitted IL.
- Decide which tasks still legitimately require host SBCL and which should move to Gen1 or Gen2.
- Add a policy for when a bootstrap mismatch blocks merges versus when it is recorded as future work.

### Existing Tests That Must Stay Green

- Everything from prior phases

### New Tests To Add In This Phase

- A parity suite that compiles the same focused fixture set under host and self-hosted compilers and compares runtime behavior.
- A small golden corpus for normalized manifest and IL comparison.

### Exit Criteria

- The project has an explicit trust policy for host, Gen1, and Gen2 artifacts.
- Self-hosting can be enabled by default without losing the ability to diagnose regressions.

## Recommended Execution Order From Today

1. Finish the `LOOP-COLLECTOR` strategy in the frontend and land focused regressions before touching anything else.
2. Fix the `RETURN-FROM` lexical environment failure with a minimal targeted change and validate it against existing lexical-control tests.
3. Rerun bootstrap execute and treat the next failing compiler module as the next phase slice, not as a reason to broaden scope immediately.
4. Once Gen1 links, shift from compile-only blockers to compiler-process execution blockers.
5. Only after Gen1 can compile real inputs should Gen2 and trust-equivalence work become the primary lane.

## Open Design Questions

- Should `loop` support be implemented by lowering host macroexpansion products into existing AST nodes, or by teaching the AST layer about the specific `LOOP-COLLECTOR` structures the host emits?
- Does the compiler source set actually require cross-function lexical exits, or is the remaining `RETURN-FROM` failure purely an environment-tracking bug?
- What normalized artifact comparison is sufficient for trust: manifest equality, selected IL normalization, or runtime-behavior-only equivalence?