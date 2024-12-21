# PL Features :: Function

## Extensionality and intensionality

In mathematics, a function may be defined set-theoretically as a set of ordered pairs. So, a function, like any other set, is identified by its elements, which is the extensional view of identity. The extensional view of equality says that two sets are *extensionally equal* if they contain the same elements.

Two functions, identified by the same set of ordered pairs, are *extensionally equal*, even though they may be differently defined. If we are considering the equality of their definitions, then we are talking about the functions-as-rules view, under which two functions are *intensionally equal* only if they have the same definition (rule); in that case, they are also bound to be extensionally equal.

So far, this is true for both functions in mathematics as well as for (math) functions in PLs. However, functions in some PL, have another notion of equality, referential equality.

In a PL that uses call-byreference semantics, objects are passed by reference (basically, a safe version of a pointer). Functions, being objects, are thus also passed by reference. So comparing two functions for equiality actually means comparing their references for equality - and two references are equal if they point to the same exact object. The phrase "same exact object" means it has to be the very same instance of an individual object; not even two, otherwise identical objects, that were created separately (so actually being two different instances of the same class/object) will fare as equal.
