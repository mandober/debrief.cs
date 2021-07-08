# 2. Math Preliminaries

2.1 Sets, Relations, Functions
2.2 Ordered Sets

An n-place or *n-ary relation* on a collection of sets `S₁, S₂, …, Sₙ` is a set `R ⊆ S₁ × S₂ × … × Sₙ` of tuples of elements from `Sᵢ`. The elements `s₁ ∈ S₁` through `sₙ ∈ Sₙ` are related by `R` if the n-tuple `(s₁, …, sₙ)` is in `R`.

```hs
rel :: Set a -> Set b -> Set c -> Set (a, b c)
rel a b c = (a,b,c)

predicate :: Set a -> Bool
predicate p a = p a
```

A one-place relation on a set `S` is called a *predicate* on `S`. We say that `P` is true of an element `s ∈ S` if `s ∈ P`. To emphasize this intuition, we often write `P(s)` instead of `s ∈ P`, regarding `P` as a function mapping elements of `S` to truth values.
