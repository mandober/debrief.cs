# Generics

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

## Equality is not parametrically polymorphic

We know, even if only intuitively, what it means for two types to be equal, i.e. for their values to be equal. However, as a consequence of the **Parametricity Theorem** (Reynolds, 1983), a *parametrically polymorphic* definition for equality is impossible.

```hs
(==) :: ∀a. a → a → Bool
x == y = ???
```

We can define specific equality functions for many datatypes, following the intuitive algorithm that two values are equal iff both values belong to the same alternative, and the corresponding fields are equal.

A parametrically-polymorphic equality function is impossible, because equality needs to access the structure of the datatypes to perform the comparison.

An ad-hoc polymorphic equality function is possible via function overloading. In Haskell, we can overload the function (method) `==` in a type class.

```hs
class Eq a where
  (==) :: ∀a. a → a → Bool

instance Eq (Maybe a) where
  (==) :: ∀a. Maybe a → Maybe a → Bool
  Nothing == Nothing = True
  Just x  == Just y  = x == y
  _       == _       = False
```

## Structural polymorphism

Structural polymorphism or generic programming makes the structure of data types available for the definition of *type-indexed functions*.

Structural polymorphism (genericity) is a superset of parametric polymorphism, but a subset of ad hoc polymorphism (overloading).

ADTs in their, sums of products, canonical form are expressed structurally (generically) as Unit (no ctors), Sum (sum ADTs), Prod (product ADTs), etc. and then the functions are made that can operate on these representations; they work automatically for all datatypes in this generic form. Datatypes are implicitly deconstructed into a representation that involves Unit, Sum, and Prod. Primitive or abstract types might require special cases in the definition.

```hs
data Unit = Unit
data Sum  α β = Inl α | Inr β
data Prod α β = α ⨉ β
-- Generic equality
(==) ⟨a⟩ :: a -> a -> Bool
(==) ⟨Unit⟩     Unit    Unit        = True
(==) ⟨Sum α β⟩  (Inl x) (Inl y)     = (==) ⟨α⟩ x y
(==) ⟨Sum α β⟩  (Inr x) (Inr y)     = (==) ⟨β⟩ x y
(==) ⟨Sum α β⟩  _       _           = False
(==) ⟨Prod α β⟩ (x ⨉ y) (x' ⨉ y')   = (==) ⟨α⟩ x x' ⋀ (==) ⟨β⟩ y y'
-- for primitives
(==) ⟨Int⟩      x       y           = (==) ⟨Int⟩  x y
(==) ⟨Char⟩     x       y           = (==) ⟨Char⟩ x y
```

A function that is defined for the `Unit`, `Sum`, `Prod` types is "generic" or structurally polymorphic.

A *primitive type* is a datatype that can not be deconstructed because its implementation is hidden or because it cannot be defined by means of the Haskell data construct (such as Int, Char, (→), and IO). If a generic function is supposed to work for types containing a primitive type, it has to be defined for this primitive type.

*Abstract types*, where the programmer specifically hides the implementation, are treated in the same way as primitive types.
