# Row Polymorphism

https://en.wikipedia.org/wiki/Row_polymorphism

In programming language theory and type theory, 
row polymorphism is a kind of polymorphism 
that allows one to write programs 
that are polymorphic on record field types 
(also known as rows, hence the name). 

A row-polymorphic type system and proof of type inference was introduced by Mitchell Wand.

Q: What is the type of an object?
A: It is the set of messages it can send and receive.
Q: How can we say this mathematically?
A: Using recursive types, existential types, and records.

Here is an interface definition.

```cpp
interface Point {
  pos: int
  move: int -> Point
}
```

Its possible type-theoretic definition could be:   

Point = µP.Rec { pos : int; move : int → P }

where `µ` is the fixpoint operator that introduces recursion (recursive type), i.e. (and so on):

Point = µP.Rec { pos : int; move : int → µP.Rec { pos : int; move : int → P } }

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
