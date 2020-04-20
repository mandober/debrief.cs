# Algebraic data type

https://en.wikipedia.org/wiki/Algebraic_data_type

In computer programming, especially functional programming and type theory, an **algebraic data type** (ADT) is a compound type formed by combining other types in two fundamental ways, thereby producing sum and product types.

**Sum types** encode logical disjunction (OR) on the type level. Sum types are encountered as tagged unions, enumerations, coproducts, variants; the important property, unlike enums in C-lang, is that each member variant may carry heterogeneous payload (value). They are used when a value may be in one out of several different variants or states. They are ideal for modelling state machines. Consider modelling a JSON datatype - in a language with sum types it would be very easy to describe all the different variants a JSON value could have.

A common example of ADT is a list. A list type is a sum type with two variants, `Nil` for an empty list and `Cons x xs` for appending a new element `x` to a list `xs`, creating a new list (because mutation). Here's a declaration in Haskell:

```hs
data List a = Nil | Cons a (List a)
-- or
-- nil as a pair of brackets, cons as colon (parens due to prefix position)
data List a = []  | (:)  a (List a)
-- colon as infix sheds parens
data List a = []  | a :    (List a)
-- type ctor may have the same name/symbol as a data ctor
data [] a   = []  | a :    (a : [])
-- a : [] (consing `a` to list) yields [a] (list of a's)
data [] a   = []  | a :    [a]
--   unary type ctor    [] a        of kind * -> *
-- nullary data ctor    [] :: [t]
--  binary data ctor   (:) :: a -> [a] -> [a]
```

**Product types** encode logical conjunction (AND) on the type level. Values of a product type typically contain several values, called fields. Unlike a sum type where you must specify only one variant (field), to construct a new product-type value you must specify values for all its fields. Also unlike sum types, product types are very well represented across the PLs, they are seen as tuples, records, dictionaries, etc. The set of all possible values of a product type is the set-theoretic *Cartesian product*, that is a product of all possible values of its field types.

Values of a sum type are typically grouped into several classes, known as **variants**. A value of a variant (sub)type is usually created with a function-like constructor. Each variant has its own constructor, which takes a certain number (may be zero or more) of types as arguments (it is a ctor that consumes types). The set of all possible values a sum type may have can be calculated by summing all the possible values of its variant types. For example, a sum type whose first variant is a boolean (2 distinct values) and the second is a u8 (256 distinct value), has 2+256=258 possible distinct values; the "disjoint" term is involved if some of the values overlap, in which case they are singled out, like in a union of overlapping sets.

An **enumerated type**, a special case of sum types, is a type with nullary constructors. The typical representative is a Boolean, which has two ctors and neither takes (type) arguments:

```hs
data Bool = True | False
```

Values of algebraic types are analyzed with *pattern matching*, which identifies a value primarily by matching a pattern against the constructor, destructuring the data within on match.
