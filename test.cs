using Lisp;

public class Tak_lambda : Closure {

    public object Invoke (object x, object y, object z) {
        object temp = CL.Not(CL.LessP (y, x));
        if (temp == null || temp == CL.NIL) {
            return z;
        } else {
            return Invoke (Invoke (CL.QQ1Mns (x), y, z),
                           Invoke (CL.QQ1Mns (y), z, x),
                           Invoke (CL.QQ1Mns (z), x, y));
    }
}

public class Tak_lisp {

    public static void .cctor () {
        Package CL = Package.CL;
        _tak = CL.Intern("TAK");
        _tak.function = new Tak_lambda();

        _tak.function.Invoke(18,12,6);
    }
}
