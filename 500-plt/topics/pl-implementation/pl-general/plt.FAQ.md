# PLT :: FAQ

## 1. Is it possible to have a programming language without literals?

In a *nominal type system*, two types are the same only if they have the same name (but/even if the type's name could be difficult to determine). In other words, two values are the same if the same constructor was used to create them.

This is contrasted by a *structural type system* in which two values are compatible, or have compatible types, if they have the same general shape. Structural type systems usually support subtyping which goes in line with this (with shapes of things). Two values of different types (thus created with different ctors) are compatible if one can be used in place of the other. This usually happens due to subtyping. So, e.g. a `string` is a subtype of the union type `string | number` (example from TS).

*Nominal types* are types that have a name and they are different than any other type in a given language precisely on the name. That is, in a nominal type system, if two values have a different type (according to the names of the types), then they are considered different.


all types are distinct


discerned 

are distiguishable 

discerned from other types precisely by their name.

Language primitive types are nominal types. 

Although most primitives have a literal form, if we ignore them for now and only consider their constructor functions

they are usually considered to belong to a certain type, and only to that type. 

For example, if 'true' is a Boolean value (as it usually is), then 'true' can only be of the Boolean type. Conversely, the Boolean ctor must be used to create Boolean values (If we ignore literals for a moment).

But we can't ignore literals because it is a literal that we must pass

we do need to pass a Boolean literal to the Boolean ctor as in the call `new Boolean(true)`, but this could have also been a string as in `new Boolean('true')`. That is to say, it's impossible not to have literals in a language. What about Lambda Calculus? Are the function definitions literals? In any case, LC is not yet a complete language, it needs I/O, and who knows if we'd need literals then.
