# Variance

https://www.wikiwand.com/en/Covariance_and_contravariance_(computer_science)
https://www.wikiwand.com/en/Subtyping

Variance refers to how subtyping between more complex types relates to subtyping between their components.

Depending on the variance of the type constructor, the subtyping relation of the simple types may be either preserved (covariant), reversed (contravariant), or ignored (invariant) for the respective complex types.

In the OCaml programming language, for example, "list of Cat" is a subtype of "list of Animal" because the list constructor is *covariant*. Meaning, the subtyping relation of the simple types are preserved for the complex types.

While "function from Animal to String" is a subtype of "function from Cat to String" because the function type constructor is *contravariant* in the argument type. Here the subtyping relation of the simple types is reversed for the complex types.

By making type constructors covariant or contravariant instead of invariant, more programs will be accepted as well-typed. On the other hand, programmers often find contravariance unintuitive, and accurately tracking variance to avoid runtime type errors can lead to complex typing rules. In order to keep the type system simple and allow useful programs, a language may treat a type constructor as invariant even if it would be safe to consider it variant, or treat it as covariant even though that could violate type safety.


## Formal definition

A type system may have a notion of a type order, or an ordering of types, possibly denoted by `<=`, which orders the types from more specific to more generic.

Then a typing rule or a type constructor is:
- _covariant_ if it preserves this ordering of types
- _contravariant_ if it reverses this ordering
- _bivariant_ if both apply: `I<A> <= I<B>` and `I<B> <= I<A>` simultaneously
- _invariant_ (nonvariant) if neither applies.


## Covariant generics

Why not covariant generics?
http://conway.rutgers.edu/~ccshan/wiki/blog/posts/Unsoundness/

The PL `Dart` has a type system that features **covariant generics**, so it's unsound, people would conclude. The basic problem with covariant generics is that it lets you take a bowl of apples and call it a bowl of fruit. Which is fine if you are just going to eat from the bowl and you like all fruits, but what if you decide to contribute a banana to the fruit bowl? Someone taking from the bowl expecting an apple might choke. And someone else could call the same bowl 'a bowl of things', and then put a pencil in it, just to spite you.
