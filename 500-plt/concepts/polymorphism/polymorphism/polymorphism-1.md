# Polymorphism

Polymorphism is a complex concept in programming language theory.

Polymorphism is an umbrella term used for its opposing flavors in the form of *ad hoc polymorphism* and *paramteric polymorphism*, and including many language concepts such as parametricity, overloading, generics, virtual methods, dispatching, etc.

Polymorphism is perhaps the most briefly defined by its ability to endow language entities with the capability to behave in a certain manner (sometimes differently, and sometimes uniformly) depending on the situation but mostly on the types involved.

If language objects represent data and model real-world objects and functions model their behavior, then polymorphism endows both with some extra capabilities. Objects can be defined and implemented according to a template, and functions can accept and work on many different objects, not just one (particular type).

C is a language notorious for lacking polymorphism, so programmers are forced to - just imagine the pain - define evertything in terms on a single concrete type. For example, a simple data struture like list must be defined for each and every type the programmer wants to use it at: once for i64, once for u84, once for double, once for char, once for char*, once for u64*, once for i64*, once for one custom struct, once for other custom struct, …. It is impossible to enumerate the types of a programming language, and so is creating a truly generic, type-safe, idiomatic list data structure in C. Of the two approaches to this problem, using void pointers is not type safe, and using preprocessor is like using a different language; unfortunatelly, no other sane approaches exist (what about "cello"?). C programmers usually stick to a subset of types needed for the project and don't rely on common libraries much.

Polymorphism allows defining a data structure, like a list, once and for all, regardless of the actual type of the payload. This is possible because the payload type has little to do with the administrativia of a data structure. Whether the payload is an integer, a string, or some custom user type has no impact on the definition of a list, nor on many list methods. These things are about the "structure" of a data struture, anyway, not about the type of the payload. The type of the payload do come to be important, but only later when a list is consumed (e.g. printed). There are a lot of list methods that may be implemented without knowing the type of elements (e.g. head, tail, first, last; and even map, filter, foldr, foldl, scanr, scanl, zip, partition).

>In fact any list function can be implemented generically provided an adequate support for polymorphism from the language - support for both *ad hoc polymorphism* and *parameteric polymorphism*.

Polymorphism may be hastly defined as endowing the language entities with the capability to adjust their behavior depending on the types involved. 

Polymorphism comes in various shapes and kinds, it is realized in different ways, and it has many facets and properties. Crucially, however, each programming language, or more precisely its creators, must decide to implement support for polymorphism (of any kind) - it is not a feature that can come later, e.g. in form of a library. The language's phase that provides support for polymorphism is perhaps the first criteria by which it gets divided into *compile-time polymorphism* and *runtime polymorphism*.
