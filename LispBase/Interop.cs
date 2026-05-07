using System;
using System.Reflection;

namespace Lisp
{
    public static class Interop
    {
        public static object StaticCall(string typeName, string methodName, object[] args)
        {
            Type t = Type.GetType(typeName) ?? throw new Exception($"Type {typeName} not found");
            return t.InvokeMember(methodName, BindingFlags.Public | BindingFlags.Static | BindingFlags.InvokeMethod, null, null, args);
        }

        public static object InstanceCall(string methodName, object instance, object[] args)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            Type t = instance.GetType();
            return t.InvokeMember(methodName.TrimStart('.'), BindingFlags.Public | BindingFlags.Instance | BindingFlags.InvokeMethod, null, instance, args);
        }

        public static object GetStaticProperty(string propertyName)
        {
            int lastDot = propertyName.LastIndexOf('.');
            if (lastDot == -1) throw new Exception($"Invalid property syntax: {propertyName}");
            string typeName = propertyName.Substring(0, lastDot);
            string propName = propertyName.Substring(lastDot + 1);
            Type t = Type.GetType(typeName) ?? throw new Exception($"Type {typeName} not found");
            return t.InvokeMember(propName, BindingFlags.Public | BindingFlags.Static | BindingFlags.GetProperty, null, null, null);
        }

        public static object GetInstanceProperty(string propertyName, object instance)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            Type t = instance.GetType();
            return t.InvokeMember(propertyName.TrimStart('.'), BindingFlags.Public | BindingFlags.Instance | BindingFlags.GetProperty, null, instance, null);
        }

        public static object GetStaticField(string fieldName)
        {
            int lastDot = fieldName.LastIndexOf('.');
            if (lastDot == -1) throw new Exception($"Invalid field syntax: {fieldName}");
            string typeName = fieldName.Substring(0, lastDot);
            string fName = fieldName.Substring(lastDot + 1);
            Type t = Type.GetType(typeName) ?? throw new Exception($"Type {typeName} not found");
            return t.InvokeMember(fName, BindingFlags.Public | BindingFlags.Static | BindingFlags.GetField, null, null, null);
        }

        public static object GetInstanceField(string fieldName, object instance)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            Type t = instance.GetType();
            return t.InvokeMember(fieldName.TrimStart('.'), BindingFlags.Public | BindingFlags.Instance | BindingFlags.GetField, null, instance, null);
        }
    }
}
