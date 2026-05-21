using System;
namespace Lisp {
    public static class Vector {
        public static object MakeArray(object size) {
            int length = Convert.ToInt32(size);
            return new object[length];
        }
        public static object Aref(object arr, object idx) {
            object[] a = (object[])arr;
            int i = Convert.ToInt32(idx);
            return a[i];
        }
        public static object Aset(object arr, object idx, object val) {
            object[] a = (object[])arr;
            int i = Convert.ToInt32(idx);
            a[i] = val;
            return val;
        }
    }
}
