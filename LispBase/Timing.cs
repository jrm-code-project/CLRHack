using System.Diagnostics;

namespace Lisp
{
    public static class Timing
    {
        public static object Start()
        {
            return Stopwatch.StartNew();
        }

        public static object ElapsedMilliseconds(object sw)
        {
            if (sw is Stopwatch stopwatch)
            {
                return (double)stopwatch.ElapsedMilliseconds;
            }
            return 0.0;
        }
    }
}
