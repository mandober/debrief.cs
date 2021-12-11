# Parametric Polymorphism

https://en.wikipedia.org/wiki/Parametric_polymorphism

https://rosettacode.org/wiki/Parametric_polymorphism


**Parametric polymorphism** is a way for a function (or a data type) to accept different types of input values, while maintaining static type-safety.

Using parametric polymorphism, a function (or a data type) can be written *generically*, and only later, each time such a function is called, a value of input parameter is resolved.


Such functions and data types are called *generic functions* and *generic datatypes*, respectively, and form the basis of *generic programming*.

The important aspect of parametric polymorphism is that polymorphic function cannot inspect the value of its polymorphic parameter (otherwise it doesn't really work "forall" types).

Function that deal with the list structure can be polymorphic because for many list-manipulating operations, they need not know the list's exact type; it is sufficient that they are familiar with the inner-workings of list data structure, which is all they need to do their job, never caring about which exact type occupies the list. However, this is only the case for a certain set of operations on a list; these are the operations that rearrange or refer to a portion of a list's elements (head, tail, init, last, shuffle, take, drop, etc.). List polymorphic functions cannot compare elements, or do arithmetic with them, or any operation that requires knowing the type.

For example, a function `append` can joins two lists wothout knowing their type: if a type variable `a` denotes the type of list, then the signature of `append` is

The signature of `append` in ML:
```ml
forall a. [a] × [a] -> [a]
```

Haskell: `append` amd `Tree` datatype:
```hs
∀a => [a] -> [a] -> [a]

data Tree a = Empty | Node a (Tree a) (Tree a)
```

where `[a]` denotes the list with elements of type `a`. 
We say that the type of `append` is parameterized by `a` for all values of `a`. 

Parametric polymorphism may be contrasted with **ad hoc polymorphism**, in which a single polymorphic function can have a number of distinct, potentially heterogeneous, implementations, depending on the type of arguments to which it is applied. Thus, ad hoc polymorphism can generally only support a limited number of such distinct types, since a separate implementation has to be provided for each type.
