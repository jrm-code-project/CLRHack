using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class LispTestsSuite
    {
        private const string TestDir = "/mnt/c/Users/JosephMarshall/AppData/Roaming/source/repos/CLRHack/LispTests";

        [Fact]
        public void TestLoadAllLispFiles()
        {
            // 1. Load package.lisp first to establish the environment
            string packageFile = Path.Combine(TestDir, "package.lisp");
            Assert.True(File.Exists(packageFile), "package.lisp not found.");
            LoadFile(packageFile);

            // 2. Load all other .lisp files
            var otherFiles = Directory.GetFiles(TestDir, "*.lisp")
                .Where(f => !f.EndsWith("package.lisp"))
                .OrderBy(f => f);

            foreach (var file in otherFiles)
            {
                LoadFile(file);
            }
        }

        private void LoadFile(string filePath)
        {
            using (var fileStream = File.OpenText(filePath))
            {
                var reader = new Reader(fileStream);
                while (true)
                {
                    try
                    {
                        var form = reader.Read(eofErrorP: false);
                        if (form == null && fileStream.EndOfStream) break;
                        if (form != null)
                        {
                            Evaluator.Process(form);
                        }
                    }
                    catch (EndOfStreamException)
                    {
                        break;
                    }
                    catch (Exception e)
                    {
                        throw new InvalidOperationException($"Error reading form in {filePath}: {e.Message}", e);
                    }
                }
            }
        }
    }
}
