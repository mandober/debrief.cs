# Binding and static scope

by Paul Downen

Video lecture (sound is horrible):
https://www.youtube.com/watch?v=nKzkvLxiZUk&list=PL0DsGHMPLUWW2LH62Z8W57vYz-BhqY4_r&index=1


## Syntax

We'll be dealing with a "Little Language" defined by the following grammar.

A grammar for abstract syntax:

```
v ∈ Var  := x, y, z, ...
b ∈ Bool := true | false
n ∈ Num  := 0 | 1 | 2 | ...
e ∈ Expr := x | n | b
          | e1 + e2
          | e1 < e2
          | if e1 then e2 else e3
          | let x = e1 in e2
```

Alternative, more user-friendly presentation of the same syntax:

```
e ∈ Expr := x | num[n] | bool[b]
          | plus(e1, e2)
          | less(e1, e2)
          | if (e1, e2, e3)
          | let (e1, x.e2)
```

The two grammar presentations contain exactly the same information, but one is more explicit and regular at the cost of being more verbose.

```
                    x ≡ x
                    n ≡ num[n]
                    b ≡ bool[b]
              e1 + e2 ≡ plus(e1; e2)
              e1 ≤ e2 ≡ less(e1; e2)
if e1 then e2 else e3 ≡ if (e1; e2; e3)
     let x = e1 in e2 ≡ let (e1; x.e2)
```


## Static Scope

Static variables should obey the following two (for now informal) laws:
1. The names of local variables are immaterial (they can be renamed without affecting the meaning of an expression).
2. The free variables of an expression remain the same after substitution (they cannot be captured by local bindings).


BV is the set of bound vars, FV is the set of free vars.

```
BV (x)               = {}
BV (num[n])          = {}
BV (bool[b])         = {}
BV (plus(e1; e2))    = BV (e1) ∪ BV (e2)
BV (less(e1; e2))    = BV (e1) ∪ BV (e2)
BV (if (e1; e2; e3)) = BV (e1) ∪ BV (e2) ∪ BV (e3)
BV (let (e1; x.e2))  = BV (e1) ∪ (BV (e2) ∪ {x})

FV (x)               = {x}
FV (num[n])          = {}
FV (bool[b])         = {}
FV (plus(e1; e2))    = FV (e1) ∪ FV (e2)
FV (less(e1; e2))    = FV (e1) ∪ FV (e2)
FV (if (e1; e2; e3)) = FV (e1) ∪ FV (e2) ∪ FV (e3)
FV (let (e1; x.e2))  = FV (e1) ∪ (FV (e2) \ {x})
```

## Substitution

The *capture-avoiding substitution* operation `e₁[e/x]` means to replace every free occurence of `x` appearing inside `e₁` with the expression `e`.

```js
x[e/x] = e
y[e/x] = y                [if y ≠ x]

num[n][e/x] = num[n]
bool[b][e/x] = bool[b]

plus(e₁; e₂)[e/x] = plus(e₁[e/x]; e₂[e/x])
less(e₁; e₂)[e/x] = less(e₁[e/x]; e₂[e/x])

if (e₁;e₂;e₃) [e/x] = if (e₁[e/x]; e₂[e/x]; e₃[e/x])
let (e₁; x.e₂)[e/x] = let (e₁[e/x]; x.e₂)
let (e₁; y.e₂)[e/x] = let (e₁; y.e₂[e/x])       [if y ≠ x and y ∉ FV(e)]
```

Note that substitution is a partial function, because it might not be defined when substituting into a `let`: if the replacement expression `e` for `x` happens to contain a free variable `y`, then `e` cannot be substituted into a let-expr that binds `y` because that would capture the free `y` in `e`.

The partiality of capture-avoiding substitution is expressed in the above equations by the following implicit convention: *the particular case is only defined when each recursive call is also defined*.

This implicit convention can be made more explicit by the use of inference rules as an alternative definition of substitution:

