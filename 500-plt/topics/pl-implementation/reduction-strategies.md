# PLT :: INDEX :: Reduction strategies

In a *term rewriting system* a *rewriting strategy* specifies, out of all the reducible subterms (redexes), which one should be reduced (contracted) within a term.

One-step strategies for term rewriting include:
- leftmost-innermost: in each step the leftmost of the innermost redexes is contracted, where an innermost redex is a redex not containing any redexes
- leftmost-outermost: in each step the leftmost of the outermost redexes is contracted, where an outermost redex is a redex not contained in any redexes
- rightmost-innermost, rightmost-outermost: similarly

Many-step strategies include:
- parallel-innermost: reduces all innermost redexes simultaneously. This is well-defined because the redexes are pairwise disjoint.
- parallel-outermost: similarly
- Gross-Knuth reduction, also called full substitution or Kleene reduction: all redexes in the term are simultaneously reduced
- Parallel outermost and Gross-Knuth reduction are hypernormalizing for all almost-orthogonal term rewriting systems, meaning that these strategies will eventually reach a normal form if it exists, even when performing (finitely many) arbitrary reductions between successive applications of the strategy.

Stratego is a domain-specific language designed specifically for programming term rewriting strategies.
