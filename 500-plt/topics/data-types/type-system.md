# Type System

https://en.wikipedia.org/wiki/Type_system

A type system defines how a programming language classifies values and expressions into types, how it can manipulate those types and how they interact.

The goal of a type system is to verify and usually enforce a certain level of correctness in programs written in that language by detecting certain incorrect operations. Any decidable type system involves a trade-off: while it rejects many incorrect programs, it can also prohibit some correct, albeit unusual programs. In order to bypass this downside, a number of languages have type loopholes, usually unchecked casts that may be used by the programmer to explicitly allow a normally disallowed operation between different types. In most typed languages, the type system is used only to type check programs, but a number of languages, usually functional ones, infer types, relieving the programmer from the need to write type annotations. The formal design and study of type systems is known as type theory.



* Type systems
  * General concepts
    - type safety
    - type checking
    - type annotation
    - type signature
    - type expression
    - type compatibility
    - type equivalence
  * Typing discipline
    - strong typing discipline
    - weak typing discipline
    - static typing
    - dynamic typing
  * Major categories
    - Static   v dynamic
    - Manifest v inferred
    - Nominal  v structural
  * Concepts
    - Duck typing
    - Dependent type
    - Flow-sensitive typing
    - Gradual typing
    - Intersection type
    - Latent typing
    - Refinement type
    - Substructural type system
    - Unique type
    - Abstract type