```                   x ≠ y
---------- (1)      ---------- (2)
x[e/x] = x          y[e/x] = y

--------------------- (3)   ---------------------- (4)
num[n][e/x] = num[n]        bool[b][e/x] = bool[b]

    e₁[e/x] = e₁'     e₂[e/x] = e₂'
------------------------------------ (5)
plus(e₁; e₂)[e/x] = plus(e₁'; e₂')

  e₁[e/x] = e₁'    e₂[e/x] = e₂'
----------------------------------- (6)
less(e₁; e₂)[e/x] = less(e₁'; e₂')

e₁[e/x] = e₁'    e₂[e/x] = e₂'    e₃[e/x] = e₃'
------------------------------------------------ (7)
if (e₁;e₂;e₃) [e/x] = if (e₁'; e₂'; e₃')

            e₁[e/x] = e₁'
--------------------------------------- (8)
let (e₁; x.e₂)[e/x] = let (e₁'; x.e₂)

e₁[e/x] = e₁'   y ≠ x     y ∉ FV(e)   e₂[e/x] = e₂'
----------------------------------------------------- (9)
let (e₁; y.e₂)[e/x] = let (e₁'; y.e₂')
```

Both definitions should be seen as two different ways of expressing exactly the
same operation.

**Lemma 1.1** For all expressions e' and e and vars x, if BV(e') ∩ FV(e) = {} then e'[e/x] is defined.

**Lemma 1.2** For all expressions e' and e and all vars x, if x ∉ FV (e')
then e'[e/x] = e when e'[e/x] is defined.


## Renaming: α equivalence

The renaming operation, replacing all occurrences of a free variable with another variable, -can be derived from capture-avoiding substitution. 

**Lemma 1.3** For any expression e and variables x and y, BV(e[y/x]) = BV(e)
if e[y/x] is defined.

