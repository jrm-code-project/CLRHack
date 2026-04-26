using System.Runtime.CompilerServices;
using Lisp;

namespace CLRHack.Tests
{
    public static class TestInitializer
    {
        [ModuleInitializer]
        public static void Initialize()
        {
            // Now handled by CLSymbols module initializer
        }
    }
}
