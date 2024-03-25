# Algebraic Data Types


Algebra | Logic    | Type
--------|----------|----------------
0       | ⊥        | `Void`
1       | ⊤        | `()`
a + b   | a ∨ b    | `Either a b`
a × b   | a ∧ b    | `(a, b)`
bᵃ      | a => b   | `a -> b`
a = b   | a <=> b  | `a ~ b`, ≅, iso



logic                     | program       
--------------------------|---------------
proposition               | type          
proof                     | term          
assumption                | variable      
discharged assumption     | bound variable
non-discharged assumption | free variable 
implication               | function type 
conjunction               | product type  
disjunction               | sum type      
absurdity                 | bottom type   



Math           | Logic            | Haskell
---------------|------------------|-----------------------
               |                  |
set            | proposition      | type
∅              | false  a => ⊥    | `Void` type
{∅}            | true   ⊥ => ⊥    | `()` type
function       | implication, =>  | function type, ->
union          | conjunction, ∧   | Product type
intersection   | disjunction, ∨   | Sum type
               |                  |
               |                  |
               |                  |

¬a: a -> ⊥
F : a -> ⊥
¬T: T -> ⊥
F : T -> ⊥
T : ⊥ -> ⊥ -> ⊥


0           Void                            p -> False
1           unit (a bare ctor)              p
+           sum type                        or, disjunction
×           product type                    and, conjunction
^           exponential a -> b <=> bᵃ       implication
​​

data Void                 0
data Unit = Unit          1
data Bool = T | F         2
(a, b)                    a × b
Either a b                a + b





- ()            ~ 1
- (a, b)        ~ a * b
- Either a b    ~ a + b
- a -> b        ~ bᵃ
- (a, Int)

- Either (a, b) (c, d)          ~ ab + cd
- Either a (Either b (c, d))    ~ a + b + cd

- a -> b -> c ≅ (a, b) -> c     ~ (cᵇ)ᵃ = (cᵃ)ᵇ = c^(a*b) = cᵃ + cᵇ

- Either (a, ()) ((), d)          ~ ab + cd

- Either (a b) (a c)            ~ ab + ac

data Maybe a = Nothing | Just a                     M = 1 + a
data List a = Nil | a : List a                      L = 1 + L × a
data List a = Nil | (a, List a)                     L = 1 + L × a
data List a = Nil | (List a, a)                     L = L × a + 1
data Tree a = Nil | Branch (a, Tree a, Tree a)      T = 1 + a × T × T
