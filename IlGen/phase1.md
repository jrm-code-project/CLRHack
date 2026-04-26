# Phase 1: Semantic Archeology (The Analyzer)

## Objective
To perform a complete lexical analysis of the input S-expression and produce an annotated AST that explicitly identifies the storage and scope of every variable. This phase is critical for the subsequent closure conversion and code emission.

## Detailed Components

### 1. Unique Lambda Tagging
- **Mechanism:** As the analyzer encounters a `(LAMBDA ...)` or `(DEFUN ...)`, it assigns a globally unique `LambdaID` (e.g., `L-001`, `L-002`).
- **Purpose:** To provide a key for the "Capture Map" which will define the fields of the generated CIL classes in Phase 2.

### 2. Lexical Environment Tracking
- **Data Structure:** A stack of frames. Each frame contains a set of `Binding` objects.
- **Binding Object:**
    - `Name`: The symbol name.
    - `ScopeID`: The ID of the lambda where the variable was defined.
    - `IsCaptured`: A boolean flag (initially false).
- **Process:** When a variable is referenced, the analyzer searches the environment stack from top to bottom.
    - If the variable is found in the *top* frame, it's a **Local** or **Argument**.
    - If it's found in a *deeper* frame, it's a **Capture**. The `IsCaptured` flag for that binding is set to `true`, and the variable name is added to the "Capture Set" of all intermediate lambdas between the definition and the use.
    - **Immutability Optimization:** Since everything is immutable, "capture" simply means identifying which values need to be duplicated into the closure's state during instantiation.

### 3. Annotated AST Generation
- **Output:** A tree structure where every symbol reference is replaced by a metadata object.
- **Node Types:**
    - `CONST`: Immediate values (ints, strings).
    - `REF-ARG`: Reference to a function argument (indexed).
    - `REF-LOCAL`: Reference to a local `LET` binding on the CIL stack (indexed).
    - `REF-CAPTURE`: Reference to a variable captured from an outer scope. Includes the field index in the closure frame class.
    - `BIND-LAMBDA`: Contains the `LambdaID`, argument count, and the annotated body.

### 4. Capture Map Production
- **Output:** A dictionary mapping `LambdaID` to a list of variable names.
- **Duplication Strategy:** This map defines the constructor signature for the generated CIL classes. Each entry in the map corresponds to a readonly field in the class.

## Success Metrics

### 1. Completeness of Capture Map
- **Criteria:** Every variable referenced in a nested lambda that is not defined within that lambda must appear in the Capture Map for that `LambdaID`.
- **Validation:** A recursive walk of the annotated AST verifies that every `REF-CAPTURE` node has a corresponding entry in the Capture Map for its parent lambda.

### 2. Correct Categorization
- **Criteria:** Variables defined and used within the same scope must NOT be marked as captured unless they are also used by a sub-lambda.
- **Validation:** The "Ground Truth" test confirms that local stack variables are not unnecessarily promoted to heap-allocated frame fields.

## The Ground Truth Test
**Input:** `(lambda (x) (let ((y 10)) (lambda (z) (+ x y z))))`  
**Expected Result:**  
1. **Outer Lambda (L-001):** Capture Set: `{}`. `x` is `REF-ARG`.  
2. **Inner Lambda (L-002):** Capture Set: `{x, y}`. `z` is `REF-ARG`.  
3. **Variable x in (+ x y z):** Marked as `REF-CAPTURE` (from L-001).  
4. **Variable y in (+ x y z):** Marked as `REF-CAPTURE` (from L-001).  
5. **Variable z in (+ x y z):** Marked as `REF-ARG`.
