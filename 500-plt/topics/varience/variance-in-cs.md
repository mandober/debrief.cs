# Variance in CS

https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)

## Summary

* Variance is a concept in computer science related to type systems.
* Variance is a type system feature that arises in face of certain features, but it still must be deliberately implemented by the language designers.
* Variance is a feature that arises with language features such as subtyping, inheritance, generic data types.
* A certain type of variance could be implemented in relation to certain language features to increase type safety or to align with user expectations.
* Certain types of variance naturally arise with certain language features but the designers may choose to ignore it or even invert it.
* It is the type ctor's type parameters that are variant, which in turn makes a type ctor itself variant - but only in relation to a certain type parameter.
* Each *distinct type parameter* of a type ctor is variant in its own way.
* The variance of a type ctor is only in relation to a particular type param.
* The same type ctor can be variant in different ways, depending on which of its type parameters is considered.


## Variance must be deliberatly implemented

Variance arises naturally with certain language features, but still the language designers must deliberatly implement it, either by supporting the naturally occurring direction of variance, or reversing it, or directing the type system to ignore it.

A programming language designers must consider variance when devising *typing rules* for features such as subtyping, inheritance, and generic data types.

## Variance is associated to type constructors

By making *type constructors* covariant or contravariant instead of invariant, more programs will be accepted as well-typed. On the other hand, programmers often find *contravariance unintuitive*, and accurately tracking variance to avoid runtime type errors can lead to *complex typing rules*.

In order to keep the type system simple and allow useful programs to type check, a language may treat a *type constructor* as invariant even if it would be safe to consider it variant, or treat it as covariant even if that could violate type safety.

## Subtyping

>Variance refers to how subtyping between complex types relates to subtyping between the simple types that constitute them.


Many type systems support subtyping. For instance, if the type 'Cat' is a subtype of 'Animal', then an expression of type 'Cat' should be substitutable wherever an expression of type 'Animal' is used.

Variance is how subtyping between more complex types relates to subtyping between their components. For example, how should a list of Cats relate to a list of Animals? Or how should a function that returns Cat relate to a function that returns Animal?

Depending on the variance of the type constructor, the subtyping relation of the simple types may be either preserved, reversed, or ignored for the respective complex types. In the OCaml programming language, for example, "list of Cat" is a subtype of "list of Animal" because the list type constructor is covariant. This means that the subtyping relation of the simple types is preserved for the complex types.

On the other hand, "function from Animal to String" is a subtype of "function from Cat to String" because the function type constructor is contravariant in the parameter type. Here, the subtyping relation of the simple types is reversed for the complex types.


## Contents

- 1. Formal definition
  - 1.1. C# examples
- 2. Arrays
  - 2.1. Covariant arrays in Java and C#
- 3. Function types
- 4. Inheritance in object-oriented languages
  - 4.1. Covariant method return type
  - 4.2. Contravariant method parameter type
  - 4.3. Covariant method parameter type
  - 4.4. Avoiding the need for covariant parameter types
  - 4.5. Summary of variance and inheritance
- 5. Generic types
  - 5.1. Declaration-site variance annotations
    - 5.1.1. Interfaces
    - 5.1.2. Data
    - 5.1.3. Inferring variance
  - 5.2. Use-site variance annotations (wildcards)
  - 5.3. Comparing declaration-site and use-site annotations
- 6. Etymology


## Formal definition

A type system may have a notion of a type order, or an ordering of types, possibly denoted by `<=`, which orders the types from more specific to more generic.

Then a typing rule or a type constructor is:
- _covariant_ if it preserves this ordering of types
- _contravariant_ if it reverses this ordering
- _bivariant_ if both apply: `I<A> <= I<B>` and `I<B> <= I<A>` simultaneously
- _invariant_ (nonvariant) if neither applies.


## Formal definition

Suppose A and B are types, and I<U> denotes application of a type constructor I with type argument U. Within the type system of a programming language, a typing rule for a type constructor I is:

covariant if it preserves the ordering of types (≤), which orders types from more specific to more generic: If A ≤ B, then I<A> ≤ I<B>;
contravariant if it reverses this ordering: If A ≤ B, then I<B> ≤ I<A>;
bivariant if both of these apply (i.e., if A ≤ B, then I<A> ≡ I<B>);[1]
variant if covariant, contravariant or bivariant;
invariant or nonvariant if not variant.
The article considers how this applies to some common type constructors.
