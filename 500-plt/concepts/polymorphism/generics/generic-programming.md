# Generic programming

https://en.wikipedia.org/wiki/Generic_programming

## Intro

**Generic programming** is a style of computer programming in which algorithms are written in terms of data types "to be specified later" that are then *instantiated* when needed for specific types provided as *type parameters*.

This approach, pioneered by the ML programming language in 1973, permits writing functions (and other language entities) that differ only in the concrete type which they operate on, thus reducing duplicate code.

Generic programming was introduced to the mainstream with Ada in 1977. C++ templates have further popularized this approach. The techniques were further improved and *parameterized types* were introduced in the influential 1994 book "Design Patterns". New techniques were introduced by Andrei Alexandrescu in his 2001 book "Modern C++ Design: Generic Programming and Design Patterns Applied".

Such software entities are known as *generics* in Ada, C#, Delphi, Eiffel, F#, Java, Nim, Python, Go, Rust, Swift, TypeScript, and Visual Basic .NET. They are known as *parametric polymorphism* in ML, Scala, Julia, and Haskell. (Haskell terminology also uses the term *generic* for a related but somewhat different concept).

The term "generic programming" was originally coined by David Musser and Alexander Stepanov in a more specific sense than the above, to describe a programming paradigm in which *fundamental requirements on data types are abstracted from across concrete examples of algorithms and data structures and formalized as concepts, with generic functions implemented in terms of these concepts*, typically using language genericity mechanisms as described above.

## Rationale

*Generic programming* is the name for this approach to programming, but it must be supported by the undelying programming language - it needs to provide the uspport for *generics*, which are the features of the language that enable generic programming.

The need for generics arises quicky when using a language without such support, with C being examplary. To code a data structure like *linked list*, for example, the programmer has to decide on a concrete type of *payload*, which is the type of values stored as elements in the structure. Creating a list that can store integers is fairly straightforward, but storing another type is in is impossible - a new implementation of list that works with that type must be created.

If we consider the number of useful data structures, S, and then the number of disctinct data types desirable to work with these structures, T, we come at an impass of S×T different implementations. The need for a particular data structure do not usually pop up suddenly, but the need to store a particular data type in a particular data structure (whose implementations exist but at other, incompatible types) does arise frequently and suddenly.

That is, predicting all the different data structures is far more feasable then predicting all the different types a single data structure needs to support.

Looking at the implementations of the same data structure but for two different types, it hurts to realize how much of the code is identical. This is because a data structure usually does not care very much about the concrete shape of data it works with. For example, a list need not know the concrete data type of elements it holds - it has slots intended for data, and most operations related to lists don't need to know about the concrete type of data inside. The data might as well be *polymorphic* (impossible to inspect).

Probably the most well-known example of generics across programming languages are arithmetic operations (+, -, ×, /) which work across different types. Even in C, the `+` operator looks the same whether it is used on int, longs, floats, etc. (type conversions do occur when using different types in the same expresion).
