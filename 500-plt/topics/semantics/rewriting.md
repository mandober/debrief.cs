# Rewriting

https://en.wikipedia.org/wiki/Rewriting

In mathematics, computer science, and logic, *rewriting* covers a wide range of methods of replacing subterms of a formula with other terms. Such methods may be achieved by rewriting systems (aka rewrite systems, rewrite engines, or reduction systems).

In its most basic form, a **rewriting system** consist of a set of objects, plus relations on how to transform those objects. A rewriting system is usually used to signify a set of rules that may be applied in either direction, while a **reduction** refers to a rewriting process that uses the rules in one direction only.

Rewriting can be *non-deterministic*. One rule to rewrite a term could be applied in many different ways to that term, or more than one rule could be applicable. Rewriting systems then don't provide an algorithm for changing one term to another, but a set of possible rule applications. However, when combined with an appropriate algorithm, a rewrite system can be viewed as a declarative programming language or a computer program. Many theorem provers and FPLs like Haskell are based on term rewriting inherited from using lambda calculus as a model of computation.

## Contents

- 1. Example cases
  - 1.1. Logic
  - 1.2. Arithmetic
  - 1.3. Linguistics
- 2. Abstract rewriting systems
- 3. String rewriting systems
- 4. Term rewriting systems
  - 4.1. Formal definition
  - 4.2. Termination
  - 4.3. Higher-order rewriting systems
  - 4.4. Graph rewriting systems
- 5. Trace rewriting systems
- 6. Philosophy


## Example cases

### Logic

In logic, the procedure for obtaining the Conjunctive Normal Form (CNF) of a formula may be implemented as a rewriting system with these rules:

```hs
        ¬¬A ⟶ A                    -- double negation elimination
   ¬(A ∧ B) ⟶ ¬A ∨ ¬B              -- De Morgan's law: NOT over AND
   ¬(A ∨ B) ⟶ ¬A ∧ ¬B              -- De Morgan's law: NOT over OR
(A ∧ B) ∨ C ⟶ (A ∨ C) ∧ (B ∨ C)    -- right distributivity
A ∨ (B ∧ C) ⟶ (A ∨ B) ∧ (A ∨ C)    -- left distributivity
```

The rule for left distributivity is needed since commutativity `A ∨ B = B ∨ A` cannot be turned into a rewrite rule. A rule like `A ∨ B → B ∨ A` would cause the rewrite system to be nonterminating.

In the rules above, the symbol `⟶` (or any arrow-like symbol like `→`, `↝`) indicates that an exp matching the LHS of the rule can be rewritten with the exp matching the RHS. The symbols `A`, `B` and `C` denote arbitrary logic formulae.

In a rewriting system like this one, each rule is chosen so that the left side is equivalent to the right side. Consequently rewriting subexpressions from left to right maintains logical consistency and value of the entire expression.

### Arithmetic

Term rewriting systems can be employed to compute arithmetic operations on natural numbers. To this end, each such number has to be encoded as a term.

The simplest encoding is the one used in the Peano axioms, based on the constant 0 and the successor function `S`.

The following term rewriting system can then be used to compute sums over the natural numbers:
- m +   0 ⟶ m           (1)
- m + S n ⟶ S (m + n)   (2)

By applying these identities, we can calculate the sum of 1 and 2:

```
2 + 1 =
= S (S 0) + S 0     encoded numerals
= S (S (S 0) + 0)   by (2)
= S (S (S 0))       by (1)
```
