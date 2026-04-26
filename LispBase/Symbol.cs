using System;

namespace Lisp
{
    public class Symbol
    {
        public string Name { get; }
        public Package? Package { get; internal set; }

        private object? value = Global.Unbound;
        private object? function = Global.Unbound;
        public List Plist { get; set; } = List.Empty;

        public Symbol(string name, Package? package = null)
        {
            Name = name;
            Package = package;
        }

        public object? Value
        {
            get
            {
                if (value == Global.Unbound)
                    throw new InvalidOperationException($"Symbol {Name} is unbound.");
                return value;
            }
            set => this.value = value;
        }

        public object? Function
        {
            get
            {
                if (function == Global.Unbound)
                    throw new InvalidOperationException($"Symbol {Name} has no function definition.");
                return function;
            }
            set => this.function = value;
        }

        public bool BoundP => value != Global.Unbound;
        public bool FBoundP => function != Global.Unbound;

        public void MakeUnbound() => value = Global.Unbound;
        public void FMakeUnbound() => function = Global.Unbound;

        public object? Get(object indicator)
        {
            List current = Plist;
            while (!current.EndP)
            {
                if (current.First() == indicator)
                {
                    return ((List)current.Rest()).First();
                }
                current = (List)((List)current.Rest()).Rest();
            }
            return null;
        }

        public void Put(object indicator, object val)
        {
            List current = Plist;
            while (!current.EndP)
            {
                if (current.First() == indicator)
                {
                    // Update existing property
                    // Since List is immutable, we have to rebuild or change the internal cell.
                    // However, our List implementation is immutable. 
                    // In a proper Lisp, plists are mutable. 
                    // For now, I shall replace the entire Plist.
                    // This is inefficient but correct for an immutable list structure.
                    RemProp(indicator);
                    break;
                }
                current = (List)((List)current.Rest()).Rest();
            }
            Plist = Plist.Cons(val).Cons(indicator);
        }

        public bool RemProp(object indicator)
        {
            List current = Plist;
            List newPlist = List.Empty;
            bool found = false;

            // Since our List is immutable and a struct, we must rebuild it.
            // This is a bit of a "stratagem" to simulate mutability.
            List temp = Plist;
            var elements = new System.Collections.Generic.List<object>();
            while (!temp.EndP)
            {
                var key = temp.First();
                var val = ((List)temp.Rest()).First();
                if (key == indicator)
                {
                    found = true;
                }
                else
                {
                    elements.Add(key);
                    elements.Add(val);
                }
                temp = (List)((List)temp.Rest()).Rest();
            }

            if (found)
            {
                // Rebuild the list in reverse to maintain order if we care, 
                // but plists don't strictly require it.
                // VectorToList will maintain the order of the 'elements' list.
                Plist = AdtList.VectorToList(elements.ToArray());
            }

            return found;
        }

        public Symbol CopySymbol(bool copyProps = false)
        {
            var newSym = new Symbol(Name, null);
            if (copyProps)
            {
                if (BoundP) newSym.Value = value;
                if (FBoundP) newSym.Function = function;
                newSym.Plist = Plist;
            }
            return newSym;
        }

        public override string ToString()
        {
            if (Package == null) return "#:" + Name;
            if (Package == Package.Keyword) return ":" + Name;
            return Name;
        }
    }
}
