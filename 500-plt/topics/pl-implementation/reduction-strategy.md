# PLT :: Reduction strategy

https://en.wikipedia.org/wiki/Reduction_strategy

In rewriting, a **reduction or rewriting strategy** is a relation specifying a *rewrite* for each object or term, compatible with a given *reduction relation*.

Some authors use this term synonymously with the evaluation strategy, even though the latter is its subtype, but unlike reduction in general, evaluation always produces an expression that's considered a value in a given language.

## Definitions

Formally, for an 
*abstract rewriting system*, denoted `(A, ↝)`, 
a *reduction strategy*, denoted `↝ꜱ`, 
is a *binary relation* on `A` 
with `↝ꜱ ⊆ ↝﹢` 
where 
`↝﹢` is the transitive closure of `↝` 
(but not the reflexive closure).

In addition the normal forms of the strategy must be the same as the normal forms of the original rewriting system, i.e. for all `a`, there exists a `b` with `a ↝ b` iff `∃b′. a ↝ꜱ b′`.

A one step reduction strategy is one where {\displaystyle \to _{S}\subseteq \to }→S⊆→. Otherwise it is a many step strategy.

A deterministic strategy is one where {\displaystyle \to _{S}}→S is a partial function, i.e. for each {\displaystyle a\in A}a∈A there is at most one {\displaystyle b}b such that {\displaystyle a\to _{S}b}a→Sb. Otherwise it is a nondeterministic strategy.
