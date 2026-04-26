namespace Lisp
{
    public abstract class Closure {
        public abstract object Invoke ();
        public abstract object Invoke (object arg0);
        public abstract object Invoke (object arg0, object arg1);
        public abstract object Invoke (object arg0, object arg1, object arg2);
    }
}
