# Abstract rewriting system

https://en.wikipedia.org/wiki/Abstract_rewriting_system



------------------------------------------------------------------------------

below is from `Interaction Combinators`, Yves Lafont, 1997
https://www.sciencedirect.com/science/article/pii/S0890540197926432?via%3Dihub

What are the fundamental laws of computation? The answer depends on the choice of a particular *model of computation*:

* **Turing machines** imitate the mathematician writing symbols on paper. There are many variants, for instance *register machines* and *stack machines*. This notion has the advantage of being simple and powerful at the same time, but it models only sequential computation.
* **Cellular automata** can be seen as discrete approximations of physical processes. This notion models distributed computation, but with a global synchronization of transitions.
* **Rewrite systems** are closer to the algebraic mathematical tradition, since *a rewrite rule is just an oriented equation*.

An interesting example of a rewrite system is the λ-calculus, with only one rewrite rule:

(λx.u)v -->> v[x:=u]      sometimes denoted: (λx.u)v -->> v[u/x]

lambda calculus is Turing-complete and it has a nice logical interpretation, at least in the typed case.

However, the rule is more complicated than it seems: is it reasonable to consider *substitution as an atomic operation*? In this sense, a more primitive system is CL, with 2 rewrite rules:

`Kxy -->> x`, `Sxyz -->> xz(yz)`

But again, is it reasonable to consider *erasing* (K discards the second arg) and *duplication* (S duplicates the first arg) as atomic operations?

...

------------------------------------------------------------------------------
