# Phase 3: The Emitter (The Meat)

## Objective
To translate the annotated AST, Capture Map, and Environment data from Phase 1 and Phase 2 into a single, syntactically correct `.il` assembly file. This file will be the "Ground Truth" of the Lisp logic rendered for the Common Language Runtime (CLR).

## Detailed Components

### 1. Template Engine & Boilerplate Generation
- **Mechanism:** The emitter begins by spitting out the standard assembly headers required for a standalone executable or library.
- **Template:**
  ```cil
  .assembly extern mscorlib { .publickeytoken = (B7 7A 5C 56 19 34 E0 89) .ver 4:0:0:0 }
  .assembly extern LispRuntime { .ver 1:0:0:0 }
  .assembly LispProject { }
  .module LispProject.exe
  .class public auto ansi beforefieldinit LispProgram extends [mscorlib]System.Object {
    // Static methods (DEFUNs) and Closure classes will be nested or peer classes.
  }
  ```

### 2. Closure Frame Emission (from Phase 2)
- **Process:** For every entry in the Capture Map, emit the corresponding `.class` definition.
- **Fields:** Emit the readonly fields for captured variables.
- **Constructor:** Emit a constructor that takes the captured values as arguments and initializes the fields.
- **Invoke Method:** Emit the `.method` that contains the actual logic of the lambda.

### 3. Recursive Expression Walker
- **Process:** A recursive function walks the annotated AST. For every node type, it appends the corresponding CIL instruction to the method body.
- **Node to Opcode Mapping:**
    - `CONST (int)`: `ldc.i4 <value>`, then `newobj instance void [LispRuntime]LispInt::.ctor(int32)`. (Assuming a wrapper type in LispRuntime).
    - `REF-ARG (idx)`: `ldarg <idx>`.
    - `REF-LOCAL (idx)`: `ldloc <idx>`.
    - `REF-CAPTURE (fieldName)`: `ldarg.0` (the frame), then `ldfld class [LispRuntime]LispObject [ClosureClass]::'[fieldName]'`.
    - `BIND-LAMBDA (LambdaID)`: Emit pushes for all variables in the Capture Map for this Lambda, then `newobj instance void [LispClosure_LambdaID]::.ctor(...)`.
    - `CALL (funcName, args)`: Recursively emit args, then `call class [LispRuntime]LispObject LispProgram::[funcName](...)`.

### 4. Tail-Position Logic
- **Detection:** The walker maintains a `is-tail-position` flag. A call is in the tail position if it is the top-level expression of a function or the last expression in a branch.
- **Implementation:** If `is-tail-position` is true and the node is a `CALL`, prepend the `tail.` prefix to the opcode. This ensures the current stack frame is discarded before the call, enabling infinite recursion.

### 5. Branching and Label Management
- **Mechanism:** For `(IF test then else)`, the emitter generates unique labels using a session counter.
- **Logic Flow:**
    1. Emit `test` logic.
    2. Emit `brfalse L_ELSE_N`.
    3. Emit `then` logic (tail flag preserved if the IF is in tail position).
    4. Emit `br L_END_N`.
    5. Emit `L_ELSE_N:`.
    6. Emit `else` logic (tail flag preserved).
    7. Emit `L_END_N:`.

## Success Metrics

### 1. Syntactic Correctness
- **Criteria:** The generated `.il` file contains no orphaned labels, correctly balanced stack pushes/pops (verified by `.maxstack`), and valid metadata references.
- **Validation:** Visual inspection of the output for a nested lambda shows the correct field access sequence (`ldarg.0` followed by `ldfld`).

### 2. Successful Assembly
- **Criteria:** Running `ilasm output.il` produces a `.exe` or `.dll` without errors or warnings.
- **Validation:** The Microsoft Intermediate Language Assembler confirms the file is valid and ready for the JIT.

## The Ground Truth Test (Continuing from Phase 2)
**Input:** Recursive Factorial `(defun fact (n) (if (= n 0) 1 (* n (fact (- n 1)))))`  
**Expected .il Snippet:**
```cil
.method public static class [LispRuntime]LispObject fact(class [LispRuntime]LispObject n) cil managed {
    .maxstack 3
    ldarg.0  // push n
    call class [LispRuntime]LispObject [LispRuntime]LispOps::IsZero(class [LispRuntime]LispObject)
    brfalse L_RECURSE_001
    ldc.i4.1
    call class [LispRuntime]LispObject [LispRuntime]LispOps::FromInt(int32)
    ret
L_RECURSE_001:
    ldarg.0 // push n for the multiplication
    ldarg.0 // push n for the subtraction
    ldc.i4.1
    call class [LispRuntime]LispObject [LispRuntime]LispOps::FromInt(int32)
    call class [LispRuntime]LispObject [LispRuntime]LispOps::Subtract(class LispObject, class LispObject)
    tail. call class [LispRuntime]LispObject LispProgram::fact(class [LispRuntime]LispObject) // TAIL CALL!
    call class [LispRuntime]LispObject [LispRuntime]LispOps::Multiply(class LispObject, class LispObject)
    ret
}
```
