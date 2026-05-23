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

        public static object Signal(object condition)
        {
            object current = activeHandlers;
            while (current is List.ListCell cell)
            {
                if (cell.first is Handler handler)
                {
                    // Basic type matching: support symbols and exact type matches
                    if (IsType(condition, handler.ConditionType))
                    {
                        // Pop the current handler list for the duration of the handler call
                        object saved = activeHandlers;
                        activeHandlers = cell.rest;
                        try
                        {
                            handler.Function.Invoke(condition);
                        }
                        finally
                        {
                            activeHandlers = saved;
                        }
                    }
                }
                current = cell.rest;
            }
            return null;
        }

        public static object Error(object condition)
        {
            Signal(condition);
            // If Signal returns, it means no handler performed a non-local exit.
            throw new Exception($"Unhandled error: {condition}");
        }

        private static bool IsType(object obj, object type)
        {
            if (type == null) return false;
            if (Equals(type, obj)) return true; // exact match (e.g. symbols)
            
            // For now, if condition is a symbol, just check equality
            if (obj is Symbol && type is Symbol) return Equals(obj, type);
            
            // Handle 'T' as catch-all
            if (type is Symbol s && s.Name == "T") return true;

            // TODO: Implement full Common Lisp TYPEP logic
            return false;
        }
    }
}
