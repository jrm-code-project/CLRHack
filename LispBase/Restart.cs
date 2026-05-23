using System;

namespace Lisp
{
    /// <summary>
    /// Represents a Common Lisp restart.
    /// </summary>
    public class Restart
    {
        /// <summary>
        /// The name of the restart (a symbol), or null for an anonymous restart.
        /// </summary>
        public object Name { get; }

        /// <summary>
        /// The function to call when the restart is invoked.
        /// </summary>
        public Closure Function { get; }

        /// <summary>
        /// An optional function that prints a description of the restart.
        /// </summary>
        public Closure ReportFunction { get; }

        /// <summary>
        /// An optional function that gathers arguments for the restart from the user.
        /// </summary>
        public Closure InteractiveFunction { get; }

        /// <summary>
        /// An optional function that determines if the restart is applicable to a condition.
        /// </summary>
        public Closure TestFunction { get; }

        public Restart(object name, object function, object reportFunction = null, object interactiveFunction = null, object testFunction = null)
        {
            Name = name;
            Function = (Closure)function;
            ReportFunction = (Closure)reportFunction;
            InteractiveFunction = (Closure)interactiveFunction;
            TestFunction = (Closure)testFunction;
        }

        /// <summary>
        /// Invokes the restart with the given arguments.
        /// </summary>
        public object Invoke(params object[] args)
        {
            return Function.Invoke(args);
        }

        public override string ToString()
        {
            return Name?.ToString() ?? "<anonymous restart>";
        }
    }

    /// <summary>
    /// Manages the dynamic stack of active restarts.
    /// </summary>
    public static class RestartControl
    {
        [ThreadStatic]
        private static object activeRestarts;

        /// <summary>
        /// Gets the list of active restarts for the current thread.
        /// </summary>
        public static object GetActiveRestarts()
        {
            return activeRestarts;
        }

        /// <summary>
        /// Sets the list of active restarts for the current thread.
        /// </summary>
        public static void SetActiveRestarts(object restarts)
        {
            activeRestarts = restarts;
        }
    }
}
