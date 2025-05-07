# Abstract data type

Abstract Data Types (ADTs) help separate the use of a data structure from its implementation. We can map data into a data structure by using an already available abstraction. And this abstraction is called an ADT. ADTs are portable, theoretical constructs that can then be implemented in almost any programming language.

ADTs are a very specific implementation of *data abstraction*, and they are faitfully realized in ML or OCaml (with their faux functors and module-level signatures). *Objects* are another form of data abstraction.


An abstract data type defines a class of abstract objects which is completely characterized by the operations available on those objects. This means that an abstract data type can be defined by defining the characteristic operations for that type. -- "Programming with abstract data types", Liskov, Zilles.

Nothing is known about an ADT object, except what can be inferred by the operations it exposes. Every detail about implementation and structure of an ADT remains in the purview of the implementation.

A client may only get familiar with the supported, exposed operations and their signatures, and they may only rely on them (and only them) to infer things about the abstract data type. From outside, nothing is known about the actual implementation and structure of an ADT (unless the abstraction is breached).

"Abstract data types depend upon a static type system to enforce type abstraction. It is not an accident that dynamic languages use objects instead of user-deﬁned abstract data types. Dynamic languages typically support built-in abstract data types for primitive types; the type abstraction here is enforced by the runtime system." -- William Cook.


## Links

* William Cook - publications
https://www.cs.utexas.edu/~wcook/publications.htm#oo

* `Object-Oriented Programming Versus Abstract Data Types`, William Cook
https://www.cs.utexas.edu/~wcook/papers/OOPvsADT/CookOOPvsADT90.pdf

* `Abstract Data Types and Objects - Two fundamental approaches to data abstraction`, 14 Mar 2020
https://jnkr.tech/blog/abstract-data-types-and-objects
