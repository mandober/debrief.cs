# Parametricity

## Equality is not parametrically polymorphic

To define an equality function for an ADT
- both values must belong to the same variant (alternative)
- the corresponding fields must be equal

We can define the equality for parametrized datatypes, but for that, we must know the equality functions for the arguments. In a way, the equality function depends on itself (actually depends on the equality function of the underlying type).

```hs
data Maybe α = Nothing | Just α

-- ≜≜ denotes (==) on Maybe
-- ≛≛ denotes (==) on α

(≜≜) :: ∀α.(α → α → Bool) → (Maybe α → Maybe α → Bool)
(≜≜) (≛≛) Nothing  Nothing  = True
(≜≜) (≛≛) (Just x) (Just y) = x ≛≛ y
(≜≜) (≛≛) _        _        = False
```

We know, even if only intuitively, what it means for two types to be equal, i.e. for their values to be equal. However, as a consequence of the **Parametricity Theorem** (Reynolds, 1983), a *parametrically polymorphic* definition for equality is impossible.

```hs
(==) :: ∀a. a → a → Bool
x == y = ???
```
