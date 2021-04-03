Type Theory and Functional Programming
by Simon Thompson, 1999


# Introduction to Logic

Logic is the science of argument. The purposes of formalization of logical systems are manifold.

* The formalization gives a clear characterisation of the valid proofs in the system, against which we can judge individual arguments, so sharpening our understanding of informal reasoning.

* If the arguments are themselves about formal systems, as is the case when we verify the correctness of computer programs, the argument itself should be written in a form which can be checked for correctness. This can only be done if the argument is formalized, and correctness can be checked mechanically.

* As well as looking at the correctness or otherwise of individual proofs in a formal theory, we can study its properties as a whole. For example, we can investigate its *expressive strength*, relative to other theories, or to some sort of meaning or semantics for it. This work, which is predominantly mathematical in nature, is called *mathematical logic*.


Our aim is to provide a formal system in which arguments for the validity of particular sentences can be expressed. There are a number of different styles of logical system, but we look at *natural deduction systems* for propositional and predicate logic.


## Propositional Logic

Propositional logic formalises arguments which involve the *logic connectives* such as 'and', 'or', 'not', 'implies' and so on. Using these connectives we build *complex propositions* starting from the *propositional variables* or *atomic propositions*.


The formal syntax is given by stating that a formula is either
- a *propositional variable* X₀, X₁, X₂, ... 
- a *compound formula* of the forms (where A and B are *formulas*):
  - A ∧ B
  - A ⇒ B
  - A ∨ B
  - ⊥
  - A ⇔ B
  - ¬A

These variables (A, B, etc.) are in the *metalanguage* which is used to discuss the *object language* introduced by the syntax definition above.

There are two parts to the description of a logical system:
* We introduced language in which the assertions or *propositions* are written
* we must now describe what are the *valid arguments*

> The **valid arguments** are called the *proofs* or *derivations* of the system.

The general **form of an argument** is to *infer a conclusion* on the basis of some (or possibly no) *assumptions*. Larger *derivations* are built up *inductively* from smaller ones by the application of *deduction rules*.


## Deduction rules

Deduction rules
- Assumption rule
- ∧ Introduction: `∧I`
- ∧ Elimination: `∧E₁`, `∧E₂`




### Assumption rule

The simplest derivations are introduced by **the rule of assumptions**, which states that any formula `A` can be derived from the assumption of `A` itself.

* The proof `A` is a proof of the formula `A` from the assumption `A`.


### ∧ Introduction rule

From proofs of `A` and `B` we can infer `A ∧ B` by **the rule of conjunction introduction**.

A   B
----- (∧I)
A ∧ B

* The assumptions upon which the proof of `A ∧ B` depends are those of the proofs of `A` and `B` combined.

The rule states that we can introduce a conjunction when we have proofs of its two component halves.

### ∧ Elimination rule

Conversely, we have a rule which states *what we can infer* on the basis of a conjunction; in other words it tells us *when we can eliminate a conjunction*.

From a proof of `A ∧ B` we can infer both `A` and `B` by the two rules of conjunction elimination.

A   B               A   B
----- (∧E₁)         ----- (∧E₂)
  A                   B

The index indicates which part of a conjunction *remains*; sometimes it's indicated as l or r, for left/right.

* The assumptions upon which the proofs of `A` and `B` depend are those of
the proof of `A ∧ B`.


### Implication

The `A ⇒ B` means that expressing `A` implies `B`, or that we can deduce `B` from `A`. We an conclude `A ⇒ B` when we have a *deduction of `B` assuming `A`*.

The *assumptions* upon which this new proof of `A ⇒ B` depends are all those on which the proof of `B` depends, **except the assumption `A` itself**.

The reason that we no longer depend upon A is that A has become the **hypothesis** in the formula A ⇒ B. This expresses through a formula of the logic that we can deduce B from A. This is reinforced by the elimination rule for ⇒ which states that given, both, proofs of A and A ⇒ B, we can infer B.


### ⇒ Introduction

From a proof of the formula B, which may depend upon the assumption A amongst others, we can infer the formula `A ⇒ B` *from the same set of assumptions with A removed*.

  [A]¹
   ⋮
   B
------ (⇒I)¹
A -> B

The square brackets around A indicate that all occurrences of the assumption A in the proof of B are to be *discharged*. When there's more than one such rule, superscript indicates the link between the discharged assumption and the instance of the rule discharging it.

It should be stressed that **the proof of the formula B need not contain the assumption A** for this rule to be applied; e.g. `B ⇒ (A ⇒ B)`.


### ⇒ Elimination

From proofs of the formulas `A` and `A ⇒ B` we can infer the formula `B`.

The assumptions upon which the proof of `B` depends are those of the proofs of `A` and `A ⇒ B` combined.

A  A ⇒ B
--------- (⇒E)
    B