**Lemma 1.4** For any expression e and set of variables X, there is an α-equivalent expression e' such that `e =α e'` and `X ∩ BV (e') = {}`


**Theorem 1.1** For any expressions e₁ and e and any variable x, there is an
α-equivalent e₂ such that `e₁ =α e₂` and e₂[e/x] is defined.


**Theorem 1.2** For any expressions e₁, e₂, and e and any var x, if `e₁ =α e₂`
then e₁[e/x] =α e₂[e/x] whenever both e₁[e/x] and e₂[e/x] are both defined.


## Static Semantics: Types

A typing judgement is `|- e : τ` (that an expr `e` has type `τ`). We define what judgements mean by inductive definitions.

Inductive definition is saying that something is a set and that the set is closed under the application of some inference rules (axioms).

In PLT, these rules are called inference rules and they are for inductively defining judgements. Their general form is: premises on top and conclusions under the line.

Derivations (use turnstile) are used to prove a claim by deriving the claim from the inference rules (usually by working backwards, from the claim to base case rule).


The type system for our little language consists of inference rules for concluding *hypothetical judgements* of the form `Γ |- e : τ`, maining that, in the environment Γ, e has type τ.

The environment Γ is a mapping of assumed types for free variables, as shown in the following grammar:

Γ ∈ Environment := • | Γ, x : τ

Note that we will impose an extra side condition: a context is valid if a variable appears at most once in the context (but a type can appear many times).

The inference rules for typing expressions of our little language are as follows:

```
----------------- (1)    ------------------- (2)    ---------------- (3)
Γ |- num(n) : num        Γ |- bool(n) : bool        Γ, x: τ |- x : τ


Γ |- e₁ : num   Γ |- e₂ : num           Γ |- e₁ : num   Γ |- e₂ : num
------------------------------ (4)      ------------------------------ (5)
Γ |- plus(e₁; e₂) : num                 Γ |- less(e₁; e₂) : bool


Γ |- e₁ : bool   Γ |- e₂ : τ    Γ |- e₃ : τ
----------------------------------------------- (6)
            Γ |- if(e₁;e₂;e₃) : τ


Γ |- e₁ : τ'     Γ, x : τ' |- e₂ : τ
------------------------------------- (7)
Γ |- let (e₁; x.e₂) : τ
```


Γ |- (let x  : τ'
        = e₁ : τ'
      in  e₂ : τ) : τ

(let x = 5 :: num in (plus x 3) :: num ) :: number      -- 8     :: num
(let x = 5 :: num in (less x 3) :: bool) :: bool        -- false :: bool


The typing rule for variables (3) means that x has type τ in any environment where x is assumed to have type τ. Meaning that, after type-checking the code, if we found that var x has type τ, then we record this fact in the context Γ; on the subsequent lookups for type of x, we'll find that it has type τ in the context Γ.

The requirement that Γ does not have multiple assumptions for the same variable means that the typing rule for let-expr only applies when the bound var x does not already appear in Γ. This means the expr `let x = 2 in let x = 1 in x`, which should be well-typed, is actually not, because the inner let shadowes the binding of x given by the outer let. This problem can be avoided by renaming all shadowing:

```
let x = 2 in (let x = 1 in x) =α=
let x = 2 in (let y = 1 in y)
```

where there is a typing derivation of `• |- let x = 2 in let y = 1 in y : num` (the dot means the context is empty).

And since we always consider α-equivalent expressions to be the *same* expr, that means that `let x = 2 in (let x = 1 in x)` is *well-typed*, up to α-equivalence.


A typing judgement is proved by showing a derivation that will lead to it from the typing rules. For example, to prove that the judgement `let x = 2 in x < 5` has type `bool` we need to give a derivation of this judgement from the typing rules. The rule to apply depends on the outer expr, and here that is a let-expr, so rule 7 applies.

By the way, all our rules are unambiguous, each corresponds to a certain expression, i.e. the typing rules are *syntax directed*. A typing rule that applies to structure (and so potentially to all expressions) is a **structural rule** (we don't have them for our LittleLang).

```
                   ------------------ #1   ------------------ #1
                   x : num |- x : num      x : num |- 5 : num
------------- #1   ------------------------------------------ #5
• |- 2 : num              x : num |- (x < 5) : bool
-------------------------------------------------------------- #7
            • |- let x = 2 in (x < 5) : bool
```


## Rule induction

*The principle of Rule induction*: shows that P(α) holds for some object α we show for every rule that `P(α₁) ... P(αₙ) -> P(α)`.

This is a generalization of math induction that allows us to prove properties of objects other then ℕ (like lists, trees). So, then, shouldn't it be called **structural induction**.

Inference rules for binary trees:

```
                     n : ℕ   t₁ : tree   t₂ : tree
----------- (t1)     ----------------------------- (t2)
Leaf : tree                Node n t₁ t₂ : tree
```

**Derivations** (with turnstile) are used to prove a claim about objects (lists, trees) based on the rules of inference. A claim is derived from the rules.

For example, to prove that `Node S(0) Leaf Leaf` is a tree, you would use the rules of inference to derive this judgement from the two axioms above.

```
----------- (#ℕ1)
   0 : ℕ
----------- (#ℕ2)  ----------- (#t1)  ----------- (#t1)
S(0) : ℕ           Leaf : tree        Leaf : tree
--------------------------------------------------- (#t2)
            Node S(0) Leaf Leaf
```

### Rule induction

P(α) is some property (predicate) that relates some objects, like the triple that relates context, expr and type, `(Γ, e, τ)`, so α is this triple and P is some property about this triple, e.g. that one var has one type in a context, which we have stated by the lemma: `∀e. ∀Γ. !∃τ. Γ |- e : τ`.

To prove this lemma we have to convert the claim into induction-friendly form. Whenever you need to show that some thing is unique (like that there can be only one var having some type in a context), the standard "trick" is to restate it into an "doppelganger form": `∀x∀y. x ∈ R ∧ y ∈ R -> x = y`. That is, you show that the only way for two objects to have some property is if they are in fact the same object.

So the "one var, one type" lemma can be restated as:

Γ |- v₁ : τ    Γ |- v₂ : τ
---------------------------
Γ |- v₁ = v₂

meaning, the only way for two vars `v₁` and `v₂` to have the same type `τ`, in the same context `Γ`, is if they are, in fact, the same var, `v₁ = v₂`.



## Dynamic Semantics: Behavior
