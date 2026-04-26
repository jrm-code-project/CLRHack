# Phase 2: Environment Management (The Sub-floor)

## Objective
To translate the Capture Map and Annotated AST from Phase 1 into concrete CIL metadata. This involves generating the closure frame classes required for variable duplication and calculating the physical stack constraints (`.maxstack`) for the assembly process.

## Detailed Components

### 1. Closure Frame Class Generation
- **Mechanism:** For every `LambdaID` in the Capture Map that contains one or more captures, a unique CIL class is defined.
- **Naming Convention:** `LispClosure_[LambdaID]` (e.g., `LispClosure_L-002`).
- **Field Mapping:** Each captured variable name in the map is converted into a CIL field:
    - `.field public readonly class [mscorlib]System.Object '[VarName]'`
- **Constructor Template:** A standard constructor (`.ctor`) is generated that accepts one `Object` for each captured variable and stores it in the corresponding field.
- **Immutability Note:** Because variables are immutable and duplicated at will, these frames do not need to point to a "parent frame." They are self-contained snapshots of the necessary state.

### 2. MaxStack Calculator
- **Algorithm:** A recursive depth-first traversal of the Annotated AST.
- **State:** Tracks `current_depth` and `peak_depth`.
- **Rules:**
    - `CONST`, `REF-ARG`, `REF-LOCAL`, `REF-CAPTURE`: `current_depth += 1`. Update `peak_depth`.
    - `CALL (n args)`: `current_depth -= n`. Then `current_depth += 1` (for the return value).
    - `IF`: Compute `peak_depth` for the condition, then the maximum of the `then` and `else` branches.
    - `LET`: Account for initial value pushes before the body.
- **Output:** An integer value for the `.maxstack` directive in the function's CIL header.

### 3. Entry Point and Method Signatures
- **Global Function Mapping:** Maps `(DEFUN name ...)` to a static method in the main assembly class.
- **Closure Method Mapping:** Maps nested `(LAMBDA ...)` to an instance method named `Invoke` within its generated `LispClosure` class.
- **Signature:** All compiled Lisp functions follow the signature: `class [mscorlib]System.Object(class [mscorlib]System.Object, ...)` based on the argument count.

## Success Metrics

### 1. Valid CIL Class Definitions
- **Criteria:** The generator produces text that conforms to the `ilasm` class and field syntax.
- **Validation:** Visual inspection of the `.il` snippet for a closure shows the correct field count and constructor logic.

### 2. Precise MaxStack Accuracy
- **Criteria:** The `.maxstack` value is neither too low (causes CIL verification failure) nor excessively high (wastes resources).
- **Validation:** Running `ilasm` on the output results in a successful assembly without "Stack depth" errors.

## The Ground Truth Test (Continuing from Phase 1)
**Input:** Annotated AST and Capture Map for `(lambda (x) (let ((y 10)) (lambda (z) (+ x y z))))`
**Expected Result:**
1. **Closure Frame for L-002:**
   - Class: `LispClosure_L-002`
   - Fields: `x`, `y` (both type `LispObject`)
   - Constructor: Takes two `LispObject` arguments and assigns to `x` and `y`.
2. **MaxStack for L-001 (Outer):** `2` (Pushes `x`, then pushes `10`, then calls closure constructor).
3. **MaxStack for L-002 (Inner):** `3` (Pushes `x`, then `y`, then `z`, then calls the `+` primitive).
4. **Method Signature:** `LispClosure_L-002::Invoke(class [mscorlib]System.Object z)`.
