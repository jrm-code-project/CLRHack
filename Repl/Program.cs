using System;
using System.IO;

namespace Lisp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                foreach (var arg in args)
                {
                    LoadFile(arg);
                }
                return;
            }

            Console.WriteLine("Welcome to CLR Lisp!");
            
            while (true)
            {
                Console.Write("> ");
                var line = Console.ReadLine();
                if (string.IsNullOrEmpty(line))
                {
                    break;
                }

                try
                {
                    var reader = new Reader(new StringReader(line));
                    var form = reader.ReadSingleObject();
                    if (form != null)
                    {
                        var result = Evaluator.Process(form);
                        Console.WriteLine(result?.ToString() ?? "NIL");
                    }
                }
                catch (Exception e) when (e is InvalidOperationException or EndOfStreamException or NotImplementedException or ArgumentException or DivideByZeroException)
                {
                    Console.WriteLine($"Error: {e.Message}");
                }
            }
        }

        private static void LoadFile(string filePath)
        {
            try
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
                    }
                }
                Console.WriteLine($"Loaded {filePath}");
            }
            catch (Exception e) when (e is IOException or InvalidOperationException or NotImplementedException or ArgumentException or DivideByZeroException)
            {
                Console.WriteLine($"Error loading {filePath}: {e.Message}");
            }
        }
    }
}