# Recursive data type

https://en.wikipedia.org/wiki/Recursive_data_type
https://en.wikipedia.org/wiki/Mutual_recursion#Data_types
https://en.wikipedia.org/wiki/Recursion_(computer_science)#Recursive_data_structures_(structural_recursion)
https://en.wikipedia.org/wiki/Course-of-values_recursion

In type theory, a recursive type has the general form `μα.T` where the type variable `α` may appear in the type `T` and stands for the entire type itself.

For example, the natural numbers may be defined by the Haskell datatype:

data Nat = Zero | Succ Nat

In type theory: `nat = μα.1+α` where the two arms of the sum type represent the Zero and Succ data constructors. Zero takes no arguments (thus represented by the unit type) and Succ takes another Nat.

There are two forms of recursive types that differ in how the terms are introduced and eliminated:
- isorecursive types
- equirecursive types

Efficient Interpretation by Transforming Data Types and Patterns to Functions
