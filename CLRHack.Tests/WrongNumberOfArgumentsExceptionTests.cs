using System;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    public class WrongNumberOfArgumentsExceptionTests
    {
        [Fact]
        public void Exception_StoresExpectedAndProvidedArguments()
        {
            // Arrange
            int expected = 2;
            int provided = 1;

            // Act
            var exception = new WrongNumberOfArgumentsException(expected, provided);

            // Assert
            Assert.Equal(expected, exception.Expected);
            Assert.Equal(provided, exception.Provided);
            Assert.Equal("Wrong number of arguments: expected 2, provided 1.", exception.Message);
        }

        [Fact]
        public void Exception_WithCustomMessage_StoresMessage()
        {
            // Arrange
            string customMessage = "Custom error message";

            // Act
            var exception = new WrongNumberOfArgumentsException(customMessage);

            // Assert
            Assert.Equal(customMessage, exception.Message);
            Assert.Equal(0, exception.Expected);
            Assert.Equal(0, exception.Provided);
        }
    }
}
