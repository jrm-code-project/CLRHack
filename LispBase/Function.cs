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
    }
}
