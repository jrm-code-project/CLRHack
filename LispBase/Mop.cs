using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace Lisp
{
    public static class MopRuntime
    {
        private static readonly Dictionary<object, GenericFunctionMetaobject> GenericFunctions = new Dictionary<object, GenericFunctionMetaobject>();
        private static readonly Dictionary<object, ClassMetaobject> Classes = new Dictionary<object, ClassMetaobject>();
        private static readonly Dictionary<object, EqlSpecializerMetaobject> EqlSpecializers = new Dictionary<object, EqlSpecializerMetaobject>();
        private static readonly MethodCombinationMetaobject StandardMethodCombination = new MethodCombinationMetaobject { Name = "STANDARD" };
        private static EqlSpecializerMetaobject NullEqlSpecializer;

        private sealed class NativeClosure : Closure
        {
            private readonly Func<object[], object> _func;
            public NativeClosure(Func<object[], object> func) { _func = func; }
            public override object Invoke() => _func(Array.Empty<object>());
            public override object Invoke(object arg0) => _func(new[] { arg0 });
            public override object Invoke(object arg0, object arg1) => _func(new[] { arg0, arg1 });
            public override object Invoke(object arg0, object arg1, object arg2) => _func(new[] { arg0, arg1, arg2 });
            public override object Invoke(object arg0, object arg1, object arg2, object arg3) => _func(new[] { arg0, arg1, arg2, arg3 });
            public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4) => _func(new[] { arg0, arg1, arg2, arg3, arg4 });
            public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5) => _func(new[] { arg0, arg1, arg2, arg3, arg4, arg5 });
            public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6) => _func(new[] { arg0, arg1, arg2, arg3, arg4, arg5, arg6 });
            public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7) => _func(new[] { arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7 });
            public override object Invoke(params object[] args) => _func(args);
        }

        public static void Initialize()
        {
            var cl = Package.CommonLisp;
            if (cl != null)
            {
                // Register MAKE-INSTANCE
                var makeInstanceSym = cl.Intern("MAKE-INSTANCE");
                cl.Export(makeInstanceSym);
                makeInstanceSym.Function = new NativeClosure(args => {
                    if (args.Length < 1) throw new Exception("MAKE-INSTANCE requires at least one argument.");
                    var cls = args[0] as ClassMetaobject;
                    if (cls == null) {
                        cls = FindClass(args[0]);
                    }
                    return MakeInstance(cls, args.Skip(1));
                });

                // Register SLOT-VALUE
                var slotValueSym = cl.Intern("SLOT-VALUE");
                cl.Export(slotValueSym);
                slotValueSym.Function = new NativeClosure(args => SlotValue(args[0], args[1]));

                // Register FIND-METHOD-COMBINATION
                var findMCSym = cl.Intern("FIND-METHOD-COMBINATION");
                cl.Export(findMCSym);
                findMCSym.Function = new NativeClosure(args => FindMethodCombination(args[0]));
            }
        }

        [ThreadStatic]
        private static IReadOnlyList<MethodMetaobject> currentNextMethods;
        [ThreadStatic]
        private static object[] currentArguments;

        public static object CallNextMethod(params object[] args)
        {
            var next = currentNextMethods;
            if (next == null || next.Count == 0)
            {
                throw new InvalidOperationException("No next method available.");
            }

            var method = next[0];
            var remaining = new List<MethodMetaobject>();
            for (int i = 1; i < next.Count; i++) remaining.Add(next[i]);

            var savedNext = currentNextMethods;
            var savedArgs = currentArguments;
            currentNextMethods = remaining;
            
            // If args were provided to call-next-method, use them. 
            // Otherwise use the arguments passed to the generic function.
            var nextArgs = (args != null && args.Length > 0) ? args : currentArguments;
            currentArguments = nextArgs;

            try
            {
                return InvokeMethodFunction(method, nextArgs);
            }
            finally
            {
                currentNextMethods = savedNext;
                currentArguments = savedArgs;
            }
        }

        public static object NextMethodP()
        {
            var hasNext = currentNextMethods != null && currentNextMethods.Count > 0;
            return hasNext ? (object)true : null;
        }

        public static object CallNextMethodFromLisp(object args)
        {
            var list = ToObjectList(args);
            return CallNextMethod(list.ToArray());
        }

        public static object MakeInstanceFromLisp(object classDesignator, object initargs)
        {
            var cls = classDesignator as ClassMetaobject;
            if (cls == null)
            {
                cls = FindClass(classDesignator);
            }
            var args = ToObjectList(initargs);
            return MakeInstance(cls, args);
        }

        public static object SlotValue(object instance, object slotName)
        {
            if (instance is StandardObjectInstance standardInstance)
            {
                return SlotValueUsingClass(standardInstance.Class, standardInstance, slotName);
            }
            throw new InvalidOperationException("Slot access on non-standard object.");
        }

        public static object SetSlotValue(object instance, object slotName, object value)
        {
            if (instance is StandardObjectInstance standardInstance)
            {
                return SetSlotValueUsingClass(standardInstance.Class, standardInstance, slotName, value);
            }
            throw new InvalidOperationException("Slot access on non-standard object.");
        }

        public static object SlotValueFromLisp(object instance, object slotName)
        {
            return SlotValue(instance, slotName);
        }

        public static object SetSlotValueFromLisp(object instance, object slotName, object value)
        {
            return SetSlotValue(instance, slotName, value);
        }

        public static GenericFunctionMetaobject AddMethod(GenericFunctionMetaobject genericFunction, MethodMetaobject method)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            if (!genericFunction.MethodClass.IsAssignableFrom(method.GetType()))
            {
                throw new InvalidOperationException("Method class is not compatible with the generic function method class.");
            }

            if (method.GenericFunction != null && !ReferenceEquals(method.GenericFunction, genericFunction))
            {
                throw new InvalidOperationException("Method is already associated with a different generic function.");
            }

            if (genericFunction.LambdaList.Count > 0)
            {
                EnsureLambdaListCongruence(genericFunction.LambdaList, method.LambdaList);
            }
            else if (method.LambdaList.Count > 0)
            {
                genericFunction.LambdaList.Clear();
                genericFunction.LambdaList.AddRange(method.LambdaList);
            }

            var existing = genericFunction.Methods.Find(m => MethodsAgree(m, method));
            if (existing != null)
            {
                RemoveMethod(genericFunction, existing);
            }

            genericFunction.Methods.Add(method);
            method.GenericFunction = genericFunction;

            if (genericFunction is StandardGenericFunctionMetaobject standard)
            {
                standard.RecomputeEqlSpecializedPositions();
            }

            InvalidateDispatchCache(genericFunction);
            RecomputeDiscriminatingFunction(genericFunction);
            NotifyDependents(genericFunction, "add-method");
            return genericFunction;
        }

        public static GenericFunctionMetaobject RemoveMethod(GenericFunctionMetaobject genericFunction, MethodMetaobject method)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            if (genericFunction.Methods.Remove(method))
            {
                if (ReferenceEquals(method.GenericFunction, genericFunction))
                {
                    method.GenericFunction = null;
                }

                if (genericFunction is StandardGenericFunctionMetaobject standard)
                {
                    standard.RecomputeEqlSpecializedPositions();
                }

                InvalidateDispatchCache(genericFunction);
                RecomputeDiscriminatingFunction(genericFunction);
                NotifyDependents(genericFunction, "remove-method");
            }

            return genericFunction;
        }

        public static List<MethodMetaobject> ComputeApplicableMethods(GenericFunctionMetaobject genericFunction, object[] arguments)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            var args = arguments ?? Array.Empty<object>();
            var applicable = new List<MethodMetaobject>();
            foreach (var method in genericFunction.Methods)
            {
                if (IsMethodApplicable(method, args))
                {
                    applicable.Add(method);
                }
            }

            SortMethodsByPrecedence(applicable, args);
            return applicable;
        }

        private static void SortMethodsByPrecedence(List<MethodMetaobject> methods, object[] arguments)
        {
            if (methods.Count <= 1) return;

            // Stable insertion sort to order methods by precedence.
            // 1. Specificity (more specific first).
            // 2. Age (younger first if specificity is equal).
            
            // To handle age (younger first) while genericFunction.Methods is oldest-first:
            // we'll use a stable sort and ensure ties prefer the one that was later in the original list.
            
            for (int i = 1; i < methods.Count; i++)
            {
                var current = methods[i];
                int j = i - 1;

                while (j >= 0)
                {
                    var cmp = CompareMethodPrecedence(current, methods[j], arguments);
                    
                    // If current is more specific (cmp < 0), or if specificity is equal (cmp == 0)
                    // but current is younger (which it is, since j < i and methods was oldest-first),
                    // then current should come before methods[j].
                    // Wait! If cmp == 0, and we want younger first, then current (index i) 
                    // should move left past methods[j] (index j).
                    
                    if (cmp < 0 || cmp == 0)
                    {
                        methods[j + 1] = methods[j];
                        j--;
                    }
                    else
                    {
                        break;
                    }
                }
                methods[j + 1] = current;
            }
        }

        private static int CompareMethodPrecedence(MethodMetaobject m1, MethodMetaobject m2, object[] arguments)
        {
            var checks = Math.Max(m1.Specializers.Count, m2.Specializers.Count);
            for (int i = 0; i < checks && i < arguments.Length; i++)
            {
                var s1 = i < m1.Specializers.Count ? m1.Specializers[i] : null;
                var s2 = i < m2.Specializers.Count ? m2.Specializers[i] : null;
                
                if (ReferenceEquals(s1, s2)) continue;

                var arg = arguments[i];
                var argClass = ResolveClassOfObject(arg);

                var cmp = CompareSpecializerPrecedence(s1, s2, argClass);
                if (cmp != 0) return cmp;
            }
            return 0;
        }

        private static int CompareSpecializerPrecedence(SpecializerMetaobject s1, SpecializerMetaobject s2, ClassMetaobject argClass)
        {
            if (ReferenceEquals(s1, s2)) return 0;

            if (s1 == null) return 1; // s1 is T (implicitly), so s2 is more specific
            if (s2 == null) return -1; // s2 is T (implicitly), so s1 is more specific

            if (s1 is EqlSpecializerMetaobject) return -1;
            if (s2 is EqlSpecializerMetaobject) return 1;

            if (s1 is ClassMetaobject c1 && s2 is ClassMetaobject c2)
            {
                if (argClass == null) return 0; // Can't compare without arg class context
                var cpl = argClass.ClassPrecedenceList;
                var i1 = cpl.IndexOf(c1);
                var i2 = cpl.IndexOf(c2);

                if (i1 == -1 && i2 == -1) return 0;
                if (i1 == -1) return 1;
                if (i2 == -1) return -1;

                return i1.CompareTo(i2);
            }

            return 0;
        }

        public static Func<object[], object> ComputeEffectiveMethod(
            GenericFunctionMetaobject genericFunction,
            IReadOnlyList<MethodMetaobject> methods)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            if (methods == null)
            {
                throw new ArgumentNullException(nameof(methods));
            }

            if (methods.Count == 0)
            {
                return _ => throw new InvalidOperationException("No applicable methods for this generic function.");
            }

            var around = new List<MethodMetaobject>();
            var before = new List<MethodMetaobject>();
            var after = new List<MethodMetaobject>();
            var primary = new List<MethodMetaobject>();

            foreach (var method in methods)
            {
                if (HasMethodQualifier(method, "AROUND"))
                {
                    around.Add(method);
                }
                else if (HasMethodQualifier(method, "BEFORE"))
                {
                    before.Add(method);
                }
                else if (HasMethodQualifier(method, "AFTER"))
                {
                    after.Add(method);
                }
                else
                {
                    primary.Add(method);
                }
            }


            if (primary.Count == 0 && around.Count == 0)
            {
                return _ => throw new InvalidOperationException("No applicable primary methods for this generic function.");
            }

            // The standard method combination effective method:
            // 1. Call around methods in order. 
            //    The last around method's call-next-method calls the before/primary/after chain.
            // 2. Call before methods in order.
            // 3. Call primary methods in order. call-next-method works here.
            // 4. Call after methods in reverse order.
            // 5. Return result of primary.

            Func<object[], object> mainChain = args =>
            {
                foreach (var m in before)
                {
                    InvokeMethodFunction(m, args);
                }

                object result = InvokeWithNextMethods(primary, args);

                for (var i = after.Count - 1; i >= 0; i--)
                {
                    InvokeMethodFunction(after[i], args);
                }

                return result;
            };

            if (around.Count > 0)
            {
                return args => InvokeWithAroundMethods(around, mainChain, args);
            }

            return mainChain;
        }

        private static object InvokeWithNextMethods(IReadOnlyList<MethodMetaobject> methods, object[] args)
        {
            if (methods.Count == 0)
            {
                throw new InvalidOperationException("No more next methods.");
            }

            var savedNext = currentNextMethods;
            var savedArgs = currentArguments;

            var remaining = new List<MethodMetaobject>();
            for (int i = 1; i < methods.Count; i++) remaining.Add(methods[i]);
            
            currentNextMethods = remaining;
            currentArguments = args;

            try
            {
                return InvokeMethodFunction(methods[0], args);
            }
            finally
            {
                currentNextMethods = savedNext;
                currentArguments = savedArgs;
            }
        }

        private static object InvokeWithAroundMethods(
            IReadOnlyList<MethodMetaobject> aroundMethods,
            Func<object[], object> mainChain,
            object[] args)
        {
            var nextMethodList = new List<MethodMetaobject>(aroundMethods);
            nextMethodList.Add(new ContinuationMethodMetaobject(mainChain));

            return InvokeWithNextMethods(nextMethodList, args);
        }

        public sealed class ContinuationMethodMetaobject : MethodMetaobject
        {
            public ContinuationMethodMetaobject(Func<object[], object> func)
            {
                Function = func;
            }
        }

        public static MethodCombinationMetaobject FindMethodCombination(object methodCombinationName = null, bool errorp = true)
        {
            var name = DesignatorName(methodCombinationName);
            if (string.IsNullOrEmpty(name) || string.Equals(name, "STANDARD", StringComparison.OrdinalIgnoreCase))
            {
                return StandardMethodCombination;
            }

            if (!errorp)
            {
                return null;
            }

            throw new InvalidOperationException($"Unknown method combination: {methodCombinationName}.");
        }

        public static Func<object[], object> ComputeDiscriminatingFunction(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return args =>
            {
                var safeArgs = args ?? Array.Empty<object>();
                var (_, effective) = GetOrComputeDispatch(genericFunction, safeArgs);
                return effective(safeArgs);
            };
        }

        public static GenericFunctionMetaobject EnsureGenericFunction(
            object functionName,
            Type genericFunctionClass = null,
            Type methodClass = null,
            IEnumerable<object> lambdaList = null,
            string documentation = null)
        {
            if (functionName == null)
            {
                throw new ArgumentNullException(nameof(functionName));
            }

            GenericFunctions.TryGetValue(functionName, out var existing);
            return EnsureGenericFunctionUsingClass(
                existing,
                functionName,
                genericFunctionClass,
                methodClass,
                lambdaList,
                documentation);
        }

        public static GenericFunctionMetaobject EnsureGenericFunctionUsingClass(
            GenericFunctionMetaobject genericFunction,
            object functionName,
            Type genericFunctionClass = null,
            Type methodClass = null,
            IEnumerable<object> lambdaList = null,
            string documentation = null)
        {
            if (functionName == null)
            {
                throw new ArgumentNullException(nameof(functionName));
            }

            var targetClass = genericFunctionClass ?? typeof(StandardGenericFunctionMetaobject);
            if (!typeof(GenericFunctionMetaobject).IsAssignableFrom(targetClass))
            {
                throw new ArgumentException("genericFunctionClass must derive from GenericFunctionMetaobject.", nameof(genericFunctionClass));
            }

            GenericFunctionMetaobject result;
            if (genericFunction == null)
            {
                result = (GenericFunctionMetaobject)Activator.CreateInstance(targetClass)!;
            }
            else
            {
                if (genericFunction.GetType() != targetClass)
                {
                    throw new InvalidOperationException("Existing generic function class does not match requested genericFunctionClass.");
                }
                result = genericFunction;
            }

            if (methodClass != null && !typeof(MethodMetaobject).IsAssignableFrom(methodClass))
            {
                throw new ArgumentException("methodClass must derive from MethodMetaobject.", nameof(methodClass));
            }

            result.Name = functionName;
            if (methodClass != null)
            {
                result.MethodClass = methodClass;
            }

            if (lambdaList != null)
            {
                result.LambdaList.Clear();
                result.LambdaList.AddRange(lambdaList);
            }

            if (documentation != null)
            {
                result.Documentation = documentation;
            }

            InvalidateDispatchCache(result);
            GenericFunctions[functionName] = result;
            InstallFunctionBinding(functionName, result);
            NotifyDependents(result, "ensure-generic-function");
            return result;
        }

        public static object AddDependent(Metaobject metaobject, object dependent)
        {
            if (metaobject == null)
            {
                throw new ArgumentNullException(nameof(metaobject));
            }

            if (dependent == null)
            {
                throw new ArgumentNullException(nameof(dependent));
            }

            if (!metaobject.Dependents.Contains(dependent))
            {
                metaobject.Dependents.Add(dependent);
            }

            return dependent;
        }

        public static object RemoveDependent(Metaobject metaobject, object dependent)
        {
            if (metaobject == null)
            {
                throw new ArgumentNullException(nameof(metaobject));
            }

            if (dependent == null)
            {
                throw new ArgumentNullException(nameof(dependent));
            }

            metaobject.Dependents.Remove(dependent);
            return dependent;
        }

        public static void MapDependents(Metaobject metaobject, Action<object> mapper)
        {
            if (metaobject == null)
            {
                throw new ArgumentNullException(nameof(metaobject));
            }

            if (mapper == null)
            {
                throw new ArgumentNullException(nameof(mapper));
            }

            var snapshot = new List<object>(metaobject.Dependents);
            foreach (var dependent in snapshot)
            {
                mapper(dependent);
            }
        }

        public static void UpdateDependent(Metaobject metaobject, object dependent, object updateInfo = null)
        {
            if (metaobject == null)
            {
                throw new ArgumentNullException(nameof(metaobject));
            }

            if (dependent == null)
            {
                throw new ArgumentNullException(nameof(dependent));
            }

            switch (dependent)
            {
                case Action<Metaobject, object> action:
                    action(metaobject, updateInfo);
                    return;
                case Func<Metaobject, object, object> fn:
                    _ = fn(metaobject, updateInfo);
                    return;
            }

            if (dependent is Closure closure)
            {
                _ = closure.Invoke(metaobject, updateInfo);
                return;
            }

            var method = dependent.GetType().GetMethod("UpdateDependent", new[] { typeof(Metaobject), typeof(object) });
            if (method != null)
            {
                _ = method.Invoke(dependent, new[] { metaobject, updateInfo });
            }
        }

        public static object EnsureGenericFunctionFromDefgenericForm(
            object functionName,
            object lambdaList,
            object options)
        {
            var genericFunctionClass = ResolveGenericFunctionClassFromDefgenericOptions(options);
            var methodClass = ResolveMethodClassFromDefgenericOptions(options);
            var documentation = ResolveDocumentationFromDefclassOptions(options);
            var lambda = ToObjectList(lambdaList);

            var result = EnsureGenericFunction(
                functionName,
                genericFunctionClass: genericFunctionClass,
                methodClass: methodClass,
                lambdaList: lambda,
                documentation: documentation);

            InstallFunctionBinding(functionName, result);
            return ((StandardGenericFunctionMetaobject)result).Callable;
        }

        public static object AddMethodFromDefmethodForm(
            object functionName,
            object qualifiers,
            object specializedLambdaList,
            object methodFunction,
            object options)
        {
            var quals = ToObjectList(qualifiers);

            var genericFunction = EnsureGenericFunction(functionName);

            var method = (MethodMetaobject)Activator.CreateInstance(genericFunction.MethodClass)!;

            method.Qualifiers.AddRange(quals);

            var (lambdaList, specializers) = ParseSpecializedLambdaList(specializedLambdaList);
            method.LambdaList.AddRange(lambdaList);
            method.Specializers.AddRange(specializers);

            method.Function = AdaptMethodFunction(methodFunction);

            var documentation = ResolveDocumentationFromDefclassOptions(options);
            if (documentation != null)
            {
                method.Documentation = documentation;
            }

            AddMethod(genericFunction, method);
            return method;
        }

        public static bool TryFindGenericFunction(object functionName, out GenericFunctionMetaobject genericFunction)
        {
            if (functionName == null)
            {
                genericFunction = null;
                return false;
            }

            return GenericFunctions.TryGetValue(functionName, out genericFunction);
        }

        public static ClassMetaobject FindClass(object className, bool errorp = true)
        {
            if (className == null)
            {
                throw new ArgumentNullException(nameof(className));
            }

            if (Classes.TryGetValue(className, out var classMetaobject))
            {
                return classMetaobject;
            }

            if (!errorp)
            {
                return null;
            }

            throw new InvalidOperationException($"No class named {className} is registered.");
        }

        public static ClassMetaobject ResolveClassOfObject(object obj)
        {
            if (obj is StandardObjectInstance instance)
            {
                return instance.Class;
            }

            if (obj == null) return FindClass("NULL", errorp: false) ?? FindClass("T", errorp: false);
            if (obj is Symbol) return FindClass("SYMBOL", errorp: false) ?? FindClass("T", errorp: false);
            if (obj is int || obj is long || obj is double) return FindClass("NUMBER", errorp: false) ?? FindClass("T", errorp: false);
            if (obj is string) return FindClass("STRING", errorp: false) ?? FindClass("T", errorp: false);

            return FindClass("T", errorp: false);
        }

        public static bool TryFindClass(object className, out ClassMetaobject classMetaobject)
        {
            if (className == null)
            {
                classMetaobject = null;
                return false;
            }

            if (className is ClassMetaobject cls)
            {
                classMetaobject = cls;
                return true;
            }

            if (Classes.TryGetValue(className, out classMetaobject))
            {
                return true;
            }

            var name = DesignatorName(className);
            if (!string.IsNullOrEmpty(name))
            {
                foreach (var entry in Classes)
                {
                    if (string.Equals(DesignatorName(entry.Key), name, StringComparison.OrdinalIgnoreCase))
                    {
                        classMetaobject = entry.Value;
                        return true;
                    }
                }
            }

            classMetaobject = null;
            return false;
        }

        public static object ClassName(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return classMetaobject.Name;
        }

        public static object SetClassName(ClassMetaobject classMetaobject, object className)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            var oldName = classMetaobject.Name;
            if (oldName != null && Classes.TryGetValue(oldName, out var oldBinding) && ReferenceEquals(oldBinding, classMetaobject))
            {
                Classes.Remove(oldName);
            }

            if (className != null)
            {
                if (Classes.TryGetValue(className, out var existing) && !ReferenceEquals(existing, classMetaobject))
                {
                    throw new InvalidOperationException("A different class is already registered for this class name.");
                }

                Classes[className] = classMetaobject;
            }

            classMetaobject.Name = className;
            return className;
        }

        public static ClassMetaobject EnsureClass(
            object className,
            Type metaclass = null,
            IEnumerable<object> directSuperclasses = null,
            IEnumerable<DirectSlotDefinitionMetaobject> directSlots = null,
            IEnumerable<object> defaultInitargs = null,
            string documentation = null)
        {
            if (className == null)
            {
                throw new ArgumentNullException(nameof(className));
            }

            var existing = FindClass(className, errorp: false);
            return EnsureClassUsingClass(
                existing,
                className,
                metaclass,
                directSuperclasses,
                directSlots,
                defaultInitargs,
                documentation);
        }

        public static ClassMetaobject EnsureClassUsingClass(
            ClassMetaobject classMetaobject,
            object className,
            Type metaclass = null,
            IEnumerable<object> directSuperclasses = null,
            IEnumerable<DirectSlotDefinitionMetaobject> directSlots = null,
            IEnumerable<object> defaultInitargs = null,
            string documentation = null)
        {
            if (className == null)
            {
                throw new ArgumentNullException(nameof(className));
            }

            var targetClass = metaclass ?? classMetaobject?.GetType() ?? typeof(StandardClassMetaobject);
            if (!typeof(ClassMetaobject).IsAssignableFrom(targetClass))
            {
                throw new ArgumentException("metaclass must derive from ClassMetaobject.", nameof(metaclass));
            }

            var result = ResolveClassRedefinitionTarget(classMetaobject, targetClass);

            if (!ReferenceEquals(result, classMetaobject)
                && classMetaobject != null
                && classMetaobject.Name != null
                && Classes.TryGetValue(classMetaobject.Name, out var existingBinding)
                && ReferenceEquals(existingBinding, classMetaobject))
            {
                Classes.Remove(classMetaobject.Name);
            }

            SetClassName(result, className);

            foreach (var oldSuperclass in result.DirectSuperclasses)
            {
                oldSuperclass.DirectSubclasses.Remove(result);
            }

            result.DirectSuperclasses.Clear();
            if (directSuperclasses != null)
            {
                foreach (var superclassSpec in directSuperclasses)
                {
                    var superclass = ResolveSuperclass(superclassSpec);
                    if (!ValidateSuperclass(result, superclass))
                    {
                        throw new InvalidOperationException("Superclass is not compatible with this class metaclass.");
                    }

                    result.DirectSuperclasses.Add(superclass);
                    if (!superclass.DirectSubclasses.Contains(result))
                    {
                        superclass.DirectSubclasses.Add(result);
                    }
                }
            }

            result.DirectSlots.Clear();
            if (directSlots != null)
            {
                result.DirectSlots.AddRange(directSlots);
            }

            result.DirectDefaultInitArgs.Clear();
            if (defaultInitargs != null)
            {
                result.DirectDefaultInitArgs.AddRange(defaultInitargs);
            }

            if (documentation != null)
            {
                result.Documentation = documentation;
            }

            MarkClassAndSubclassesUnfinalized(result);
            NotifyDependents(result, "ensure-class");
            return result;
        }

        public static ClassMetaobject FinalizeInheritance(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            FinalizeInheritanceInternal(classMetaobject, new HashSet<ClassMetaobject>());
            return classMetaobject;
        }

        public static List<ClassMetaobject> ComputeClassPrecedenceList(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            var result = new List<ClassMetaobject>();
            var seen = new HashSet<ClassMetaobject>();
            BuildClassPrecedenceList(classMetaobject, seen, result);
            return result;
        }

        public static List<EffectiveSlotDefinitionMetaobject> ComputeSlots(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            var cpl = classMetaobject.ClassPrecedenceList.Count > 0
                ? classMetaobject.ClassPrecedenceList
                : ComputeClassPrecedenceList(classMetaobject);

            var byName = new Dictionary<string, List<DirectSlotDefinitionMetaobject>>(StringComparer.Ordinal);
            var orderedNames = new List<string>();

            for (var i = cpl.Count - 1; i >= 0; i--)
            {
                var cls = cpl[i];
                foreach (var direct in cls.DirectSlots)
                {
                    if (direct?.Name == null)
                    {
                        continue;
                    }

                    if (!byName.TryGetValue(direct.Name, out var aggregate))
                    {
                        aggregate = new List<DirectSlotDefinitionMetaobject>();
                        byName[direct.Name] = aggregate;
                        orderedNames.Add(direct.Name);
                    }

                    aggregate.Add(direct);
                }
            }

            var effectiveSlots = new List<EffectiveSlotDefinitionMetaobject>();
            foreach (var slotName in orderedNames)
            {
                var effective = ComputeEffectiveSlotDefinition(slotName, byName[slotName]);
                effectiveSlots.Add(effective);
            }

            return effectiveSlots;
        }

        public static EffectiveSlotDefinitionMetaobject ComputeEffectiveSlotDefinition(
            string slotName,
            IReadOnlyList<DirectSlotDefinitionMetaobject> directSlots)
        {
            if (string.IsNullOrEmpty(slotName))
            {
                throw new ArgumentException("slotName must not be null or empty.", nameof(slotName));
            }

            if (directSlots == null)
            {
                throw new ArgumentNullException(nameof(directSlots));
            }

            if (directSlots.Count == 0)
            {
                throw new InvalidOperationException("At least one direct slot is required to compute an effective slot definition.");
            }

            var effective = new EffectiveSlotDefinitionMetaobject(slotName);
            foreach (var direct in directSlots)
            {
                if (direct == null)
                {
                    continue;
                }

                effective.InitForm = direct.InitForm;
                effective.InitFunction = direct.InitFunction;
                effective.TypeSpecifier = direct.TypeSpecifier;
                effective.Allocation = direct.Allocation;
                effective.Documentation = direct.Documentation;
                MergeUnique(effective.InitArgs, direct.InitArgs);
            }

            return effective;
        }

        public static List<object> ComputeDefaultInitArgs(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            var cpl = classMetaobject.ClassPrecedenceList.Count > 0
                ? classMetaobject.ClassPrecedenceList
                : ComputeClassPrecedenceList(classMetaobject);

            var valuesByKey = new Dictionary<object, object>();
            var orderedKeys = new List<object>();

            for (var i = cpl.Count - 1; i >= 0; i--)
            {
                var cls = cpl[i];
                var defaults = cls.DirectDefaultInitArgs;
                for (var j = 0; j + 1 < defaults.Count; j += 2)
                {
                    var key = defaults[j];
                    var value = defaults[j + 1];
                    if (!valuesByKey.ContainsKey(key))
                    {
                        orderedKeys.Add(key);
                    }

                    valuesByKey[key] = value;
                }
            }

            var merged = new List<object>(orderedKeys.Count * 2);
            foreach (var key in orderedKeys)
            {
                merged.Add(key);
                merged.Add(valuesByKey[key]);
            }

            return merged;
        }

        public static bool ClassFinalizedP(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return classMetaobject.Finalized;
        }

        public static IReadOnlyList<ClassMetaobject> ClassPrecedenceList(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            EnsureFinalized(classMetaobject);
            return classMetaobject.ClassPrecedenceList.AsReadOnly();
        }

        public static IReadOnlyList<EffectiveSlotDefinitionMetaobject> ClassSlots(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            EnsureFinalized(classMetaobject);
            return classMetaobject.ClassSlots.AsReadOnly();
        }

        public static IReadOnlyList<ClassMetaobject> ClassDirectSuperclasses(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return new List<ClassMetaobject>(classMetaobject.DirectSuperclasses).AsReadOnly();
        }

        public static IReadOnlyList<ClassMetaobject> ClassDirectSubclasses(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return new List<ClassMetaobject>(classMetaobject.DirectSubclasses).AsReadOnly();
        }

        public static IReadOnlyList<DirectSlotDefinitionMetaobject> ClassDirectSlots(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return new List<DirectSlotDefinitionMetaobject>(classMetaobject.DirectSlots).AsReadOnly();
        }

        public static IReadOnlyList<object> ClassDirectDefaultInitargs(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return new List<object>(classMetaobject.DirectDefaultInitArgs).AsReadOnly();
        }

        public static IReadOnlyList<object> ClassDefaultInitargs(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            EnsureFinalized(classMetaobject);
            return new List<object>(classMetaobject.ClassDefaultInitArgs).AsReadOnly();
        }

        public static string ClassDocumentation(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            return classMetaobject.Documentation;
        }

        public static object GenericFunctionName(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return genericFunction.Name;
        }

        public static IReadOnlyList<MethodMetaobject> GenericFunctionMethods(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return new List<MethodMetaobject>(genericFunction.Methods).AsReadOnly();
        }

        public static Type GenericFunctionMethodClass(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return genericFunction.MethodClass;
        }

        public static IReadOnlyList<object> GenericFunctionLambdaList(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return new List<object>(genericFunction.LambdaList).AsReadOnly();
        }

        public static string GenericFunctionDocumentation(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction == null)
            {
                throw new ArgumentNullException(nameof(genericFunction));
            }

            return genericFunction.Documentation;
        }

        public static IReadOnlyList<object> MethodQualifiers(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return new List<object>(method.Qualifiers).AsReadOnly();
        }

        public static IReadOnlyList<SpecializerMetaobject> MethodSpecializers(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return new List<SpecializerMetaobject>(method.Specializers).AsReadOnly();
        }

        public static IReadOnlyList<object> MethodLambdaList(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return new List<object>(method.LambdaList).AsReadOnly();
        }

        public static Delegate MethodFunction(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return method.Function;
        }

        public static GenericFunctionMetaobject MethodGenericFunction(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return method.GenericFunction;
        }

        public static string MethodDocumentation(MethodMetaobject method)
        {
            if (method == null)
            {
                throw new ArgumentNullException(nameof(method));
            }

            return method.Documentation;
        }

        public static string SlotDefinitionName(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.Name;
        }

        public static object SlotDefinitionInitForm(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.InitForm;
        }

        public static Func<object> SlotDefinitionInitFunction(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.InitFunction;
        }

        public static object SlotDefinitionTypeSpecifier(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.TypeSpecifier;
        }

        public static object SlotDefinitionAllocation(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.Allocation;
        }

        public static IReadOnlyList<object> SlotDefinitionInitArgs(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return new List<object>(slotDefinition.InitArgs).AsReadOnly();
        }

        public static string SlotDefinitionDocumentation(SlotDefinitionMetaobject slotDefinition)
        {
            if (slotDefinition == null)
            {
                throw new ArgumentNullException(nameof(slotDefinition));
            }

            return slotDefinition.Documentation;
        }

        public static IReadOnlyList<object> DirectSlotDefinitionReaders(DirectSlotDefinitionMetaobject directSlotDefinition)
        {
            if (directSlotDefinition == null)
            {
                throw new ArgumentNullException(nameof(directSlotDefinition));
            }

            return new List<object>(directSlotDefinition.Readers).AsReadOnly();
        }

        public static IReadOnlyList<object> DirectSlotDefinitionWriters(DirectSlotDefinitionMetaobject directSlotDefinition)
        {
            if (directSlotDefinition == null)
            {
                throw new ArgumentNullException(nameof(directSlotDefinition));
            }

            return new List<object>(directSlotDefinition.Writers).AsReadOnly();
        }

        public static int? EffectiveSlotDefinitionLocation(EffectiveSlotDefinitionMetaobject effectiveSlotDefinition)
        {
            if (effectiveSlotDefinition == null)
            {
                throw new ArgumentNullException(nameof(effectiveSlotDefinition));
            }

            return effectiveSlotDefinition.Location;
        }

        public static StandardObjectInstance AllocateInstance(ClassMetaobject classMetaobject)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (classMetaobject is not StandardClassMetaobject)
            {
                throw new InvalidOperationException("allocate-instance is currently supported only for standard-class metaobjects.");
            }

            EnsureFinalized(classMetaobject);

            var maxLocation = -1;
            foreach (var slot in classMetaobject.ClassSlots)
            {
                if (slot.Location.HasValue)
                {
                    maxLocation = Math.Max(maxLocation, slot.Location.Value);
                }
            }

            return new StandardObjectInstance(classMetaobject, maxLocation + 1);
        }

        public static StandardObjectInstance MakeInstance(ClassMetaobject classMetaobject, IEnumerable<object> initargs = null)
        {
            var instance = AllocateInstance(classMetaobject);
            var supplied = ParseInitargs(initargs);

            foreach (var slot in classMetaobject.ClassSlots)
            {
                var valueSet = false;
                for (var i = 0; i < slot.InitArgs.Count; i++)
                {
                    if (supplied.TryGetValue(slot.InitArgs[i], out var suppliedValue))
                    {
                        SetSlotValueUsingClass(classMetaobject, instance, slot, suppliedValue);
                        valueSet = true;
                        break;
                    }
                }

                if (valueSet)
                {
                    continue;
                }

                if (slot.InitFunction != null)
                {
                    SetSlotValueUsingClass(classMetaobject, instance, slot, slot.InitFunction());
                    continue;
                }

                if (slot.InitForm != null)
                {
                    SetSlotValueUsingClass(classMetaobject, instance, slot, slot.InitForm);
                }
            }

            return instance;
        }

        public static object SlotValueUsingClass(ClassMetaobject classMetaobject, StandardObjectInstance instance, object slotName)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (instance == null)
            {
                throw new ArgumentNullException(nameof(instance));
            }

            EnsureInstanceClass(classMetaobject, instance);
            var effectiveSlot = ResolveEffectiveSlot(classMetaobject, slotName);
            var location = RequireInstanceSlotLocation(effectiveSlot);
            var value = instance.ReadLocation(location);
            if (ReferenceEquals(value, Global.Unbound))
            {
                throw new InvalidOperationException($"Slot '{effectiveSlot.Name}' is unbound.");
            }

            return value;
        }

        public static object SetSlotValueUsingClass(ClassMetaobject classMetaobject, StandardObjectInstance instance, object slotName, object value)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (instance == null)
            {
                throw new ArgumentNullException(nameof(instance));
            }

            EnsureInstanceClass(classMetaobject, instance);
            var effectiveSlot = ResolveEffectiveSlot(classMetaobject, slotName);
            var location = RequireInstanceSlotLocation(effectiveSlot);
            instance.WriteLocation(location, value);
            return value;
        }

        public static bool SlotBoundpUsingClass(ClassMetaobject classMetaobject, StandardObjectInstance instance, object slotName)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (instance == null)
            {
                throw new ArgumentNullException(nameof(instance));
            }

            EnsureInstanceClass(classMetaobject, instance);
            var effectiveSlot = ResolveEffectiveSlot(classMetaobject, slotName);
            var location = RequireInstanceSlotLocation(effectiveSlot);
            return !ReferenceEquals(instance.ReadLocation(location), Global.Unbound);
        }

        public static void SlotMakunboundUsingClass(ClassMetaobject classMetaobject, StandardObjectInstance instance, object slotName)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (instance == null)
            {
                throw new ArgumentNullException(nameof(instance));
            }

            EnsureInstanceClass(classMetaobject, instance);
            var effectiveSlot = ResolveEffectiveSlot(classMetaobject, slotName);
            var location = RequireInstanceSlotLocation(effectiveSlot);
            instance.WriteLocation(location, Global.Unbound);
        }

        public static object EnsureClassFromDefclassForm(
            object className,
            object directSuperclasses,
            object directSlots,
            object defaultInitargs,
            object options)
        {
            var metaclass = ResolveMetaclassFromDefclassOptions(options);
            var documentation = ResolveDocumentationFromDefclassOptions(options);

            var superclasses = ToObjectList(directSuperclasses);
            var slots = ParseDirectSlotDefinitionsFromDefclass(directSlots);
            var defaults = ParseDefaultInitargsFromDefclass(defaultInitargs);

            return EnsureClass(
                className,
                metaclass: metaclass,
                directSuperclasses: superclasses,
                directSlots: slots,
                defaultInitargs: defaults,
                documentation: documentation);
        }

        public static EqlSpecializerMetaobject InternEqlSpecializer(object eqlSpecializerObject)
        {
            if (eqlSpecializerObject == null)
            {
                NullEqlSpecializer ??= new EqlSpecializerMetaobject(null);
                return NullEqlSpecializer;
            }

            if (EqlSpecializers.TryGetValue(eqlSpecializerObject, out var existing))
            {
                return existing;
            }

            var specializer = new EqlSpecializerMetaobject(eqlSpecializerObject);
            EqlSpecializers[eqlSpecializerObject] = specializer;
            return specializer;
        }

        public static object EqlSpecializerObject(EqlSpecializerMetaobject specializer)
        {
            if (specializer == null)
            {
                throw new ArgumentNullException(nameof(specializer));
            }

            return specializer.Value;
        }

        public static bool ValidateSuperclass(ClassMetaobject classMetaobject, ClassMetaobject superclass)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (superclass == null)
            {
                throw new ArgumentNullException(nameof(superclass));
            }

            if (superclass is ForwardReferencedClassMetaobject)
            {
                return true;
            }

            if (classMetaobject is StandardClassMetaobject)
            {
                return superclass is StandardClassMetaobject || superclass is BuiltInClassMetaobject;
            }

            if (classMetaobject is BuiltInClassMetaobject)
            {
                return superclass is BuiltInClassMetaobject;
            }

            if (classMetaobject is ForwardReferencedClassMetaobject)
            {
                return true;
            }

            return classMetaobject.GetType().IsAssignableFrom(superclass.GetType());
        }

        private static void InstallFunctionBinding(object functionName, GenericFunctionMetaobject genericFunction)
        {
            if (functionName is not Symbol symbol)
            {
                return;
            }

            symbol.Function = GetCallable(genericFunction);
        }

        private static void NotifyDependents(Metaobject metaobject, object updateInfo)
        {
            if (metaobject == null)
            {
                return;
            }

            MapDependents(metaobject, dependent => UpdateDependent(metaobject, dependent, updateInfo));
        }

        private static ClassMetaobject ResolveClassRedefinitionTarget(ClassMetaobject existing, Type targetClass)
        {
            if (existing == null)
            {
                return CreateClassInstance(targetClass);
            }

            if (existing.GetType() == targetClass)
            {
                return existing;
            }

            if (existing is ForwardReferencedClassMetaobject)
            {
                var replacement = CreateClassInstance(targetClass);
                replacement.Documentation = existing.Documentation;
                replacement.Finalized = existing.Finalized;
                return replacement;
            }

            throw new InvalidOperationException("Existing class metaclass does not match requested metaclass.");
        }

        private static void EnsureFinalized(ClassMetaobject classMetaobject)
        {
            if (!classMetaobject.Finalized)
            {
                FinalizeInheritance(classMetaobject);
            }
        }

        private static void FinalizeInheritanceInternal(ClassMetaobject classMetaobject, HashSet<ClassMetaobject> visiting)
        {
            if (classMetaobject.Finalized)
            {
                return;
            }

            if (!visiting.Add(classMetaobject))
            {
                throw new InvalidOperationException("Circular superclass dependency detected while finalizing inheritance.");
            }

            foreach (var superclass in classMetaobject.DirectSuperclasses)
            {
                FinalizeInheritanceInternal(superclass, visiting);
            }

            classMetaobject.ClassPrecedenceList.Clear();
            classMetaobject.ClassPrecedenceList.AddRange(ComputeClassPrecedenceList(classMetaobject));

            classMetaobject.ClassSlots.Clear();
            classMetaobject.ClassSlots.AddRange(ComputeSlots(classMetaobject));
            AssignSlotLocations(classMetaobject.ClassSlots);

            classMetaobject.SlotDictionary.Clear();
            foreach (var slot in classMetaobject.ClassSlots)
            {
                classMetaobject.SlotDictionary[slot.Name] = slot;
            }

            classMetaobject.ClassDefaultInitArgs.Clear();
            classMetaobject.ClassDefaultInitArgs.AddRange(ComputeDefaultInitArgs(classMetaobject));

            classMetaobject.Finalized = true;
            visiting.Remove(classMetaobject);
            InvalidateAllDispatchCaches();
        }

        private static void AssignSlotLocations(IReadOnlyList<EffectiveSlotDefinitionMetaobject> effectiveSlots)
        {
            var nextLocation = 0;
            foreach (var slot in effectiveSlots)
            {
                if (IsInstanceAllocation(slot.Allocation))
                {
                    slot.Location = nextLocation;
                    nextLocation++;
                }
                else
                {
                    slot.Location = null;
                }
            }
        }

        private static Dictionary<object, object> ParseInitargs(IEnumerable<object> initargs)
        {
            var result = new Dictionary<object, object>();
            if (initargs == null)
            {
                return result;
            }

            var flat = new List<object>(initargs);
            if (flat.Count % 2 != 0)
            {
                throw new ArgumentException("initargs must contain an even number of elements (key/value pairs).", nameof(initargs));
            }

            for (var i = 0; i < flat.Count; i += 2)
            {
                result[flat[i]] = flat[i + 1];
            }

            return result;
        }

        private static Type ResolveMetaclassFromDefclassOptions(object options)
        {
            foreach (var option in ToObjectList(options))
            {
                var items = ToObjectList(option);
                if (items.Count < 2 || !IsKeywordNamed(items[0], "METACLASS"))
                {
                    continue;
                }

                var value = items[1];
                if (value is Type type)
                {
                    return type;
                }

                var name = DesignatorName(value);
                if (name == null)
                {
                    return typeof(StandardClassMetaobject);
                }

                if (string.Equals(name, "STANDARD-CLASS", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(StandardClassMetaobject);
                }

                if (string.Equals(name, "BUILT-IN-CLASS", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(BuiltInClassMetaobject);
                }

                if (string.Equals(name, "FORWARD-REFERENCED-CLASS", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(ForwardReferencedClassMetaobject);
                }
            }

            return typeof(StandardClassMetaobject);
        }

        private static Type ResolveGenericFunctionClassFromDefgenericOptions(object options)
        {
            foreach (var option in ToObjectList(options))
            {
                var items = ToObjectList(option);
                if (items.Count < 2 || !IsKeywordNamed(items[0], "GENERIC-FUNCTION-CLASS"))
                {
                    continue;
                }

                var value = items[1];
                if (value is Type type)
                {
                    return type;
                }

                var name = DesignatorName(value);
                if (string.Equals(name, "STANDARD-GENERIC-FUNCTION", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(StandardGenericFunctionMetaobject);
                }
            }

            return typeof(StandardGenericFunctionMetaobject);
        }

        private static Type ResolveMethodClassFromDefgenericOptions(object options)
        {
            foreach (var option in ToObjectList(options))
            {
                var items = ToObjectList(option);
                if (items.Count < 2 || !IsKeywordNamed(items[0], "METHOD-CLASS"))
                {
                    continue;
                }

                var value = items[1];
                if (value is Type type)
                {
                    return type;
                }

                var name = DesignatorName(value);
                if (string.Equals(name, "STANDARD-METHOD", StringComparison.OrdinalIgnoreCase))
                {
                    return typeof(StandardMethodMetaobject);
                }
            }

            return typeof(StandardMethodMetaobject);
        }

        private static string ResolveDocumentationFromDefclassOptions(object options)
        {
            foreach (var option in ToObjectList(options))
            {
                var items = ToObjectList(option);
                if (items.Count >= 2 && IsKeywordNamed(items[0], "DOCUMENTATION"))
                {
                    return items[1]?.ToString();
                }
            }

            return null;
        }

        private static List<DirectSlotDefinitionMetaobject> ParseDirectSlotDefinitionsFromDefclass(object directSlots)
        {
            var result = new List<DirectSlotDefinitionMetaobject>();

            foreach (var slotSpec in ToObjectList(directSlots))
            {
                if (slotSpec == null)
                {
                    continue;
                }

                if (slotSpec is Symbol symbolSlot)
                {
                    result.Add(new DirectSlotDefinitionMetaobject(symbolSlot.Name));
                    continue;
                }

                var parts = ToObjectList(slotSpec);
                if (parts.Count == 0)
                {
                    continue;
                }

                var slotName = DesignatorName(parts[0]);
                if (string.IsNullOrEmpty(slotName))
                {
                    continue;
                }

                var slot = new DirectSlotDefinitionMetaobject(slotName);
                for (var i = 1; i + 1 < parts.Count; i += 2)
                {
                    var key = parts[i];
                    var value = parts[i + 1];

                    if (IsKeywordNamed(key, "INITARG"))
                    {
                        slot.InitArgs.Add(value);
                    }
                    else if (IsKeywordNamed(key, "READER"))
                    {
                        slot.Readers.Add(value);
                    }
                    else if (IsKeywordNamed(key, "WRITER"))
                    {
                        slot.Writers.Add(value);
                    }
                    else if (IsKeywordNamed(key, "ACCESSOR"))
                    {
                        slot.Readers.Add(value);
                        slot.Writers.Add(value);
                    }
                    else if (IsKeywordNamed(key, "ALLOCATION"))
                    {
                        slot.Allocation = value;
                    }
                    else if (IsKeywordNamed(key, "TYPE"))
                    {
                        slot.TypeSpecifier = value;
                    }
                    else if (IsKeywordNamed(key, "DOCUMENTATION"))
                    {
                        slot.Documentation = value?.ToString();
                    }
                    else if (IsKeywordNamed(key, "INITFORM"))
                    {
                        slot.InitForm = value;
                    }
                }

                result.Add(slot);
            }

            return result;
        }

        private static (List<object> lambdaList, List<SpecializerMetaobject> specializers) ParseSpecializedLambdaList(object specializedLambdaList)
        {
            var lambdaList = new List<object>();
            var specializers = new List<SpecializerMetaobject>();

            foreach (var parameterSpec in ToObjectList(specializedLambdaList))
            {
                if (parameterSpec is Symbol symbol)
                {
                    lambdaList.Add(symbol);
                    continue;
                }

                var parts = ToObjectList(parameterSpec);
                if (parts.Count == 0)
                {
                    continue;
                }

                var parameterName = parts[0];
                lambdaList.Add(parameterName);

                if (parts.Count > 1)
                {
                    var specializer = ResolveMethodSpecializer(parts[1]);
                    if (specializer != null)
                    {
                        specializers.Add(specializer);
                    }
                }
            }

            return (lambdaList, specializers);
        }

        private static SpecializerMetaobject ResolveMethodSpecializer(object specializerSpec)
        {
            if (specializerSpec == null)
            {
                return null;
            }

            if (specializerSpec is SpecializerMetaobject specializer)
            {
                return specializer;
            }

            var parts = ToObjectList(specializerSpec);
            if (parts.Count >= 2 && SymbolNamed(parts[0], "EQL"))
            {
                return InternEqlSpecializer(parts[1]);
            }

            if (TryFindClass(specializerSpec, out var knownClass))
            {
                return knownClass;
            }

            if (specializerSpec is Symbol)
            {
                return EnsureClass(specializerSpec, metaclass: typeof(ForwardReferencedClassMetaobject));
            }

            return null;
        }

        private static Delegate AdaptMethodFunction(object methodFunction)
        {
            if (methodFunction is Delegate del)
            {
                return del;
            }

            var closure = Closure.RequireClosure(methodFunction, "DEFMETHOD");
            return new Func<object[], object>(args => closure.Invoke(args ?? Array.Empty<object>()));
        }

        private static List<object> ParseDefaultInitargsFromDefclass(object defaultInitargs)
        {
            var values = ToObjectList(defaultInitargs);
            var flattened = new List<object>();

            if (values.Count == 0)
            {
                return flattened;
            }

            if (values[0] is Lisp.List || values[0] is Lisp.List.ListCell)
            {
                foreach (var spec in values)
                {
                    var parts = ToObjectList(spec);
                    if (parts.Count >= 2)
                    {
                        flattened.Add(parts[0]);
                        flattened.Add(parts[1]);
                    }
                }

                return flattened;
            }

            for (var i = 0; i + 1 < values.Count; i += 2)
            {
                flattened.Add(values[i]);
                flattened.Add(values[i + 1]);
            }

            return flattened;
        }

        private static List<object> ToObjectList(object maybeList)
        {
            var result = new List<object>();
            if (maybeList == null)
            {
                return result;
            }

            if (maybeList is Lisp.List l)
            {
                var current = l;
                while (!current.EndP)
                {
                    result.Add(current.First());
                    var rest = current.Rest();
                    if (rest is Lisp.List next)
                    {
                        current = next;
                    }
                    else
                    {
                        result.Add(rest);
                        break;
                    }
                }

                return result;
            }

            if (maybeList is IEnumerable enumerable && maybeList is not string)
            {
                foreach (var value in enumerable)
                {
                    result.Add(value);
                }

                return result;
            }

            result.Add(maybeList);
            return result;
        }

        private static bool IsKeywordNamed(object value, string keywordName)
        {
            if (value is Keyword kw)
            {
                return string.Equals(kw.Name, keywordName, StringComparison.OrdinalIgnoreCase);
            }

            if (value is Symbol sym)
            {
                return string.Equals(sym.Name, keywordName, StringComparison.OrdinalIgnoreCase)
                    || string.Equals(sym.Name, ":" + keywordName, StringComparison.OrdinalIgnoreCase);
            }

            if (value is string text)
            {
                return string.Equals(text, keywordName, StringComparison.OrdinalIgnoreCase)
                    || string.Equals(text, ":" + keywordName, StringComparison.OrdinalIgnoreCase);
            }

            return false;
        }

        private static bool SymbolNamed(object value, string symbolName)
        {
            var name = DesignatorName(value);
            return string.Equals(name, symbolName, StringComparison.OrdinalIgnoreCase);
        }

        private static string DesignatorName(object value)
        {
            return value switch
            {
                Symbol sym => sym.Name,
                string text => text,
                List.ListCell cell => DesignatorName(cell.first),
                _ => value?.ToString()
            };
        }

        private static void EnsureInstanceClass(ClassMetaobject classMetaobject, StandardObjectInstance instance)
        {
            if (!ReferenceEquals(instance.Class, classMetaobject))
            {
                throw new InvalidOperationException("Instance class does not match requested class metaobject.");
            }
        }

        private static EffectiveSlotDefinitionMetaobject ResolveEffectiveSlot(ClassMetaobject classMetaobject, object slotName)
        {
            EnsureFinalized(classMetaobject);

            if (slotName is EffectiveSlotDefinitionMetaobject effective)
            {
                return effective;
            }

            var name = slotName switch
            {
                Symbol sym => sym.Name,
                string text => text,
                _ => slotName?.ToString()
            };

            if (string.IsNullOrEmpty(name))
            {
                throw new ArgumentException("slotName must resolve to a slot name.", nameof(slotName));
            }

            if (classMetaobject.SlotDictionary.TryGetValue(name, out var slot))
            {
                return slot;
            }

            throw new InvalidOperationException($"No effective slot named '{name}' exists for this class.");
        }

        private static int RequireInstanceSlotLocation(EffectiveSlotDefinitionMetaobject slot)
        {
            if (!slot.Location.HasValue)
            {
                throw new InvalidOperationException($"Slot '{slot.Name}' is not an :instance slot and has no instance location.");
            }

            return slot.Location.Value;
        }

        private static bool IsInstanceAllocation(object allocation)
        {
            if (allocation == null)
            {
                return true;
            }

            if (allocation is Symbol sym)
            {
                return string.Equals(sym.Name, "INSTANCE", StringComparison.OrdinalIgnoreCase)
                    || string.Equals(sym.Name, ":INSTANCE", StringComparison.OrdinalIgnoreCase);
            }

            if (allocation is string text)
            {
                return string.Equals(text, "instance", StringComparison.OrdinalIgnoreCase)
                    || string.Equals(text, ":instance", StringComparison.OrdinalIgnoreCase);
            }

            return false;
        }

        private static void BuildClassPrecedenceList(
            ClassMetaobject current,
            HashSet<ClassMetaobject> seen,
            List<ClassMetaobject> result)
        {
            if (!seen.Add(current))
            {
                return;
            }

            result.Add(current);
            foreach (var superclass in current.DirectSuperclasses)
            {
                BuildClassPrecedenceList(superclass, seen, result);
            }
        }

        private static void MarkClassAndSubclassesUnfinalized(ClassMetaobject classMetaobject)
        {
            var queue = new Queue<ClassMetaobject>();
            var seen = new HashSet<ClassMetaobject>();
            queue.Enqueue(classMetaobject);

            while (queue.Count > 0)
            {
                var current = queue.Dequeue();
                if (!seen.Add(current))
                {
                    continue;
                }

                current.Finalized = false;
                foreach (var subclass in current.DirectSubclasses)
                {
                    queue.Enqueue(subclass);
                }
            }

            InvalidateAllDispatchCaches();
        }

        private static (IReadOnlyList<MethodMetaobject> applicable, Func<object[], object> effective) GetOrComputeDispatch(
            GenericFunctionMetaobject genericFunction,
            object[] arguments)
        {
            if (genericFunction is StandardGenericFunctionMetaobject standard)
            {
                var mask = standard.EqlSpecializedPositions;
                var key = new InvocationCacheKey(arguments, mask);
                if (standard.TryGetCachedDispatch(key, out var cached))
                {
                    return (cached.ApplicableMethods, cached.EffectiveMethod);
                }

                var applicable = ComputeApplicableMethods(genericFunction, arguments);
                var effective = ComputeEffectiveMethod(genericFunction, applicable);
                standard.SetCachedDispatch(key, new DispatchCacheEntry(applicable, effective));
                return (applicable, effective);
            }

            var computedApplicable = ComputeApplicableMethods(genericFunction, arguments);
            var computedEffective = ComputeEffectiveMethod(genericFunction, computedApplicable);
            return (computedApplicable, computedEffective);
        }

        private static void InvalidateDispatchCache(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction is StandardGenericFunctionMetaobject standard)
            {
                standard.ClearDispatchCache();
            }
        }

        private static void InvalidateAllDispatchCaches()
        {
            foreach (var genericFunction in GenericFunctions.Values)
            {
                InvalidateDispatchCache(genericFunction);
            }
        }

        private static ClassMetaobject CreateClassInstance(Type targetClass)
        {
            var withName = Activator.CreateInstance(targetClass, new object[] { null });
            if (withName is ClassMetaobject classMetaobject)
            {
                return classMetaobject;
            }

            var empty = Activator.CreateInstance(targetClass);
            if (empty is ClassMetaobject fallback)
            {
                return fallback;
            }

            throw new InvalidOperationException("Unable to create class metaobject instance for requested metaclass.");
        }

        private static ClassMetaobject ResolveSuperclass(object superclassSpec)
        {
            if (superclassSpec == null)
            {
                throw new ArgumentNullException(nameof(superclassSpec));
            }

            if (superclassSpec is ClassMetaobject classMetaobject)
            {
                return classMetaobject;
            }

            if (TryFindClass(superclassSpec, out var found))
            {
                return found;
            }

            var forward = new ForwardReferencedClassMetaobject();
            SetClassName(forward, superclassSpec);
            return forward;
        }

        private static Closure GetCallable(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction is StandardGenericFunctionMetaobject standard)
            {
                return standard.Callable;
            }

            throw new InvalidOperationException("No callable adapter is available for this generic function class.");
        }

        private static void RecomputeDiscriminatingFunction(GenericFunctionMetaobject genericFunction)
        {
            if (genericFunction is not StandardGenericFunctionMetaobject standard)
            {
                return;
            }

            standard.SetDiscriminatingFunction(ComputeDiscriminatingFunction(standard));
        }

        private static object InvokeMethodFunction(MethodMetaobject method, object[] args)
        {
            if (method.Function == null)
            {
                throw new InvalidOperationException("Method has no function.");
            }

            if (method.Function is Func<object[], object> fastFunc)
            {
                return fastFunc(args);
            }

            var parameters = method.Function.Method.GetParameters();
            object result;

            if (parameters.Length == 1 && parameters[0].ParameterType == typeof(object[]))
            {
                result = method.Function.DynamicInvoke(new object[] { args });
            }
            else if (parameters.Length == args.Length)
            {
                result = method.Function.DynamicInvoke(args);
            }
            else
            {
                throw new InvalidOperationException("Method function signature is incompatible with supplied arguments.");
            }

            return result;
        }

        private static void EnsureLambdaListCongruence(IReadOnlyList<object> genericLambdaList, IReadOnlyList<object> methodLambdaList)
        {
            var genericRequired = CountRequired(genericLambdaList);
            var methodRequired = CountRequired(methodLambdaList);
            if (genericRequired != methodRequired)
            {
                throw new InvalidOperationException($"Method lambda list is not congruent with generic function lambda list. Required counts differ: {genericRequired} vs {methodRequired}.");
            }
        }

        private static int CountRequired(IReadOnlyList<object> lambdaList)
        {
            var count = 0;
            foreach (var item in lambdaList)
            {
                if (item is string text && text.StartsWith("&", StringComparison.Ordinal))
                {
                    break;
                }

                if (item is Symbol sym && sym.Name.StartsWith("&", StringComparison.Ordinal))
                {
                    break;
                }

                count++;
            }

            return count;
        }

        private static bool MethodsAgree(MethodMetaobject left, MethodMetaobject right)
        {
            if (left == null || right == null) return false;
            return SequenceEqual(left.Qualifiers, right.Qualifiers)
                && SequenceEqual(left.Specializers, right.Specializers);
        }

        private static bool HasMethodQualifier(MethodMetaobject method, string qualifierName)
        {
            if (method == null)
            {
                return false;
            }

            for (var i = 0; i < method.Qualifiers.Count; i++)
            {
                if (SymbolNamed(method.Qualifiers[i], qualifierName))
                {
                    return true;
                }
            }

            return false;
        }

        private static bool IsMethodApplicable(MethodMetaobject method, object[] arguments)
        {
            if (method == null)
            {
                return false;
            }

            var required = CountRequired(method.LambdaList);
            if (arguments.Length < required)
            {
                return false;
            }

            if (method.Specializers.Count == 0)
            {
                return true;
            }

            var checks = Math.Min(method.Specializers.Count, arguments.Length);
            for (var i = 0; i < checks; i++)
            {
                if (!SpecializerAccepts(method.Specializers[i], arguments[i]))
                {
                    return false;
                }
            }

            return true;
        }

        private static bool SpecializerAccepts(SpecializerMetaobject specializer, object argument)
        {
            if (specializer == null)
            {
                return true;
            }

            return specializer switch
            {
                EqlSpecializerMetaobject eqlSpecializer => Equals(argument, eqlSpecializer.Value),
                _ => true
            };
        }

        private static bool SequenceEqual<T>(IReadOnlyList<T> left, IReadOnlyList<T> right)
        {
            if (ReferenceEquals(left, right))
            {
                return true;
            }

            if (left.Count != right.Count)
            {
                return false;
            }

            for (var i = 0; i < left.Count; i++)
            {
                if (!Equals(left[i], right[i]))
                {
                    return false;
                }
            }

            return true;
        }

        private static void MergeUnique(List<object> target, IReadOnlyList<object> source)
        {
            for (var i = 0; i < source.Count; i++)
            {
                if (!target.Contains(source[i]))
                {
                    target.Add(source[i]);
                }
            }
        }
    }

    public abstract class Metaobject
    {
        public List<object> Dependents { get; } = new List<object>();
    }

    public sealed class StandardObjectInstance
    {
        private readonly object[] storage;

        public ClassMetaobject Class { get; }

        public StandardObjectInstance(ClassMetaobject classMetaobject, int slotCount)
        {
            if (classMetaobject == null)
            {
                throw new ArgumentNullException(nameof(classMetaobject));
            }

            if (slotCount < 0)
            {
                throw new ArgumentOutOfRangeException(nameof(slotCount));
            }

            Class = classMetaobject;
            storage = new object[slotCount];
            for (var i = 0; i < storage.Length; i++)
            {
                storage[i] = Global.Unbound;
            }
        }

        public object ReadLocation(int location)
        {
            if (location < 0 || location >= storage.Length)
            {
                throw new InvalidOperationException("Slot location is out of range for this instance.");
            }

            return storage[location];
        }

        public void WriteLocation(int location, object value)
        {
            if (location < 0 || location >= storage.Length)
            {
                throw new InvalidOperationException("Slot location is out of range for this instance.");
            }

            storage[location] = value;
        }
    }

    public abstract class SpecializerMetaobject : Metaobject
    {
    }

    public abstract class ClassMetaobject : SpecializerMetaobject
    {
        public object Name { get; set; }
        public string Documentation { get; set; }
        public bool Finalized { get; set; }
        public List<object> DirectDefaultInitArgs { get; } = new List<object>();
        public List<object> ClassDefaultInitArgs { get; } = new List<object>();

        public List<ClassMetaobject> DirectSuperclasses { get; } = new List<ClassMetaobject>();
        public List<ClassMetaobject> DirectSubclasses { get; } = new List<ClassMetaobject>();
        public List<ClassMetaobject> ClassPrecedenceList { get; } = new List<ClassMetaobject>();
        public List<DirectSlotDefinitionMetaobject> DirectSlots { get; } = new List<DirectSlotDefinitionMetaobject>();
        public List<EffectiveSlotDefinitionMetaobject> ClassSlots { get; } = new List<EffectiveSlotDefinitionMetaobject>();
        internal readonly Dictionary<string, EffectiveSlotDefinitionMetaobject> SlotDictionary = new Dictionary<string, EffectiveSlotDefinitionMetaobject>(StringComparer.Ordinal);

        protected ClassMetaobject(object name = null)
        {
            Name = name;
        }
    }

    public sealed class StandardClassMetaobject : ClassMetaobject
    {
        public StandardClassMetaobject(object name = null) : base(name)
        {
        }
    }

    public sealed class BuiltInClassMetaobject : ClassMetaobject
    {
        public BuiltInClassMetaobject(object name = null) : base(name)
        {
            Finalized = true;
        }
    }

    public sealed class ForwardReferencedClassMetaobject : ClassMetaobject
    {
        public ForwardReferencedClassMetaobject(object name = null) : base(name)
        {
        }
    }

    public abstract class SlotDefinitionMetaobject : Metaobject
    {
        public string Name { get; set; }
        public object InitForm { get; set; }
        public Func<object> InitFunction { get; set; }
        public object TypeSpecifier { get; set; } = typeof(object);
        public object Allocation { get; set; } = ":instance";
        public List<object> InitArgs { get; } = new List<object>();
        public string Documentation { get; set; }

        protected SlotDefinitionMetaobject(string name)
        {
            Name = name;
        }
    }

    public sealed class DirectSlotDefinitionMetaobject : SlotDefinitionMetaobject
    {
        public List<object> Readers { get; } = new List<object>();
        public List<object> Writers { get; } = new List<object>();

        public DirectSlotDefinitionMetaobject(string name) : base(name)
        {
        }
    }

    public sealed class EffectiveSlotDefinitionMetaobject : SlotDefinitionMetaobject
    {
        public int? Location { get; set; }

        public EffectiveSlotDefinitionMetaobject(string name) : base(name)
        {
        }
    }

    public abstract class MethodMetaobject : Metaobject
    {
        public List<object> Qualifiers { get; } = new List<object>();
        public List<SpecializerMetaobject> Specializers { get; } = new List<SpecializerMetaobject>();
        public List<object> LambdaList { get; } = new List<object>();
        public Delegate Function { get; set; }
        public GenericFunctionMetaobject GenericFunction { get; set; }
        public string Documentation { get; set; }
    }

    public sealed class StandardMethodMetaobject : MethodMetaobject
    {
    }

    public abstract class GenericFunctionMetaobject : Metaobject
    {
        public object Name { get; set; }
        public List<MethodMetaobject> Methods { get; } = new List<MethodMetaobject>();
        public Type MethodClass { get; set; } = typeof(StandardMethodMetaobject);
        public List<object> LambdaList { get; } = new List<object>();
        public MethodCombinationMetaobject MethodCombination { get; set; } = MopRuntime.FindMethodCombination("STANDARD");
        public string Documentation { get; set; }
    }

    public sealed class StandardGenericFunctionMetaobject : GenericFunctionMetaobject
    {
        private readonly Dictionary<InvocationCacheKey, DispatchCacheEntry> dispatchCache = new Dictionary<InvocationCacheKey, DispatchCacheEntry>();
        private bool[] _eqlSpecializedPositions;

        public bool[] EqlSpecializedPositions => _eqlSpecializedPositions;

        public Func<object[], object> DiscriminatingFunction { get; private set; }
        public Closure Callable { get; }

        public StandardGenericFunctionMetaobject()
        {
            DiscriminatingFunction = _ => throw new InvalidOperationException("Generic function has no discriminating function installed.");
            Callable = new GenericFunctionClosureAdapter(this);
        }

        internal void RecomputeEqlSpecializedPositions()
        {
            if (Methods.Count == 0)
            {
                _eqlSpecializedPositions = null;
                return;
            }

            int maxRequired = 0;
            foreach (var m in Methods)
            {
                maxRequired = Math.Max(maxRequired, m.Specializers.Count);
            }

            if (maxRequired == 0)
            {
                _eqlSpecializedPositions = null;
                return;
            }

            var mask = new bool[maxRequired];
            foreach (var m in Methods)
            {
                for (int i = 0; i < m.Specializers.Count; i++)
                {
                    if (m.Specializers[i] is EqlSpecializerMetaobject)
                    {
                        mask[i] = true;
                    }
                }
            }
            _eqlSpecializedPositions = mask;
        }

        public void SetDiscriminatingFunction(Func<object[], object> fn)
        {
            DiscriminatingFunction = fn ?? throw new ArgumentNullException(nameof(fn));
        }

        public object Invoke(params object[] args)
        {
            return DiscriminatingFunction(args ?? Array.Empty<object>());
        }

        public int DispatchCacheSize => dispatchCache.Count;

        internal bool TryGetCachedDispatch(InvocationCacheKey key, out DispatchCacheEntry cached)
        {
            return dispatchCache.TryGetValue(key, out cached);
        }

        internal void SetCachedDispatch(InvocationCacheKey key, DispatchCacheEntry cached)
        {
            dispatchCache[key] = cached;
        }

        internal void ClearDispatchCache()
        {
            dispatchCache.Clear();
        }
    }

    public sealed class DispatchCacheEntry
    {
        public IReadOnlyList<MethodMetaobject> ApplicableMethods { get; }
        public Func<object[], object> EffectiveMethod { get; }

        public DispatchCacheEntry(IReadOnlyList<MethodMetaobject> applicableMethods, Func<object[], object> effectiveMethod)
        {
            ApplicableMethods = applicableMethods ?? throw new ArgumentNullException(nameof(applicableMethods));
            EffectiveMethod = effectiveMethod ?? throw new ArgumentNullException(nameof(effectiveMethod));
        }
    }

    public readonly struct InvocationCacheKey : IEquatable<InvocationCacheKey>
    {
        private readonly object[] keys;
        private readonly int hashCode;

        public InvocationCacheKey(object[] arguments, bool[] eqlSpecializedPositions)
        {
            if (arguments == null || arguments.Length == 0)
            {
                keys = Array.Empty<object>();
                hashCode = 0;
                return;
            }

            keys = new object[arguments.Length];
            for (var i = 0; i < arguments.Length; i++)
            {
                var arg = arguments[i];
                bool isEqlPosition = eqlSpecializedPositions != null && i < eqlSpecializedPositions.Length && eqlSpecializedPositions[i];

                if (isEqlPosition)
                {
                    // Must cache on actual value identity for EQL specializers
                    keys[i] = arg;
                }
                else
                {
                    // Cache on the class metaobject for normal dispatch
                    keys[i] = MopRuntime.ResolveClassOfObject(arg);
                }
            }

            hashCode = ComputeHashCode(keys);
        }

        private static int ComputeHashCode(object[] keys)
        {
            unchecked
            {
                var hash = 17;
                for (var i = 0; i < keys.Length; i++)
                {
                    hash = (hash * 31) + (keys[i]?.GetHashCode() ?? 0);
                }
                return hash;
            }
        }

        public bool Equals(InvocationCacheKey other)
        {
            if (keys.Length != other.keys.Length)
            {
                return false;
            }

            for (var i = 0; i < keys.Length; i++)
            {
                var k1 = keys[i];
                var k2 = other.keys[i];

                if (k1 is ClassMetaobject c1 && k2 is ClassMetaobject c2)
                {
                    if (!ReferenceEquals(c1, c2)) return false;
                }
                else
                {
                    if (!Equals(k1, k2)) return false;
                }
            }

            return true;
        }

        public override bool Equals(object obj)
        {
            return obj is InvocationCacheKey other && Equals(other);
        }

        public override int GetHashCode()
        {
            return hashCode;
        }
    }

    public sealed class GenericFunctionClosureAdapter : Closure
    {
        public StandardGenericFunctionMetaobject GenericFunction { get; }

        public GenericFunctionClosureAdapter(StandardGenericFunctionMetaobject genericFunction)
        {
            this.GenericFunction = genericFunction ?? throw new ArgumentNullException(nameof(genericFunction));
        }

        public override object Invoke()
        {
            return GenericFunction.Invoke(Array.Empty<object>());
        }

        public override object Invoke(object arg0)
        {
            return GenericFunction.Invoke(arg0);
        }

        public override object Invoke(object arg0, object arg1)
        {
            return GenericFunction.Invoke(arg0, arg1);
        }

        public override object Invoke(object arg0, object arg1, object arg2)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2);
        }

        public override object Invoke(object arg0, object arg1, object arg2, object arg3)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2, arg3);
        }

        public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2, arg3, arg4);
        }

        public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2, arg3, arg4, arg5);
        }

        public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        }

        public override object Invoke(object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7)
        {
            return GenericFunction.Invoke(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
        }

        public override object Invoke(params object[] args)
        {
            return GenericFunction.Invoke(args ?? Array.Empty<object>());
        }
    }

    public sealed class EqlSpecializerMetaobject : SpecializerMetaobject
    {
        public object Value { get; }

        public EqlSpecializerMetaobject(object value)
        {
            Value = value;
        }
    }

    public sealed class MethodCombinationMetaobject : Metaobject
    {
        public object Name { get; set; }
    }
}
