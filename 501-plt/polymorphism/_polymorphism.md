# Polymorphism

https://en.wikipedia.org/wiki/Polymorphism_(computer_science)

Types of Polymorphism
- Ad hoc polymorphism
  - Function overloading
  - Operator overloading
- Parametric polymorphism
  - Generic function
  - Generic programming
- Subtyping (subtype polymorphism, inclusion polymorphism)
  - Virtual function
  - Single and dynamic dispatch
  - Double dispatch
  - Multiple dispatch
  - Predicate dispatch

In programming languages theory and type theory, 
polymorphism is the provision 
of a single interface 
to entities of different types, 
or the use of a single symbol 
to represent multiple different types.

The most commonly recognized major classes of polymorphism are:
- *Parametric polymorphism*: when types are not specified concretely (by name) but by abstract symbols that can represent any type, i.e. by type variables. This kind of polymorphism is concerned with generic functions (i.e. "polymorphic" functions, because "generic" usually means something in the same ballpark but way too deeper), and it dominates the FP languages.
- *Ad hoc polymorphism*: defines a common interface for an arbitrary set of individually specified types; This kind of polymorphism is concerned with overloading of identifiers, especially functions, and is found everywhere.
- *Subtyping* (also called subtype polymorphism or inclusion polymorphism): when a name denotes instances of many different classes related by some common superclass. This kind of polymorphism dominates in OOP. It is concerned with class' subtyping and thus with different strategies of dispatching methods to correct objects (i.e. sending the proper message to the rightful object, especially when the receiver's name is the same for many different objects).

## History

Interest in polymorphic type systems developed significantly in the **1960s**, with practical implementations beginning to appear by the end of that decade.

Ad hoc polymorphism and parametric polymorphism were originally described in **Christopher Strachey**'s `Fundamental Concepts in Programming Languages`, where they are listed as "the two main classes" of polymorphism.

Ad hoc polymorphism was a feature of Algol 68, while parametric polymorphism was the core feature of ML's type system.

In a 1985 paper, Peter Wegner and Luca Cardelli introduced the term inclusion polymorphism to model subtypes and inheritance, citing Simula as the first programming language to implement it.

Christopher Strachey chose the term ad hoc polymorphism to refer to polymorphic functions that can be applied to arguments of different types, but that behave differently depending on the type of the argument to which they are applied (also known as function overloading or operator overloading).
