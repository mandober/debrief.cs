# Name binding

https://en.wikipedia.org/wiki/Name_binding

**Name binding** is the association of entities (in a PL, these are objects like values, variables, functions, pointers, resources, handlers, etc.) with *identifiers*.

Intuitivelly, binding is about giving (shorter, more meaningfull) names to objects. Probably the most frequent use of name binding is assigning a symbolic name to a value, e.g. pi=3.14159265358979.

An identifier bound to an object is said to **reference** that object.

Machine languages have no notion of identifiers, so name-to-object binding is implemented by the compliler as a service for the programmer. Usually, the compiler keeps all name-to-object associations in a table called **symbol table** (lookup table: "what is the value of this name?"). There may a global symbol table with perhaps separate symbol tables for different scopes.

During code authoring, the programmer can write, e.g. `pi` (as defined above), manytimes throught the program, and the compiler will (at compile-time) substitute every occurance of the identifier "pi" with its definition (it will **inline** the definition).

Name binding is closely related to *scoping*, as scope determines which names bind to which objects - at which locations in the program code (*lexically*) and in which one of the possible execution paths (*temporally*). This resolves the issue of what does a particular identifier "sees" at some particular location in the source code.

**Binding occurrence** (defining occurrence) is an occurance of an identifier in a context that establishes the binding. Such context is called the **binding context**.

**Applied occurrence** is the occurance of a (bound) identifier outside its binding context (e.g. occurance of an that identifier in the function's body), where the identifier stands for whatever (value) it was bound to.

For example, in math, defining a function like `f(x) = x²+x` introduces a new name (identifier), `f`, and associates (binds) it to a value, `x -> x²+x`. Also, within the function (in the scope of this function), the identifier `x` appears in the *binding context* (in parenthesis, as is the convention here); this is the *defining occurrence* of `x`. When this function called with an arg, the value of that arg will be associated to the name `x` for use within the function - these occurances of `x` in the function's body are *applied occurances*.
