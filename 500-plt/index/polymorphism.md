

Types of polymorphism
- parametric polymorphism (@compiletime)
  - theorems for free
  - row polymorphism
    - product type polymorphism
    - tuple polymorphism
    - record polymorphism
  - rank-N polymorphism
- ad hoc polymorphism (@runtime)
  - overloading
- subtype polymorphism
  - row polymorphism, ρ <: ρ′
  - subtype à la OO (@runtime), T <: T′
  - product type subtyping, P <: P′
  - sum type subtyping, S <: S′
- coercion polymorphism
  - type equality
  - type coercion
  - type casting


## subtyping relation

generality vs specificity
+ {more,less} {specific,general}
- more general ⇔ less specific
- more specific ⇔ less general

more specific | more general

     specific <: general
     concrete <: generic

more_specific <: less_specific
more_specific <: more_general

more_specific == less_general
more_general  == less_specific

less_general  == more_specific


more-specific <: more-general
less-specific <: more-specific

(more specific) int <: ∀a.a

## specificity vs generality

less general  | 
more general  | less general
more specific | less specific
more concrete | less concrete 
more generic  | less generic


specific vs general
     ∀a.a =  ∀b.b
     ∀a.a =  ∀a.a
     ∀a.a <: ∀a.a
      int <: ∀a.a
     bool <: ∀a.a
        ⊥ <: int (?)
      int <: ⊤ (?)
      int <: 𝒰 (?)
      int ≅  a → int
  a → int <: int
int → int <: ∀a.a → a


(𝟙, a) ≅ a
(a, 𝟙) ≅ a
(𝟙, a) ≅ (a, 𝟙) ≅ a
(a, b) ≅ (b, a)

∀a.(a, int) <: ∀ab.(a, b)


       int <: ∀a.a
     [int] <: ∀a.[a]
   Set int <: Set ∀a.a
 Maybe int <: Maybe ∀a.a
 int → int <: ∀a.a → a
int → bool <: ∀a.a → b
     [int] <: int
 a → [int] <: a → int



```hs
-- product
data P1 = P1 Bool String
data P2 = P2 Bool String Int
P2 <: P1 (?)

-- sum
data S1 = V1 Int | V2 Bool String
data S2 = V1 Int | V2 Bool String | V3 Float Float Float
-- S1 is MORE general then S2
S1 <: S2 (?)

-- S1 is LESS specific then S2

-- S2 is MORE specific then S1
-- S2 is LESS general then S1
```
