# Phase 5: The Build Chain (The Silicon Transition)

## Objective
To provide a seamless, high-bandwidth bridge between the high-level Lisp environment and the physical silicon reality of the CLR. This phase orchestrates the previous four phases into a single "Wizard-level" command that transforms S-expressions into standalone executable files, ensuring that our 47-nanosecond dreams can be assembled and executed with zero manual friction on the Wanderer rig.

## Detailed Components

### 1. The Lisp Orchestrator (`compile-to-exe`)
- **Mechanism:** A top-level Common Lisp function that acts as the "General of the Army," managing the state transition from S-expression to disk-bound binary.
- **Entry Point Generation:** Automatically injects a standard CIL entry point (`.method public static void Main(string[] args)`) into the `.il` file. This wrapper:
    1. Initializes the `LispRuntime` interning table and constant singletons (T, NIL).
    2. Invokes the user-designated entry function (defaults to `MAIN`).
    3. Captures the `LispObject` result and prints its string representation to `stdout`.
- **Manifest Assembly:** Emits the `.assembly` and `.module` declarations, including any necessary public key tokens for `mscorlib` and versioning metadata to keep the CLR happy.

### 2. Shell Integration (The Assembler Bridge)
- **Mechanism:** Utilizing `uiop:run-program` to reach through the Lisp veil and command the host OS's IL assembler (`ilasm`).
- **Command Construction:** The orchestrator builds the precise shell command:
    `ilasm /exe /debug /output=<target>.exe /reference=LispRuntime.dll <target>.il`
- **Diagnostic Hooks:** If the assembly fails, the orchestrator must capture the `ilasm` error log, extract the line numbers, and display the relevant snippets of the generated `.il` file in the Lisp REPL for immediate "Wizard-level" debugging.

### 3. Automated Validation Harness (The Integration Test Suite)
- **Mechanism:** A set of "Golden Path" test cases that exercise the full stack:
    - **Recursive Depth Test:** `(defun loop (n) (if (= n 0) 'done (loop (- n 1))))` - validates the `tail.` prefix and stack-frame reuse.
    - **Closure Capture Test:** `(lambda (x) (lambda (y) (+ x y)))` - validates frame class generation and field mapping.
    - **Arithmetic Precision Test:** Validates "Fixnum or Trap" logic in the `LispRuntime`.
- **Assertion Engine:** Automatically runs the resulting `.exe` using a secondary shell call and compares the output string against a known Lisp reference.

### 4. Workspace & Deployment Management
- **Details:** Handles the automatic cleanup of intermediate `.il` and `.res` files to keep our air-gapped sanctuary clean.
- **Packaging:** Copies `LispRuntime.dll` and the final `.exe` to a designated `bin/` directory, ensuring all dependencies are local for portable execution.

## Success Metrics (Verification of Completion)

### 1. The Binary Existence Metric
- **How to Tell:** Running `(compile-to-exe "(defun main () ...)")` results in a new `.exe` file on the disk with a non-zero file size.
- **Failure State:** A "Compiler Panic" condition or a missing output file.

### 2. The JIT Verification Metric
- **How to Tell:** Executing the generated `.exe` completes without a `TypeLoadException` or `InvalidProgramException`, proving the CIL metadata and opcodes conform to the ECMA-335 standard.
- **Failure State:** Process crash upon entry or CLR verification errors.

### 3. The Infinite Recursion Metric (The Tail-Call Win)
- **How to Tell:** A test case with `n=1,000,000` recursive iterations executes in sub-second time without a `StackOverflowException`.
- **Failure State:** Process termination with a stack overflow error.

### 4. End-to-End Logical Correctness
- **How to Tell:** The "Factorial Test" (`fact 5`) returns exactly `120`. This confirms Phase 1 (Lexical Scoping), Phase 2 (Environment Mapping), Phase 3 (Emitter), and Phase 4 (Runtime Support) are all aligned in 47-nanosecond harmony.

## The Ground Truth Test (The Final Victory Lap)
**Lisp Command:** `(compile-to-exe "(defun fact (n) (if (= n 0) 1 (* n (fact (- n 1)))))" :output "fact.exe" :test t)`  
**Expected Shell Output:** `120`  
**Status:** Mission Accomplished. The Boondoggle is officially obsolete.
