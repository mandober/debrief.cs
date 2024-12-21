# Rank polymorphism (alternative)

Rank polymorphism enables code reuse on values of different ranks (dimensions).

Array-oriented programming languages (such as `APL` amd `J`) are primarily concerned with manipulation of array structures which includes:
- 0-rank scalars (scalar values)
- rank-1 vectors (sequences of values)
- rank-2 matrices (sequences of sequences)
- rank-3 cuboids (sequences of sequences of sequences)
- etc.

One of the consequences of this unification is the *rank polymorphism* - the type of polymorphism in which a scalar function is automatically lifted to act, element-wise, on a higher-ranked (higher-dimension) data structure such as array; and a scalar binary operator is lifted to act, point-wise, on pairs of arrays, and so on.

__NOTE__: Rank polymorphism is not to be confused with *Rank-N Polymorphism*, which is a type of polymorphism where quantifiers may appear to the left of arbitrarily many arrows.
