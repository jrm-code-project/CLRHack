using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace Lisp
{
    public abstract class Closure {
        private static bool RuntimeInitialized;

        private static void EnsureRuntimeInitialized()
        {
            if (RuntimeInitialized)
            {
                return;
            }

            MopRuntime.Initialize();
            RuntimeInitialized = true;
        }

        public virtual bool IsLazyResolver => false;
        public abstract object Invoke ();
        public abstract object Invoke (object arg0);
        public abstract object Invoke (object arg0, object arg1);
        public abstract object Invoke (object arg0, object arg1, object arg2);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26, object arg27);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26, object arg27, object arg28);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26, object arg27, object arg28, object arg29);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26, object arg27, object arg28, object arg29, object arg30);
        public abstract object Invoke (object arg0, object arg1, object arg2, object arg3, object arg4, object arg5, object arg6, object arg7, object arg8, object arg9, object arg10, object arg11, object arg12, object arg13, object arg14, object arg15, object arg16, object arg17, object arg18, object arg19, object arg20, object arg21, object arg22, object arg23, object arg24, object arg25, object arg26, object arg27, object arg28, object arg29, object arg30, object arg31);

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
                case 9: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]);
                case 10: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
                case 11: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10]);
                case 12: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11]);
                case 13: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12]);
                case 14: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13]);
                case 15: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14]);
                case 16: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15]);
                case 17: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16]);
                case 18: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17]);
                case 19: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18]);
                case 20: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19]);
                case 21: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20]);
                case 22: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21]);
                case 23: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22]);
                case 24: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23]);
                case 25: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24]);
                case 26: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25]);
                case 27: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26]);
                case 28: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27]);
                case 29: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27], args[28]);
                case 30: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27], args[28], args[29]);
                case 31: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27], args[28], args[29], args[30]);
                case 32: return Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10], args[11], args[12], args[13], args[14], args[15], args[16], args[17], args[18], args[19], args[20], args[21], args[22], args[23], args[24], args[25], args[26], args[27], args[28], args[29], args[30], args[31]);
                default:
                    throw new System.NotImplementedException("Closures with more than 32 arguments are not yet supported.");
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

        public static object ResolveFunction(string? packageName, string symbolName)
        {
            EnsureRuntimeInitialized();

            if (string.Equals(packageName, "CLRHACK", StringComparison.OrdinalIgnoreCase)
                && string.Equals(symbolName, "ANALYZE-ENVIRONMENT", StringComparison.OrdinalIgnoreCase))
            {
                var selfHostAst = AppDomain.CurrentDomain.GetAssemblies().FirstOrDefault(a =>
                                      string.Equals(a.GetName().Name, "SelfHost_ast", StringComparison.OrdinalIgnoreCase));
                if (selfHostAst == null)
                {
                    var baseDir = AppContext.BaseDirectory;
                    if (!string.IsNullOrEmpty(baseDir))
                    {
                        var astPath = System.IO.Path.Combine(baseDir, "SelfHost_ast.dll");
                        if (System.IO.File.Exists(astPath))
                        {
                            selfHostAst = Assembly.LoadFrom(astPath);
                        }
                    }
                }
                if (selfHostAst != null)
                {
                    var programType = selfHostAst.GetType("Program");
                    var field = programType?
                        .GetFields(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static)
                        .FirstOrDefault(f => string.Equals(f.Name, "ANALYZE_ENVIRONMENT", StringComparison.OrdinalIgnoreCase));
                    var fieldValue = field?.GetValue(null);
                    if (fieldValue is Closure analyzeClosure)
                    {
                        return analyzeClosure;
                    }
                }
            }

            if (string.Equals(symbolName, "CLRHASH", StringComparison.OrdinalIgnoreCase)
                && (string.IsNullOrEmpty(packageName)
                    || string.Equals(packageName, "CLRHACK", StringComparison.OrdinalIgnoreCase)))
            {
                return ResolveFunction("COMMON-LISP", "CLRHASH");
            }

            var package = string.IsNullOrEmpty(packageName) ? Package.Current : Package.Find(packageName);
            if (package != null)
            {
                var (symbol, status) = package.FindSymbol(symbolName);
                if (status != SymbolStatus.None && symbol != null && symbol.FBoundP)
                {
                    return symbol.Function;
                }
            }

            var selfHost = ResolveFromSelfHostAssemblies(packageName, symbolName);
            if (selfHost != null) return selfHost;

            // If not found yet, return a lazy resolver that will try again at call time.
            // This is crucial for functions defined by DEFSTRUCT or other top-level forms
            // during module initialization.
            return MopRuntime.CreateNativeClosure(args => {
                var fn = ResolveFunction(packageName, symbolName);
                if (fn is Closure closure && !closure.IsLazyResolver)
                {
                    // Found a real function, call it.
                    // We don't update the static field in the calling module here, 
                    // but subsequent calls will hit this lazy resolver and find the real function.
                    return closure.Invoke(args);
                }
                throw new Exception($"Undefined function: {(string.IsNullOrEmpty(packageName) ? "" : packageName + ":")}{symbolName}");
            }, isLazyResolver: true);
        }

        private static readonly Dictionary<string, Closure?> SelfHostFunctionCache = new Dictionary<string, Closure?>();

        private static Closure? ResolveFromSelfHostAssemblies(string? packageName, string symbolName)
        {
            if (!string.IsNullOrEmpty(packageName) &&
                !string.Equals(packageName, "CLRHACK", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(packageName, "IL", StringComparison.OrdinalIgnoreCase))
            {
                return null;
            }

            var cacheKey = $"{packageName ?? string.Empty}:{symbolName}";
            if (SelfHostFunctionCache.TryGetValue(cacheKey, out var cached))
            {
                return cached;
            }

            var methodName = SanitizeIdentifier(symbolName);
            object? ResolveFromPackageNow()
            {
                var package = string.IsNullOrEmpty(packageName) ? Package.Current : Package.Find(packageName);
                if (package == null)
                {
                    return null;
                }

                var (symbol, status) = package.FindSymbol(symbolName);
                if (status != SymbolStatus.None && symbol != null && symbol.FBoundP)
                {
                    return symbol.Function;
                }

                return null;
            }

            Closure? FindFieldCandidate()
            {
                foreach (var assembly in AppDomain.CurrentDomain.GetAssemblies()
                             .Where(a => !a.IsDynamic)
                             .Where(a => a.GetName().Name != null && a.GetName().Name.StartsWith("SelfHost_", StringComparison.Ordinal)))
                {
                    var programType = assembly.GetType("Program");
                    if (programType == null)
                    {
                        continue;
                    }

                    var field = programType
                        .GetFields(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static)
                        .FirstOrDefault(f => string.Equals(f.Name, methodName, StringComparison.OrdinalIgnoreCase));

                    if (field == null)
                    {
                        continue;
                    }

                    var fieldValue = field.GetValue(null);
                    if (fieldValue is Closure closure)
                    {
                        return closure;
                    }

                    if (fieldValue != null)
                    {
                        var invokeMethods = fieldValue.GetType()
                            .GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance)
                            .Where(m => string.Equals(m.Name, "Invoke", StringComparison.Ordinal))
                            .ToArray();

                        if (invokeMethods.Length > 0)
                        {
                            var adapted = MopRuntime.CreateNativeClosure(args =>
                            {
                                var invoke = invokeMethods.FirstOrDefault(m =>
                                {
                                    var p = m.GetParameters();
                                    return p.Length == args.Length;
                                });

                                if (invoke != null)
                                {
                                    return invoke.Invoke(fieldValue, args);
                                }

                                var variadic = invokeMethods.FirstOrDefault(m =>
                                {
                                    var p = m.GetParameters();
                                    return p.Length == 1 && p[0].ParameterType == typeof(object[]);
                                });

                                if (variadic != null)
                                {
                                    return variadic.Invoke(fieldValue, new object[] { args });
                                }

                                throw new Exception($"Field {field.Name} is not invokable for {symbolName}.");
                            });

                            return adapted;
                        }
                    }
                }

                return null;
            }

            MethodInfo[] FindCandidates() => AppDomain.CurrentDomain.GetAssemblies()
                .Where(a => !a.IsDynamic)
                .Where(a => a.GetName().Name != null && a.GetName().Name.StartsWith("SelfHost_", StringComparison.Ordinal))
                .Select(a => a.GetType("Program"))
                .Where(t => t != null)
                .SelectMany(t => t!.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static)
                    .Where(m => string.Equals(m.Name, methodName, StringComparison.OrdinalIgnoreCase))
                    .Where(m => !string.Equals(m.Name, "InitializeModule", StringComparison.OrdinalIgnoreCase)
                                && !m.Name.StartsWith("InitializeModuleChunk", StringComparison.OrdinalIgnoreCase)
                                && !string.Equals(m.Name, "INITIALIZE_MODULE", StringComparison.OrdinalIgnoreCase)
                                && !m.Name.StartsWith("INITIALIZE_MODULE_CHUNK", StringComparison.OrdinalIgnoreCase)))
                .ToArray();

            var candidates = FindCandidates();
            var fieldCandidate = FindFieldCandidate();
            if (fieldCandidate != null)
            {
                SelfHostFunctionCache[cacheKey] = fieldCandidate;
                return fieldCandidate;
            }

            if (candidates.Length == 0)
            {
                var baseDir = AppContext.BaseDirectory;
                if (!string.IsNullOrEmpty(baseDir) && System.IO.Directory.Exists(baseDir))
                {
                    foreach (var path in System.IO.Directory.EnumerateFiles(baseDir, "SelfHost_*.dll"))
                    {
                        try
                        {
                            var fileName = System.IO.Path.GetFileNameWithoutExtension(path);
                            _ = AppDomain.CurrentDomain.GetAssemblies().FirstOrDefault(a =>
                                string.Equals(a.GetName().Name, fileName, StringComparison.OrdinalIgnoreCase))
                                ?? Assembly.LoadFrom(path);
                        }
                        catch
                        {
                            // Ignore preload failures and continue searching already-loaded assemblies.
                        }
                    }
                }

                var packageResolved = ResolveFromPackageNow();
                if (packageResolved != null)
                {
                    return packageResolved as Closure;
                }

                fieldCandidate = FindFieldCandidate();
                if (fieldCandidate != null)
                {
                    SelfHostFunctionCache[cacheKey] = fieldCandidate;
                    return fieldCandidate;
                }

                candidates = FindCandidates();
            }

            if (candidates.Length == 0)
            {
                SelfHostFunctionCache[cacheKey] = null;
                return null;
            }

            var closure = MopRuntime.CreateNativeClosure(args =>
            {
                var method = candidates.FirstOrDefault(m => m.GetParameters().Length == args.Length)
                             ?? candidates.First();
                try
                {
                    return method.Invoke(null, args);
                }
                catch (TargetInvocationException tie)
                {
                    throw new Exception($"SelfHost fallback invocation failed for {symbolName} via {method.DeclaringType?.Assembly.GetName().Name}.{method.Name}", tie);
                }
                catch (Exception ex)
                {
                    throw new Exception($"SelfHost fallback invocation failed for {symbolName} via {method.DeclaringType?.Assembly.GetName().Name}.{method.Name}", ex);
                }
            });

            SelfHostFunctionCache[cacheKey] = closure;
            return closure;
        }

        private static string SanitizeIdentifier(string value)
        {
            var chars = value.Select(ch => char.IsLetterOrDigit(ch) ? ch : '_').ToArray();
            return new string(chars).ToUpperInvariant();
        }
    }
}
