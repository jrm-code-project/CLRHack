using System;

namespace Lisp
{
    /// <summary>
    /// Represents a Common Lisp condition handler.
    /// </summary>
    public class Handler
    {
        /// <summary>
        /// The type of condition this handler handles.
        /// </summary>
        public object ConditionType { get; }

        /// <summary>
        /// The function to call when a matching condition is signaled.
        /// </summary>
        public Closure Function { get; }

        public Handler(object conditionType, object function)
        {
            ConditionType = conditionType;
            Function = (Closure)function;
        }

        public override string ToString()
        {
            return $"#<Handler {ConditionType}>";
        }
    }

    /// <summary>
    /// Manages the dynamic stack of active condition handlers.
    /// </summary>
    public static class HandlerControl
    {
        [ThreadStatic]
        private static object activeHandlers;

        /// <summary>
        /// Gets the list of active handlers for the current thread.
        /// </summary>
        public static object GetActiveHandlers()
        {
            return activeHandlers;
        }

        /// <summary>
        /// Sets the list of active handlers for the current thread.
        /// </summary>
        public static void SetActiveHandlers(object handlers)
        {
            activeHandlers = handlers;
        }
    }
}
