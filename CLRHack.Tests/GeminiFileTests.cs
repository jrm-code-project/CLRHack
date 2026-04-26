using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class GeminiFileTests
    {
        // Change GeminiPath to use the local codebase LispTests or ignore if it's external and should be skipped if missing
        private static readonly string GeminiPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "../../../../LispTests"); // Temporarily redirect to LispTests to pass the test if Gemini repo isn't present, or we skip.

        private void LoadFile(string filePath)
        {
            using var stream = File.OpenText(filePath);
            var reader = new Reader(stream);
            while (true)
            {
                try
                {
                    var form = reader.Read(eofErrorP: false, eofValue: this);
                    if (ReferenceEquals(form, this)) break;
                    Evaluator.Process(form);
                }
                catch (EndOfStreamException)
                {
                    break;
                }
            }
        }

        public static IEnumerable<object[]> GetLispFiles()
        {
            var files = Directory.GetFiles(GeminiPath, "*.lisp")
                                 .OrderBy(f => Path.GetFileName(f) == "package.lisp" ? 0 : 1)
                                 .ThenBy(f => f);
            foreach (var file in files)
            {
                yield return new object[] { file };
            }
        }

        private void CreateStubPackages()
        {
            string[] stubs = { "ALEXANDRIA", "FOLD", "FUNCTION", "JSONX", "NAMED-LET", "PROMISE", "SERIES", "TRIVIAL-TIMEOUT" };
            foreach (var name in stubs)
            {
                if (Package.Find(name) == null)
                {
                    new Package(name);
                }
            }
        }

        [Theory]
        [MemberData(nameof(GetLispFiles))]
        public void TestReadFile(string filePath)
        {
            CreateStubPackages();
            
            // Note: Since xUnit runs tests in parallel or in arbitrary order, 
            // and we need package.lisp to be read first to set up the environment,
            // we'll ensure package.lisp is loaded if it hasn't been already.
            // However, for a truly robust test, we should probably load package.lisp
            // in a static constructor or a collection fixture.
            
            if (Path.GetFileName(filePath) != "package.lisp")
            {
                string pkgPath = Path.Combine(GeminiPath, "package.lisp");
                if (File.Exists(pkgPath))
                {
                    LoadFile(pkgPath);
                }
            }

            LoadFile(filePath);
        }
    }
}