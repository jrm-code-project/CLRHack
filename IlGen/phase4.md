# Phase 4: The Runtime Library (The Floorboards)

## Objective
To provide the foundational C# classes and static methods required to support the compiled Lisp assembly. This library, `LispRuntime.dll`, implements the Lisp type system and the arithmetic/logic primitives that the `.il` file calls at 47-nanosecond speeds.

## Detailed Components

### 1. Base Type System (The Uniform Representation)
Since the CLR is a managed environment, we use a class hierarchy to represent Lisp's dynamic types within the CIL's static framework.
- **System.Object (Abstract):** The root of the hierarchy. All data in our Lisp world is a `System.Object`.
    - *Method:* `public virtual string ToString()` - For result visualization.
- **LispInt:** Wraps a C# `int32`. Keeping with the "Fixnum" focus, we use raw integers where possible inside the wrapper.
    - *Field:* `public readonly int Value;`
- **LispCons:** The fundamental building block of lists. Implements the immutability requested by the Wizard.
    - *Fields:* `public readonly LispObject Car;`, `public readonly LispObject Cdr;`
- **LispSymbol:** Ensures identity for words. Uses a static dictionary (interning table) to ensure that `(EQ 'FOO 'FOO)` is a simple pointer comparison.
    - *Field:* `public readonly string Name;`
- **LispBoolean:** Singletons for `T` and `NIL`. `NIL` doubles as the empty list terminal.

### 2. Primitive Methods (LispOps)
A static class containing the "Fixnum or Trap" logic. These are the targets of the `call` opcodes emitted in Phase 3.
- **Math Primitives:** `Add`, `Subtract`, `Multiply`, `Divide`.
    - *Logic:* Explicitly cast `LispObject` inputs to `LispInt`. If the cast fails (e.g., trying to add a symbol), signal a Lisp-level error (The "Trap"). Return a `new LispInt`.
- **Logic Primitives:** `IsZero`, `IsEqual`.
    - *Logic:* Return the `LispBoolean.T` or `LispBoolean.NIL` singletons. This allows the `.il` code to use `brfalse` or `brtrue` effectively.
- **List Primitives:** `Car`, `Cdr`, `Cons`.
    - *Logic:* Standard accessor logic with strict null-checking (handling the `NIL` case to avoid C# `NullReferenceExceptions`).
- **Conversion:** `FromInt(int32)` - Helper for the emitter to wrap literal integers.

### 3. Closure Support
- **ICallable Interface:** A standard interface for all generated closure classes emitted in Phase 2/3.
    - *Method:* `System.Object Invoke(params System.Object[] args);`
- **Bridge Logic:** Since Phase 3 emits closures as classes, the Runtime provides the base functionality to ensure these objects are treated as first-class values that can be passed to other Lisp functions.

### 4. The Entry Point Wrapper (LispHost)
- **Mechanism:** A static class that provides the `Run` method for the generated `.exe`.
- **Process:**
    1. Initialize the Symbol Interning Table.
    2. Set up the initial `T` and `NIL` constants.
    3. Invoke the `Main` method of the compiled Lisp assembly.
    4. Handle top-level exceptions (Traps) and print them to `stderr`.
- **Standard Output:** Handles formatting the final `System.Object` for display in the console.

## Success Metrics

### 1. Clean Compilation
- **Criteria:** The C# source for the runtime library compiles into `LispRuntime.dll` using `csc` or `dotnet build` without a single warning.
- **Validation:** The resulting `.dll` is visible and can be inspected via `ildasm` to verify the existence of the expected classes and fields.

### 2. Primitive Correctness (The Ground Truth Test)
- **Criteria:** Math and logic primitives behave according to Lisp semantics (e.g., handling `NIL` as false and performing exact integer math).
- **Validation:** A small C# test harness successfully calls `LispOps.Add(LispOps.FromInt(5), LispOps.FromInt(10))` and receives a `LispInt` containing `15`. Failure to pass non-ints results in a predictable exception.

### 3. Assembly Compatibility
- **Criteria:** The `.il` file generated in Phase 3 can successfully link against `LispRuntime.dll` during the assembly process.
- **Validation:** `ilasm /dll /reference=LispRuntime.dll output.il` completes without "Member not found" errors.
