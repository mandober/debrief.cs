# Haskell :: Concepts :: Functors :: Variance

- Variance in general
  - Type system variance
- Variance forms
  - Covariance
  - Contravariance
  - Bivariance
  - Invariance or nonvariance
- Positive and negative positions

## Variance in general

Variance is a feature of a type system of a programming language. A type system is called *variant* if any forms of variance may occur. Otherwise, a type system is called *invariant* or *nonvariant*.

## Variance forms

Within a type system, variance occurs in several forms:
- *covariance* preserves the ordering of types (from specific to generic)
- *contravariance* reverses the ordering of types (from generic to specific)
- *bivariance* is when both co/contravariance apply at the same time
- *invariance* or *nonvariance* is the absence of variance




Variance is associated to a type ctor's type parameters. Each type parameter has a specific variance.

Most types that are functors make for covariant functors. The function type is a canonical example of a type that is both covariant and contravariant. Namely, the function type `a -> b` is contravariant in the input type, i.e. in the type parameter `a`, and covariant in the return type, i.e. in type parameter `b`.

Howeveer, the function type `a -> a` is invariant since the type parameter `a` occurs in both the positive and negative position.



## Positive and negative positions
