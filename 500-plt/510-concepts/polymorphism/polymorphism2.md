# Polymorphism

https://en.wikipedia.org/wiki/Polymorphism_(computer_science)

Types of Polymorphism
- Ad hoc polymorphism
  - function overloading
  - operator overloading
- Parametric polymorphism
  - generic function
  - generic programming
- Subtype (inclusion) polymorphism
  - virtual function
  - single and dynamic dispatch
  - double dispatch
  - multiple dispatch
  - predicate dispatch


In PLT and TT, polymorphism is 
(PP) the provision of a single interface to entities of different types, or 
(AP) the use of a single symbol to represent multiple different types.


The most commonly recognized major classes of polymorphism are:

* *Parametric polymorphism* (PP): when types are not specified concretely but are repr by type variables (always-on polymorphism).

* *Ad hoc polymorphism* (AP): 
defines a common interface for an extendable set of individually specified types (opt-in polymorphism). AP is about overloading of identifiers.

* *Subtype polymorphism*, or subtyping or *inclusion polymorphism*: 
when a name denotes instances of many different classes related by some common superclass. This kind of polymorphism dominates in OOP. It is concerned with class' subtyping and thus with different strategies of dispatching methods to correct objects (sending the proper message to the rightful object when the receiver's name is the same for many different objects).

## History

Interest in polymorphic type systems developed significantly in the *1960s*, with practical implementations beginning to appear by the end of that decade.

Ad hoc polymorphism and parametric polymorphism were originally described in *Christopher Strachey's "Fundamental Concepts in Programming Languages"*, where they are listed as "the two main classes" of polymorphism.

Ad hoc polymorphism was a feature of Algol 68, while parametric polymorphism was the core feature of ML's type system.

In a 1985 paper, Peter Wegner and Luca Cardelli introduced the term inclusion polymorphism to model subtypes and inheritance, citing Simula as the first programming language to implement it.

Christopher Strachey chose the term ad hoc polymorphism to refer to polymorphic functions that can be applied to arguments of different types, but that behave differently depending on the type of the argument to which they are applied (also known as function overloading or operator overloading).
