using System;
using System.Linq;
using System.Reflection;
using System.Collections.Generic;

namespace Lisp
{
    public static class Reflection
    {
        public static Type GetType(object typeNameOrSymbol)
        {
            string name = typeNameOrSymbol is Symbol s ? s.Name : typeNameOrSymbol.ToString();
            
            // Try direct resolution
            Type t = Type.GetType(name);
            if (t != null) return t;

            // Search all loaded assemblies
            foreach (var assembly in AppDomain.CurrentDomain.GetAssemblies())
            {
                t = assembly.GetType(name);
                if (t != null) return t;
            }

            throw new Exception($"Type {name} not found.");
        }

        public static object InvokeStatic(object typeNameOrSymbol, string methodName, params object[] args)
        {
            Type type = GetType(typeNameOrSymbol);
            var method = ResolveMethod(type, methodName, args, BindingFlags.Static | BindingFlags.Public | BindingFlags.FlattenHierarchy);
            return method.Invoke(null, ConvertArgs(method, args));
        }

        public static object InvokeInstance(object instance, string methodName, params object[] args)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            Type type = instance.GetType();
            var method = ResolveMethod(type, methodName, args, BindingFlags.Instance | BindingFlags.Public);
            return method.Invoke(instance, ConvertArgs(method, args));
        }

        public static object New(object typeNameOrSymbol, params object[] args)
        {
            Type type = GetType(typeNameOrSymbol);
            var constructors = type.GetConstructors();
            var constructor = constructors.FirstOrDefault(c => MatchParameters(c.GetParameters(), args));
            if (constructor == null) throw new Exception($"Constructor for {type.Name} with {args.Length} arguments not found.");
            return constructor.Invoke(ConvertArgs(constructor, args));
        }

        public static object GetProperty(object instance, string name)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            var prop = instance.GetType().GetProperty(name, BindingFlags.Instance | BindingFlags.Public | BindingFlags.FlattenHierarchy);
            if (prop == null) throw new Exception($"Property {name} not found on {instance.GetType().Name}.");
            return prop.GetValue(instance);
        }

        public static void SetProperty(object instance, string name, object value)
        {
            if (instance == null) throw new ArgumentNullException(nameof(instance));
            var prop = instance.GetType().GetProperty(name, BindingFlags.Instance | BindingFlags.Public | BindingFlags.FlattenHierarchy);
            if (prop == null) throw new Exception($"Property {name} not found on {instance.GetType().Name}.");
            prop.SetValue(instance, ConvertValue(value, prop.PropertyType));
        }

        public static object GetStaticProperty(object typeNameOrSymbol, string name)
        {
            Type type = GetType(typeNameOrSymbol);
            var prop = type.GetProperty(name, BindingFlags.Static | BindingFlags.Public | BindingFlags.FlattenHierarchy);
            if (prop == null) throw new Exception($"Static property {name} not found on {type.Name}.");
            return prop.GetValue(null);
        }

        public static void SetStaticProperty(object typeNameOrSymbol, string name, object value)
        {
            Type type = GetType(typeNameOrSymbol);
            var prop = type.GetProperty(name, BindingFlags.Static | BindingFlags.Public | BindingFlags.FlattenHierarchy);
            if (prop == null) throw new Exception($"Static property {name} not found on {type.Name}.");
            prop.SetValue(null, ConvertValue(value, prop.PropertyType));
        }

        private static MethodInfo ResolveMethod(Type type, string name, object[] args, BindingFlags flags)
        {
            var methods = type.GetMethods(flags).Where(m => m.Name == name).ToList();
            var method = methods.FirstOrDefault(m => MatchParameters(m.GetParameters(), args));
            if (method == null) throw new Exception($"Method {name} on {type.Name} with {args.Length} arguments not found.");
            return method;
        }

        private static bool MatchParameters(ParameterInfo[] parameters, object[] args)
        {
            if (parameters.Length != args.Length) return false;
            // Basic matching: just check count for now.
            // In a fuller implementation, we would check types and handle conversions (e.g. Lisp number to int).
            return true;
        }

        private static object[] ConvertArgs(MethodBase method, object[] args)
        {
            var parameters = method.GetParameters();
            var converted = new object[args.Length];
            for (int i = 0; i < args.Length; i++)
            {
                converted[i] = ConvertValue(args[i], parameters[i].ParameterType);
            }
            return converted;
        }

        private static object ConvertValue(object value, Type targetType)
        {
            if (value == null) return null;
            if (targetType.IsAssignableFrom(value.GetType())) return value;
            
            // Handle common conversions
            if (targetType == typeof(int) && value is int) return value;
            if (targetType == typeof(double) && value is int i) return (double)i;
            if (targetType == typeof(float) && value is int f) return (float)f;
            
            return Convert.ChangeType(value, targetType);
        }
    }
}
