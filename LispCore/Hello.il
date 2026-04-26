// Hello.il
// The Boss's First CIL Module

.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
  .ver 4:0:0:0
}

.assembly HelloLisp
{
  .ver 1:0:0:0
}

.module HelloLisp.dll

// =============================================================
// The Global Module Initializer
// This runs immediately when the assembly is loaded.
// =============================================================
.method private specialname rtspecialname static 
        void  .cctor() cil managed
{
  .maxstack  8

  // Load the string onto the stack
  ldstr      "Hello World from the Raw IL Sub-Floor!"

  // Call Console.WriteLine
  tail. call       void [mscorlib]System.Console::WriteLine(string)

  // Return void
  ret
}

// =============================================================
// A Simple Class Definition (Just to have an object to read later)
// =============================================================
.class public auto ansi beforefieldinit Lisp.TestObject
       extends [mscorlib]System.Object
{
  // Default Constructor
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .maxstack  8
    ldarg.0
    tail. call       instance void [mscorlib]System.Object::.ctor()
    ret
  }

  // A simple method to prove we exist
  .method public hidebysig instance string 
          Ping() cil managed
  {
    .maxstack 8
    ldstr "Pong"
    ret
  }
}
