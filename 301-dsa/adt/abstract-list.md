# Abstract list

https://en.wikipedia.org/wiki/List_(abstract_data_type)

An **abstract list** (list ADT) or an abstract sequence is an abstract data type that represents a countable number of ordered values.

An instance of a list is a computer representation of the mathematical concept of a finite sequence (or a tuple). Programming languages that support lazy evaluation can represent an infinite sequance as well using an infinite list, sometimes called a *stream*.

Abstract lists are a basic instance of a container, as they are meant to contain other values. In fact, they can contain any number of values, including none. If the same value occurs multiple times, each occurrence is considered distinct.

The term "list" is overloaded as it also stands for concrete implementations of the list ADT, particularly linked list and array.

In type theory and functional programming, abstract lists are usually defined inductively by two operations: `nil` that marks/produces the empty list, and `cons`, which, given an item and a list, produces a new list with a supplied item prepended.



The abstract list type L with elements of some type E (a monomorphic list) is defined by the following functions:

nil: () → L
cons: E × L → L
head: L → E
tail: L → L

with the axioms:

head (cons (e, l)) = e
tail (cons (e, l)) = l

for any element e and any list l. It is implicit that

cons (e, l) ≠ l
cons (e, l) ≠ e
cons (e1, l1) = cons (e2, l2) if e1 = e2 and l1 = l2

Note that `head (nil ())` and `tail (nil ())` are not defined.

These axioms are equivalent to those of the *abstract stack data type*.


In type theory, the above definition is more simply regarded as an inductive type defined in terms of constructors: nil and cons.

In algebraic terms, this can be represented by the transformation    
`1 + E × L → L`

The `head` and `tail` are then obtained by pattern matching on the `cons` constructor and separately handling the `nil` case.
