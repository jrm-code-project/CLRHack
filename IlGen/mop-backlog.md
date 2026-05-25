# CLRHack MOP Implementation Backlog

Status legend:
- TODO: not started
- IN-PROGRESS: active work
- BLOCKED: waiting on dependency or decision
- DONE: merged and validated

Priority legend:
- P0: unblocker/core runtime correctness
- P1: feature completeness for day-to-day CLOS use
- P2: conformance hardening and performance

Sizing legend:
- S: <= 1 day
- M: 1-3 days
- L: 3-7 days
- XL: > 1 week

## Milestones

- M0: Runtime scaffolding + callable generic functions
- M1: Core class and slot protocols
- M2: defclass/defgeneric/defmethod integration in compiler front-end
- M3: Invalidation, dependents, and hardening
- M4: Conformance and optimization passes

## Decision Gate (must settle before M2)

- D-001 (P0, S, DONE)
  - Title: Resolve semantic split between CLR class emission and CLOS defclass
  - Options:
    - Option A: repurpose defclass for CLOS, introduce explicit CLR form (example: clr-defclass)
    - Option B: keep defclass as CLR emit, introduce separate CLOS user macros (example: clos-defclass)
  - Decision: Option A selected.
  - Exit criteria:
    - Decision recorded in this file.
    - Migration note added to README.

## Backlog by Milestone

### M0: Runtime scaffolding + callable generic functions

- MOP-001 (P0, M, DONE)
  - Title: Add base metaobject type hierarchy in LispBase
  - Deliverables:
    - metaobject, specializer, class, standard-class, built-in-class, forward-referenced-class
    - generic-function, standard-generic-function
    - method, standard-method
    - slot-definition, direct-slot-definition, effective-slot-definition
    - eql-specializer
  - Dependencies: none
  - Exit criteria:
    - Types compile.
    - Constructor invariants enforced for required fields.

- MOP-002 (P0, M, DONE)
  - Title: Make standard-generic-function callable via existing Closure invoke path
  - Deliverables:
    - standard-generic-function inherits Closure (or adapter preserving Closure contract)
    - invoke dispatch delegates to discriminating function
  - Dependencies: MOP-001
  - Exit criteria:
    - Generic function object can be called from existing ast-application call path.

- MOP-003 (P0, M, DONE)
  - Title: Implement ensure-generic-function and ensure-generic-function-using-class
  - Deliverables:
    - Name lookup and create/reinitialize behavior
    - Generic-function class and method-class checks
  - Dependencies: MOP-001
  - Exit criteria:
    - Repeated ensure calls are idempotent and preserve options correctly.

- MOP-004 (P0, M, DONE)
  - Title: Implement method creation and association core
  - Deliverables:
    - add-method, remove-method
    - method-generic-function linkage maintenance
    - congruence checks
  - Dependencies: MOP-002, MOP-003
  - Exit criteria:
    - add/remove updates method sets and call behavior deterministically.

- MOP-005 (P0, M, DONE)
  - Title: Implement baseline dispatch protocol
  - Deliverables:
    - compute-applicable-methods
    - compute-effective-method (standard method combination only)
    - compute-discriminating-function baseline
  - Dependencies: MOP-004
  - Exit criteria:
    - Primary method dispatch precedence validated for class and eql specializers.

### M1: Core class and slot protocols

- MOP-006 (P0, M, DONE)
  - Title: Implement find-class registry and naming protocol
  - Deliverables:
    - class namespace registry
    - class-name and (setf class-name)
  - Dependencies: MOP-001
  - Exit criteria:
    - Named class lookup/rebind works with symbol namespace expectations.

- MOP-007 (P0, L, DONE)
  - Title: Implement ensure-class and ensure-class-using-class
  - Deliverables:
    - class creation/redefinition path
    - forward-referenced-class creation for unresolved superclasses
    - validate-superclass checks
  - Dependencies: MOP-001, MOP-006
  - Exit criteria:
    - Class creation and redefinition behave per selected compatibility policy.

- MOP-008 (P0, L, DONE)
  - Title: Implement finalize-inheritance pipeline
  - Deliverables:
    - compute-class-precedence-list
    - compute-slots
    - compute-effective-slot-definition
    - compute-default-initargs
    - class-finalized-p/class-precedence-list/class-slots readers
  - Dependencies: MOP-007
  - Exit criteria:
    - Classes finalize lazily and deterministically.

- MOP-009 (P1, L, DONE)
  - Title: Implement instance allocation and slot access protocol
  - Deliverables:
    - allocate-instance and make-instance for standard-class
    - slot-value-using-class, setf slot-value-using-class
    - slot-boundp-using-class, slot-makunbound-using-class
    - slot-definition-location assignment for directly accessible slots
  - Dependencies: MOP-008
  - Exit criteria:
    - Slot reads/writes obey allocation/type constraints and unbound semantics.

- MOP-010 (P1, M, DONE)
  - Title: Implement eql specializer interning protocol
  - Deliverables:
    - intern-eql-specializer
    - eql-specializer-object
  - Dependencies: MOP-001
  - Exit criteria:
    - Eql specializers are interned and reused by eql identity contract.

### M2: Compiler front-end integration

- MOP-011 (P0, M, DONE)
  - Title: Implement canonicalization helpers for defclass slot/default-initarg forms
  - Deliverables:
    - Canonicalized direct slot specs with initfunction capture
    - Canonicalized default initargs with lexical capture
  - Dependencies: D-001
  - Exit criteria:
    - Canonical forms match expected ensure-class inputs.

