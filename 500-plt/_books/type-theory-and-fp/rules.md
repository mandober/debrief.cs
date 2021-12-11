Type Theory and Functional Programming - Simon Thompson, 1999


Deduction rules
- Assumption rule
- ∧ Introduction:    `∧I`
- ∧ Elimination: `∧E₁`, `∧E₂`
- ⇒ Introduction:   `⇒I`
- ⇒ Elimination:    `⇒E`




* Assumption rule

The proof `A` is a proof of the formula `A` from the assumption `A`.

* ∧ Introduction

A   B
----- (∧I)
A ∧ B


* ∧ Elimination

A   B               A   B
----- (∧E₁)         ----- (∧E₂)
  A                   B


* ⇒ Introduction

  [A]
   ⋮
   B
------ (⇒I)
A -> B


* ⇒ Elimination

A  A ⇒ B
--------- (⇒E)
    B
