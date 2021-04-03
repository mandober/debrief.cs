# Algebraic data type

https://en.wikipedia.org/wiki/Algebraic_data_type

- algebraic data type
- sum type
- product type
- exponential type
- dependent type


## Introduction

Algebraic Data Types (SDT for Structured Data Types)


Most FPLs support combining the component types in two fundamental ways that correspond to particular arithmetic and logic operation
- sum types: multiplication, logical disjunction
- product types: addition, logical conjunction

* Values of a sum type are grouped into compartements, called *variants*.
* The value of a particular variant is created using the variant's *constructor* function.
* Each variant must have its own, distinct, constructor, and each may optionally take a number of argument types as data fields.
* The set of all possible values of a sum type is the set-theoretic sum, i.e. the disjoint union (identical types but diff variants are still counted twice) of the sets of all possible values of its variants.

* Enumerated types are a special case of sum types in which the constructors take no arguments, as exactly one value is defined for each constructor.

Values of algebraic types are analyzed with pattern matching, which identifies a value by its constructor or field names and extracts the data it contains.

Algebraic data types were introduced in Hope, a small functional programming language developed in the 1970s at the University of Edinburgh.

, also called *data constructor*,


https://en.wikipedia.org/wiki/Algebraic_data_type#Theory


## Related and simlar types

While product types are supported by almost all PLs, going under many different names, sum types are surprisingly absent in imperative PLs.

The C language has a `union` type that resembles a sum type, but it requires manual tag management (where the tag identifies the actual value occupying a union). The languages descending from C largly choose to not implement it, but it is very useful construct for implementing sum types in PLs built on top of C. The `union`'s main characteristics is in the fact that it names a set of types that could occupy a certain space; naturally, only a single type can occupy that space at a time. However, C is weakly typed PL, so it offers its famous mechanism to interpret one type as another, completely arbitrary, type, which can be applied to a `union`'s contents, adding to its functionalities.

Another C's construct that is related to sum types is `enum`, which resambles sum types up to bare data ctors only, for it doesn't support associated fields. `enum` is more of a way to name a set of related constants.



## Sum types

Sum types encode logical disjunction (OR) on the type level. Sum types are encountered as tagged unions, enumerations, coproducts, variants; the important property, unlike enums in C-lang, is that each member variant may carry heterogeneous payload (value). They are used when a value may be in one out of several different variants or states. They are ideal for modelling state machines. Consider modelling a JSON datatype - in a language with sum types it would be very easy to describe all the different variants a JSON value could have.

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
