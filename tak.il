// Tak(18, 12, 6) Standalone IL
// Generated for the Wizard by V

.assembly extern mscorlib {}
.assembly TakBench {}
.module TakBench.exe

.class public auto ansi beforefieldinit TakProgram
       extends [mscorlib]System.Object
{
    // The Tak function: (defun tak (x y z) (if (not (< y x)) z ...))
    .method public static int32 tak(int32 x, int32 y, int32 z) cil managed
    {
        .maxstack 8

        // Load y and x to check condition (y < x)
        ldarg.1 // y
        ldarg.0 // x
        blt.s   RECURSE

        // if not (y < x), return z
        ldarg.2 // z
        ret

    RECURSE:
        // We need: tak( tak(x-1, y, z), tak(y-1, z, x), tak(z-1, x, y) )
        
        // --- First nested call: tak(x-1, y, z) ---
        ldarg.0
        ldc.i4.1
        sub
        ldarg.1
        ldarg.2
        call       int32 TakProgram::tak(int32, int32, int32)

        // --- Second nested call: tak(y-1, z, x) ---
        ldarg.1
        ldc.i4.1
        sub
        ldarg.2
        ldarg.0
        call       int32 TakProgram::tak(int32, int32, int32)

        // --- Third nested call: tak(z-1, x, y) ---
        ldarg.2
        ldc.i4.1
        sub
        ldarg.0
        ldarg.1
        call       int32 TakProgram::tak(int32, int32, int32)

        // --- Final outer call ---
        // At this point, the three results of the nested calls are on the stack.
        // We just call tak again with them as arguments.
        tail. call       int32 TakProgram::tak(int32, int32, int32)
        ret
    }

    // Entry point
    .method public static void Main() cil managed
    {
        .entrypoint
        .maxstack 3

        // Load 18, 12, 6
        ldc.i4.s   18
        ldc.i4.s   12
        ldc.i4.s   6

        // Call tak  
        call       int32 TakProgram::tak(int32, int32, int32)

        // Output the result to the console
        tail. call       void [mscorlib]System.Console::WriteLine(int32)
        ret
    }
}
