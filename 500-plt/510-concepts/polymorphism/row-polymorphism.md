# Row Polymorphism

https://en.wikipedia.org/wiki/Row_polymorphism

**Row polymorphism** is the support for polymorphic records. This allows writing programs that are polymorphic in the types of fields of a record.

Row polymorphism is also called *structural records*. The name of this type of polymorphism comes from an alternative name for record fields ("rows")

A row-polymorphic type system and proof of type inference was introduced by Mitchell Wand.

## Introduction

In general, regarding the way it distinguishes compound types like records, type systems are either nominal or structural. *Nominal type systems* only respect names - the fact that two data types may be completely identical apart from their name, makes all the difference they need to judge the datatypes as distinct. *Structural types systems* are opposite: to them names make no difference, they only care about the structure. Unlike name comparison, which is completely binary (two names are either equal or not, tertium not datur), structural comparison is more granular.

A structural type system could support row polymorphism by forgoing the notion of strict type equality with type compatiblity. Such a type system would allow using the same operation on compatible rows as determined by the inclusion (subset/superset) relation.

An example of row polimorpic records (field set):

```hs
-- two structurally compatible record instances, r1 ⊂ r2
r1 = {x: 1.0, y: 2.0}
r2 = {x: 2.3, y: 4.1, z: -2.7}

-- function that references only x and y fields
op rcd = rcd.x + rcd.y

-- this funciton can operate on both records
r = op r1 + op r2
```

The way these two instances (each of its record type) are determined compatible usually depends on all the types of indivudual fields in a field set, and not on concrete field names used - after all, it is not a nominal system.

This example was too nice, one record was clearlt a subset of the other, so both are applicable arguments of the same method. However, some rows have a more intricate configuration of types, which make row polymorphism implement new approaches and comparison mechanisms.

## Recursive rows

The type of an object is the set of messages it can send and receive, which may be expressed mathematically using recursive types, existential types, and records. Here is an interface definition.

```cpp
interface Point {
  pos  : int
  move : int -> Point
}

// a possible type-theoretic definition
P = µP.Rec {
  pos  : int
  move : int -> P
}
// where µ is the fixpoint operator that introduces recursion.
// Unfolding this recursive type:
P = µP.Rec {
  pos  : int
  move : int ->
    µP.Rec {
      pos  : int
      move : int ->
        // ...
```

This lets us model the idea that an object can return another object that has the same interface. It seems like we can now model OO, if we also add subtyping on records, that is, if `Rec {a : τ, b : σ, c : ρ}` <: `Rec {a : τ, b : σ}` such that the RHS object is a subtype of the LHS one.


## The Loss of Information Problem

Consider the following function:

foo :: Rec{a : int} → int × Rec{a : int}
foo = λx. (x.a, x)

let (n, r) = foo({a:5, b:true})

The last expr shows that the variable `r` would have the less-precise type, i.e. `Rec{a : int}` because the `b` field was  forgotten. This is the famous *loss-of-information problem*.

Row polymorphism was invented to address the loss of information problem. The core idea is to add a type variable that repr the extra fields:

foo :: ∀r : row.(r/a) ⇒ Rec{a : int|r} → int × Rec{a : int|r}
foo = λx. (x.a, x)

read as: For all the rows `r` lacking a field `a`, we have the function type that takes records with the field `a` of type `int` and some other fields captured (described) by `r`, and returns an `int` and another record of the same (input) type.

## Basic Operations on Records

* Field selection
  `selectₗ :: ∀α : type. ∀r : row.(r/l) ⇒ Rec{l : α|r} → α`
* Field removal
  `removeₗ :: ∀α : type. ∀r : row.(r/l) ⇒ Rec{l : α|r} → Rec{r}`
* Record extend
  `addₗ    :: ∀α : type. ∀r : row.(r/l) ⇒ α → Rec{r} → Rec{l : α|r}`




## Refs

* Functional Reporting - Edward Kmett
About row polymorphism in HAskell
http://ekmett.github.io/presentations/Functional%20Reporting.pdf
