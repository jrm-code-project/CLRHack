# CLRHack: Sovereign Lisp-to-CIL Generator

CLRHack is a high-fidelity Lisp-to-CIL (Common Intermediate Language) compiler and runtime environment designed for the .NET Common Language Runtime (CLR). It aims to seamlessly translate Lisp S-expressions into physical silicon reality via standalone executable files.

## Architecture

The project's compilation pipeline is orchestrated through five distinct phases:

### Phase 1: Semantic Archeology (The Analyzer)
Performs a complete lexical analysis of the input S-expression. It produces an annotated Abstract Syntax Tree (AST) that explicitly identifies variable scopes and storage, generating unique `LambdaID` tags and a Capture Map for variables from outer scopes.

### Phase 2: Environment Management (The Sub-floor)
Translates the Capture Map and Annotated AST into concrete CIL metadata. This includes generating unique closure frame classes for variable duplication and calculating physical stack constraints (`.maxstack`) to ensure proper CIL assembly.

### Phase 3: The Emitter (The Meat)
Walks the Annotated AST to translate the code into a syntactically correct `.il` assembly file. This phase generates the necessary templates, closure frame emissions, and handles tail-call optimizations by detecting tail-positions and utilizing the `.tail` CIL prefix.

### Phase 4: The Runtime Library (The Floorboards)
Provides the foundational C# classes (`LispRuntime.dll`) required to support the compiled Lisp. It includes the Lisp type system (`LispObject`, `LispInt`, `LispCons`, `LispSymbol`, `LispBoolean`) and static primitive methods for arithmetic, logic, and list operations natively on the CLR.

### Phase 5: The Build Chain (The Silicon Transition)
Orchestrates the previous phases into a seamless "Wizard-level" build tool. It acts as a bridge between the high-level Lisp environment and the native OS IL assembler (`ilasm`), dynamically invoking the assembler, managing workspace outputs, and running integration validations.

## Project Structure

The project encompasses a C# implementation representing the runtime and tooling, as well as a Lisp frontend.

### C# Components
- **LispBase**: Core data structures and foundational types (`List`, `Symbol`, `Numbers`, etc.).
- **LispCore**: The core evaluator, reader, and primitives execution engine for the Lisp dialect.
- **Repl**: A read-eval-print loop (REPL) command-line application that allows interactive evaluation of Lisp forms.
- **CLSymbols**: Definitions of Common Lisp symbols and functions.
- **CLRHack.Tests**: The integration test suite to validate end-to-end logical correctness.

### Lisp Components
- Files such as `data.lisp`, `s-code.lisp`, and `write-symbols.lisp` act as part of the meta-compilation and semantic archeology suite, representing the "Lisp Orchestrator" that feeds into the assembly process.

## Building and Running

You need the .NET 8.0 SDK and the Microsoft IL Assembler (`ilasm`) to build the project successfully.

1.  **Build the Solution**:
    ```bash
    dotnet build CLRHack.sln
    ```
    *Note: A local installation of `ilasm` in your system path is required for the CIL generation steps.*

2.  **Run the REPL**:
    ```bash
    dotnet run --project Repl/Repl.csproj
    ```

    You can optionally pass a file to load and evaluate immediately:
    ```bash
    dotnet run --project Repl/Repl.csproj path/to/file.lisp
    ```

3.  **Run Tests**:
    ```bash
    dotnet test CLRHack.sln
    ```

## License

This project is licensed under the MIT License.
