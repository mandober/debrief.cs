# Variance

https://www.wikiwand.com/en/Covariance_and_contravariance_(computer_science)

## Definition
Within the type system of a programming language, a typing rule or a type constructor is:
- **covariant** if it preserves the ordering of types (≤),
  which orders types from more specific to more generic
- **contravariant** if it reverses this ordering
- **bivariant** if both of these apply at the same time
  (i.e. both I<A> ≤ I<B> and I<B> ≤ I<A>)
- **invariant** or **nonvariant** if neither of these applies.


## Intro
Variance refers to how subtyping between more complex types relates to subtyping between their components.

Subtyping: if the type `Cat` is a subtype of `Animal`, then an expression of type `Cat` can be used wherever an expression of type `Animal` is required.

How should a list of Cats relate to a list of Animals? Or how should a function returning Cat relate to a function returning Animal?

Depending on the variance of the type constructor, the subtyping relation of the simple types may be preserved, reversed or ignored for the respective complex types.

OCaml example:
- "list of Cat" is a subtype of "list of Animal" because the list constructor is covariant. This means that the subtyping relation of the simple types are preserved for the complex types.
- "function from Animal to String" is a subtype of "function from Cat to String" because the function type constructor is contravariant in the argument type. So subtyping relation of simple types is reversed for the complex types.

A programming lang designer will consider variance when devising typing rules for language features such as arrays, inheritance, and generic datatypes.

By making type constructors covariant or contravariant instead of invariant, *more programs will be accepted as well-typed*.

On the other hand, programmers often find contravariance unintuitive, and accurately tracking variance to avoid runtime type errors can lead to complex typing rules.

In order to keep the type system simple and allow useful programs, a language may treat a type constructor as invariant even if it would be safe to consider it variant, or treat it as covariant even though that could violate type safety.

## C♯ examples

If `Cat` is a subtype of `Animal`, then:

- `IEnumerable<Cat>` is a subtype of `IEnumerable<Animal>`   
  The subtyping is preserved because IEnumerable<T> is *covariant* on T

- `Action<Animal>` is a subtype of `Action<Cat>`   
  The subtyping is reversed because Action<T> is *contravariant* on T

- Neither `IList<Cat>` nor `IList<Animal>` is a subtype of the other,
  because IList<T> is *invariant* on T.


The variance of a C♯ generic interface is declared by placing
- `out` (covariant) or 
- `in`  (contravariant) 
attribute on (zero or more of) its type parameters.

For each so-marked type parameter, the compiler conclusively verifies, with any violation being fatal, that such use is globally consistent. The above interfaces are declared as `IEnumerable<out T>`, `Action<in T>`, and `IList<T>`. Types with more than one type parameter may specify different variances on each type parameter. For example, the delegate type `Func<in T, out TResult>` represents a function with a contravariant input parameter of type `T` and a covariant return value of type `TResult`.

The typing rules for interface variance ensure type safety. For example, an `Action<T>` represents a first-class function expecting an argument of type `T`, and a function that can handle any type of animal can always be used instead of one that can only handle cats.