- MOP-012 (P0, L, DONE)
  - Title: Rewire defclass expansion path to ensure-class call semantics
  - Deliverables:
    - Parser/analyzer path emits runtime call form rather than placeholder ast-class no-op
    - Option handling: metaclass, documentation, default-initargs, extra options
  - Dependencies: D-001, MOP-007, MOP-011
  - Exit criteria:
    - defclass evaluates to class metaobject with expected side effects.

- MOP-013 (P0, M, DONE)
  - Title: Add defgeneric expansion path to ensure-generic-function
  - Deliverables:
    - Lambda list, method-class, generic-function-class, declarations wiring
  - Dependencies: MOP-003
  - Exit criteria:
    - defgeneric creates/reinitializes global generic functions correctly.

- MOP-014 (P0, L, DONE)
  - Title: Rewire defmethod expansion path
  - Deliverables:
    - ensure-generic-function call
    - make-method-lambda integration
    - method instance creation + add-method
    - support qualifiers and eql specializers
  - Dependencies: MOP-004, MOP-005, MOP-010
  - Exit criteria:
    - defmethod adds methods and affects dispatch immediately.

- MOP-015 (P1, M, DONE)
  - Title: Introduce explicit CLR class/method forms if defclass/defmethod are repurposed
  - Deliverables:
    - New syntax and parser support for direct CLR emission forms
    - Migration shim/tests for existing CLR-focused tests
  - Dependencies: D-001
  - Exit criteria:
    - Existing CLR emission capabilities remain available under explicit forms.

### M3: Invalidation, dependents, and hardening

- MOP-016 (P1, M, DONE)
  - Title: Add dependent maintenance protocol
  - Deliverables:
    - add-dependent, remove-dependent, map-dependents, update-dependent
    - class/generic updates trigger dependents
  - Dependencies: MOP-007, MOP-003
  - Exit criteria:
    - Cache-dependent object receives updates on class/gf changes.

- MOP-017 (P1, M, DONE)
  - Title: Add method applicability memoization and cache invalidation
  - Deliverables:
    - class-vector cache for applicable methods and effective method
    - invalidation on method add/remove, class finalization changes
  - Dependencies: MOP-005, MOP-016
  - Exit criteria:
    - Cache correctness validated by targeted mutation/redefinition tests.

- MOP-018 (P1, S, DONE)
  - Title: Lift arity ceiling in callable dispatch path
  - Deliverables:
    - remove >8 invoke limitation for generic invocation path
  - Dependencies: MOP-002
  - Exit criteria:
    - Generic functions handle long argument lists without NotImplementedException.

### M4: Conformance and optimization

- MOP-019 (P2, M, DONE)
  - Title: Reader/introspection coverage for class/gf/method/slot metaobjects
  - Deliverables:
    - class-*, generic-function-*, method-*, slot-definition-* reader surface
  - Dependencies: MOP-008, MOP-009
  - Exit criteria:
    - Introspection APIs return stable, non-mutated views.

- MOP-020 (P2, M, DONE)
  - Title: Expand method combination support
  - Deliverables:
    - find-method-combination baseline
    - around/before/after semantics hardening
  - Dependencies: MOP-005
  - Exit criteria:
    - Standard combination semantics covered with edge tests.

- MOP-021 (P2, L, DONE)
  - Title: Performance pass
  - Deliverables:
    - dispatch hot-path profiling (achieved ~6.5x speedup on cache hits)
    - reduced allocations in method lookup and slot access (zero-allocation cache hits, O(1) slot access)
  - Dependencies: MOP-017
  - Exit criteria:
    - Measured improvement with no behavior regressions.

## Testing Backlog

### New Lisp tests (standalone)

- TEST-MOP-001: ensure-class create/redefine and find-class behavior
- TEST-MOP-002: class precedence and finalization with multiple inheritance
- TEST-MOP-003: slot inheritance/default initargs and slot access protocol
- TEST-MOP-004: defgeneric + defmethod dispatch precedence
- TEST-MOP-005: eql specializer dispatch
- TEST-MOP-006: method add/remove invalidation behavior
- TEST-MOP-007: redefinition paths with dependents
- TEST-MOP-008: arity stress (>8 args) for generic dispatch

### New C# tests (CLRHack.Tests)

- TEST-RT-001: ensure-generic-function idempotence and reinitialize behavior
- TEST-RT-002: add-method/remove-method updates backpointers and discriminators
- TEST-RT-003: finalize-inheritance recomputation correctness
- TEST-RT-004: slot-value-using-class and unbound behavior
- TEST-RT-005: dependent notification ordering and payloads

## Execution Order

1. D-001
2. MOP-001 -> MOP-005
3. MOP-006 -> MOP-010
4. MOP-011 -> MOP-015
5. MOP-016 -> MOP-018
6. MOP-019 -> MOP-021

## Release Gates

- Gate A (after M0): callable generic functions dispatch correctly in isolated runtime tests
- Gate B (after M1): class/slot protocol stable under finalization and redefinition scenarios
- Gate C (after M2): defclass/defgeneric/defmethod user-facing workflow works in standalone Lisp tests
- Gate D (after M3): cache invalidation and dependents proven under mutation stress
- Gate E (after M4): conformance and performance thresholds met

## Immediate Next 5 Tasks

1. D-001: choose semantic split policy and record decision.
2. MOP-001: create base metaobject classes in LispBase.
3. MOP-002: make standard-generic-function callable via Closure.
4. MOP-003: implement ensure-generic-function and ensure-generic-function-using-class.
5. MOP-004: implement add-method/remove-method plus linkage maintenance.
