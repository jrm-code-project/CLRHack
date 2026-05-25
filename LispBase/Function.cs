namespace Lisp
{
    public abstract class Closure {
        public abstract object Invoke ();
        public abstract object Invoke (object arg0);
        public abstract object Invoke (object arg0, object arg1);
        public abstract object Invoke (object arg0, object arg1, object arg2);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7);

        public virtual object Invoke (params object[] args) {
            switch (args.Length) {
                case 0: return Invoke();
                case 1: return Invoke(args[0]);
                case 2: return Invoke(args[0], args[1]);
                case 3: return Invoke(args[0], args[1], args[2]);
                case 4: return Invoke(args[0], args[1], args[2], args[3]);
                case 5: return Invoke(args[0], args[1], args[2], args[3], args[4]);
                case 6: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5]);
                case 7: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
                case 8: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
                default:
                    throw new System.NotImplementedException("Closures with more than 8 arguments not fully supported via array Invoke yet.");
            }
        }

        public static object Apply(object fn, object args)
        {
            var closure = RequireClosure(fn, "APPLY");
            var list = new System.Collections.Generic.List<object>();
            object current = args;
            while (true)
            {
                if (current is List l)
                {
                    if (l.EndP)
                    {
                        break;
                    }

                    list.Add(l.First());
                    current = l.Rest();
                    continue;
                }

                if (current is List.ListCell cell)
                {
                    list.Add(cell.first);
                    current = cell.rest;
                    continue;
                }

                if (current != null)
                {
                    list.Add(current);
                }

                break;
            }
            return closure.Invoke(list.ToArray());
        }

        public static Closure RequireClosure(object fn, string contextName)
        {
            if (fn is Closure closure)
            {
                return closure;
            }

            if (fn == null || ReferenceEquals(fn, Global.Unbound))
            {
                var target = string.IsNullOrEmpty(contextName) ? "<computed function>" : contextName;
                throw new Exception($"Undefined function: {target}");
            }

            throw new Exception($"Attempted to call non-function object in {contextName}: {fn}");
        }
    }
}
