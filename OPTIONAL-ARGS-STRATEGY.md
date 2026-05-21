# Strategy for Optional Arguments via Deficient `Invoke` Overloads

## Goal
Implement support for optional arguments (`&optional`, `&key`, `&rest`, and `supplied-p` variables) efficiently in the `clrhack` compiler without duplicating the function body across multiple `Invoke` overloads.

## Architectural Approach

We will adopt a **Delegation via Deficient Overloads** strategy. 

Instead of compiling the function's core AST body directly into every valid public `Invoke(m)` overload, we will separate the parameter resolution (prologue) from the execution (body).

### 1. The Centralized Body Method (`InvokeBody`)
For any function that utilizes complex parameter lists (optionals, keys, rest), the compiler will generate a private method named `InvokeBody` (for closures) or `<Name>_Body` (for top-level functions).

**Signature of `InvokeBody`:**
The method receives the fully-resolved state of the call:
*   Required parameters.
*   Optional parameters AND their boolean `supplied-p` flags.
*   The assembled `&rest` list (if applicable).
*   Key parameters AND their boolean `supplied-p` flags.

**Functionality:**
*   Immediately transfers the arguments from the method signature into the appropriate local variable slots used by the function body.
*   Evaluates any `&aux` variable initialization forms (consolidating `&aux` logic into one place).
*   Executes the compiled AST block of the function.

### 2. Deficient `Invoke(m)` Overloads (Trampolines)
The public-facing `Invoke` methods provided by the `Closure` class (or as top-level static methods) will act purely as parameter-resolving trampolines.

For each valid argument count `m` (from 0 to 8), the generated `Invoke(m)` method will:
1.  **Map** the provided $m$ arguments to the required parameter slots.
2.  **Default Optionals:** For any `&optional` parameter not covered by the $m$ arguments, evaluate its `init-ast` to produce the default value, and push a `false` (NIL) flag for its `supplied-p` status. If it was covered, push the argument and a `true` (T) flag.
3.  **Construct Rest:** If `&rest` is present, loop backward from $m-1$ to the start of the rest arguments, invoking the `ListCell` constructor to build the required Lisp list.
4.  **Parse Keys:** If `&key` is present, iterate over the key-value pairs in the $m$ arguments, matching them against defined keywords. Missing keys evaluate their `init-ast` defaults and push `false` flags; matched keys push the value and `true` flags.
5.  **Tail-Call:** Finally, push all resolved values and flags onto the stack and execute a `tail. call` into the centralized `InvokeBody` method.

### 3. Optimization for Simple Functions
If a function only has required parameters (no `&optional`, `&key`, `&rest`, or `&aux`), the compiler will **not** generate the `InvokeBody` method. Instead, it will compile the body directly into the single valid `Invoke(N)` overload, bypassing the trampoline overhead entirely for simple cases.

## Key Benefits
1.  **Reduced IL Bloat:** The potentially large AST block is compiled only once per function.
2.  **Semantic Integrity:** By passing explicit boolean flags to `InvokeBody`, `supplied-p` variables work correctly even when default values are indistinguishable from passed values.
3.  **Performance:** Uses the `tail.` prefix for delegation to maintain stack efficiency.
