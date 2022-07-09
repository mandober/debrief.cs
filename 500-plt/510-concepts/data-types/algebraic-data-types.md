# Algebraic data types

Haskell's `data` construct.

```hs
data TimeInfo = AM | PM | H24                     -- enum
data Package = P String Author Version Date       -- record
data Maybe α = Nothing | Just α                   -- enum with payload
data [α] = [] | α : [α]                           -- recursive
data Tree α = Leaf α | Node (Tree α) (Tree α)     -- recursive
```

Features:
- Common structure
- Parameterization over types
- Multiple data constructors (alternatives, variants)
- Multiple fields per data constructor
- Recursive (recursively-defined) data types


By parameterizing algebraic types, we create generic types.

Polymorphism refers to the phenomenon of something taking many forms. In Haskell, there are two kinds of polymorphism: parametric and ad-hoc (first described by Strachey in Fundamental Concepts in Programming Languages, 1967).
