using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    public class ReplTests : IDisposable
    {
        private string tempFilePath;

        public ReplTests()
        {
            tempFilePath = Path.GetTempFileName();
        }

        public void Dispose()
        {
            if (File.Exists(tempFilePath))
            {
                File.Delete(tempFilePath);
            }
        }

        [Fact]
        public void TestLoadFile_EndOfStreamException_HandledGracefully()
        {
            // Arrange
            // Write malformed Lisp code that throws EndOfStreamException mid-read (missing closing paren)
            File.WriteAllText(tempFilePath, "(print \"hello\"");

            using var consoleOutput = new StringWriter();
            var originalOut = Console.Out;
            Console.SetOut(consoleOutput);

            try
            {
                // Act
                Program.Main(new string[] { tempFilePath });

                // Assert
                var output = consoleOutput.ToString();

                // The LoadFile method should gracefully handle EndOfStreamException and just break the loop,
                // printing that it loaded the file.
                Assert.Contains($"Loaded {tempFilePath}", output);

                // Ensure no unhandled exception leaked out from Main.
                Assert.DoesNotContain("Error loading", output);
            }
            finally
            {
                // Restore original console output
                Console.SetOut(originalOut);
            }
        }

        [Fact]
        public void TestLoadFile_HandlesOtherExceptionsGracefully()
        {
            // Just verifying that an exception not masked by the inner catch is handled by the outer catch.
            // Using a known bad syntax feature (e.g. #xyz) which will throw an ArgumentException or similar parsing error.
            File.WriteAllText(tempFilePath, "#xyz");

            using var consoleOutput = new StringWriter();
            var originalOut = Console.Out;
            Console.SetOut(consoleOutput);

            try
            {
                // Act
                Program.Main(new string[] { tempFilePath });

                // Assert
                var output = consoleOutput.ToString();

                // Assert it fell through to the outer exception catch block and printed the error gracefully
                Assert.Contains($"Error loading {tempFilePath}", output);
            }
            finally
            {
                Console.SetOut(originalOut);
            }
        }
    }
}
