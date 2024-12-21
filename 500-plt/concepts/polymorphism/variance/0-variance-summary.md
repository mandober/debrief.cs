# PLT :: Topics :: Variance :: Summary

- Variance is about answering the question: If we can transform an `a` into a `b`, does it imply we can also transform a `T a` into a `T b` (where `T` is a type ctor like List, Set, Maybe, IO, etc.)?

- If we can transform an `a` into a `b`, does it imply we can also transform a `List a` into a `List b`?
- If we have a function `a -> b`, can we lift it into function `[a] -> [b]`?
- Type ctors may have subtyping relations that depend on the subtyping relations of their type parameters.
- The manner in which a type parameter's subtyping affects the subtyping of the type ctor is called variance.
- Variance is only sound for immutable data types.


- In Haskell, variance is a property of a type ctor in relation to one of its type parameters.
