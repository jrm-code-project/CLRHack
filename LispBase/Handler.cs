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
            if (condition is Exception ex) throw ex;
            throw new Exception($"Unhandled error: {condition}");
        }

        private static bool IsType(object obj, object type)
        {
            if (type == null) return false;
            if (Equals(type, obj)) return true; // exact match (e.g. symbols)
            
            if (obj != null)
            {
                Type objType = obj.GetType();
                
                // If type is a Type object
                if (type is Type t) return t.IsAssignableFrom(objType);

                // If type is a string, try to resolve it as a .NET type
                if (type is string typeName)
                {
                    Type t2 = ResolveType(typeName);
                    if (t2 != null) return t2.IsAssignableFrom(objType);
                }
            }

            // For now, if condition is a symbol, just check equality
            if (obj is Symbol && type is Symbol) return Equals(obj, type);
            
            // Handle 'T' as catch-all
            if (type is Symbol s && (s.Name == "T" || s.Name == "EXCEPTION")) return true;

            // TODO: Implement full Common Lisp TYPEP logic
            return false;
        }

        private static Type ResolveType(string typeName)
        {
            Type t = Type.GetType(typeName);
            if (t != null) return t;

            foreach (var assembly in AppDomain.CurrentDomain.GetAssemblies())
            {
                t = assembly.GetType(typeName);
                if (t != null) return t;
            }
            return null;
        }
    }
}
