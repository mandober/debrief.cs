# Type Theory and Formal Proof
Book `Type Theory and Formal Proof - An Introduction`, Nederpelt, Geuvers 2014

## About
Development of programming languages from untyped lambda calculus, `λ`, to calculus of constructions, `CoC`, à la lambda cube.

Vertices of lambda cube:
0. Untyped lambda calculus, `λ`
1. Simply-typed lambda calculus, `λ→`, STLC, (addition of types)
2. Second-order typed LC, `λ₂`, System F, (type polymorphism)
3. `λω` (type constructors)
4. `λΠ` (dependent types)
7. `λ₂ω`, System Fω, type polymorphism + type constructors
6. `λ₂Π` (rare: type polymorphism + dependent types, but no type ctors)
5. `λωΠ` (rare: type constructors + dependent types, no type polymorphism)
8. Calculus of Constructions, `CoC`, `λ₂ωΠ`

Dimensions:
- origin: +types
- x: +type polymorphism, +2 (second-order abstraction/application)
- y: +type constructors, +ω
- z: +dependent types,   +Π

Functions
- ƒ: terms to terms, x -> x
- ƒ: types to terms, α -> x
- ƒ: types to terms, x -> α
- ƒ: types to types, α -> α

## Contents

1. Untyped lambda calculus 1
  1.1 Input-output behaviour of functions 1
  1.2 The essence of functions 2
  1.3 Lambda-terms 4
  1.4 Free and bound variables 8
  1.5 Alpha conversion 9
  1.6 Substitution 11
  1.7 Lambda-terms modulo α-equivalence 14
  1.8 Beta reduction 16
  1.9 Normal forms and confluence 19
  1.10 Fixed Point Theorem 24
  1.11 Conclusions 26
  1.12 Further reading 27
  Exercises 29
2. Simply typed lambda calculus 33
  2.1 Adding types 33
  2.2 Simple types 34
  2.3 Church-typing and Curry-typing 36
  2.4 Derivation rules for Church's `λ→` 39
  2.5 Different formats for a derivation in λ→ 44
  2.6 Kinds of problems to be solved in type theory 46
  2.7 Well-typedness in λ→ 47
  2.8 Type Checking in λ→ 50
  2.9 Term Finding in λ→ 51
  2.10 General properties of λ→ 53
  2.11 Reduction and λ→ 59
  2.12 Consequences 63
  2.13 Conclusions 64
  2.14 Further reading 65
  Exercises 66
3. Second order typed lambda calculus 69
  3.1 Type-abstraction and type-application 69
  3.2 Π-types 71
  3.3 Second order abstraction and application rules 72
  3.4 The system `λ2` 73
  3.5 Example of a derivation in λ2 76
  3.6 Properties of λ2 78
  3.7 Conclusions 80
  3.8 Further reading 80
  Exercises 82
4. Types dependent on types 85
  4.1 Type constructors 85
  4.2 Sort-rule and var-rule in `λω` 88
  4.3 The weakening rule in λω 90
  4.4 The formation rule in λω 93
  4.5 Application and abstraction rules in λω 94
  4.6 Shortened derivations 95
  4.7 The conversion rule 97
  4.8 Properties of λω 99
  4.9 Conclusions 100
  4.10 Further reading 100
  Exercises 101
5. Types dependent on terms 103
  5.1 The missing extension 103
  5.2 Derivation rules of `λP` 105
  5.3 An example derivation in λP 107
  5.4 Minimal predicate logic in λP 109
  5.5 Example of a logical derivation in λP 115
  5.6 Conclusions 118
  5.7 Further reading 119
  Exercises 121
6. The Calculus of Constructions 123
  6.1 The system `λC` 123
  6.2 The λ-cube 125
  6.3 Properties of λC 128
  6.4 Conclusions 132
  6.5 Further reading 133
  Exercises 134
7. The encoding of logical notions in λC 137
  7.1 Absurdity and negation in type theory 137
  7.2 Conjunction and disjunction in type theory 139
  7.3 An example of propositional logic in λC 144
  7.4 Classical logic in λC 146
  7.5 Predicate logic in λC 150
  7.6 An example of predicate logic in λC 154
  7.7 Conclusions 157
  7.8 Further reading 159
  Exercises 162
8. Definitions 165
  8.1 The nature of definitions 165
  8.2 Inductive and recursive definitions 167
  8.3 The format of definitions 168
  8.4 Instantiations of definitions 170
  8.5 A formal format for definitions 172
  8.6 Definitions depending on assumptions 174
  8.7 Giving names to proofs 175
  8.8 A general proof and a specialised version 178
  8.9 Mathematical statements as formal definitions 180
  8.10 Conclusions 182
  8.11 Further reading 183
  Exercises 185
9. Extension of λC with definitions 189
  9.1 Extension of λC to the system `λD₀` 189
  9.2 Judgements extended with definitions 190
  9.3 The rule for adding a definition 192
  9.4 The rule for instantiating a definition 193
  9.5 Definition unfolding and *δ-conversion* 197
  9.6 Examples of δ-conversion 200
  9.7 The conversion rule extended with `→Δ` 202
  9.8 The derivation rules for λD₀ 203
  9.9 A closer look at the derivation rules of λD₀ 204
  9.10 Conclusions 206
  9.11 Further reading 207
  Exercises 208x Contents
10. Rules and properties of `λD` 211
  10.1 Descriptive versus primitive definitions 211
  10.2 Axioms and axiomatic notions 212
  10.3 Rules for primitive definitions 214
  10.4 Properties of λD 215
  10.5 Normalisation and confluence in λD 219
  10.6 Conclusions 221
  10.7 Further reading 221
  Exercises 223
11. Flag-style natural deduction in `λD` 225
  11.1 Formal derivations in λD 225
  11.2 Comparing formal and flag-style λD 228
  11.3 Conventions about flag-style proofs in λD 229
  11.4 Introduction and elimination rules 232
  11.5 Rules for constructive propositional logic 234
  11.6 Examples of logical derivations in λD 237
  11.7 Suppressing unaltered parameter lists 239
  11.8 Rules for classical propositional logic 240
  11.9 Alternative natural deduction rules for ∨ 243
  11.10 Rules for constructive predicate logic 246
  11.11 Rules for classical predicate logic 249
  11.12 Conclusions 252
  11.13 Further reading 253
  Exercises 254
12. Mathematics in `λD`: a first attempt 257
  12.1 An example to start with 257
  12.2 Equality 259
  12.3 The congruence property of equality 262
  12.4 Orders 264
  12.5 A proof about orders 266
  12.6 Unique existence 268
  12.7 The descriptor `ι` 271
  12.8 Conclusions 274
  12.9 Further reading 275
  Exercises 276
13. Sets and subsets 279
  13.1 Dealing with subsets in `λD` 279
  13.2 Basic set-theoretic notions 282
  13.3 Special subsets 287
  13.4 Relations 288
  13.5 Maps 291
  13.6 Representation of mathematical notions 295
  13.7 Conclusions 296
  13.8 Further reading 297
  Exercises 302
14. Numbers and arithmetic in `λD` 305
  14.1 The Peano axioms for natural numbers 305
  14.2 Introducing integers the axiomatic way 308
  14.3 Basic properties of the 'new' ℕ 313
  14.4 Integer addition 316
  14.5 An example of a basic computation in λD 320
  14.6 Arithmetical laws for addition 322
  14.7 Closure under addition for natural and negative numbers 324
  14.8 Integer subtraction 327
  14.9 The opposite of an integer 330
  14.10 Inequality relations on ℤ 332
  14.11 Multiplication of integers 335
  14.12 Divisibility 338
  14.13 Irrelevance of proof 340
  14.14 Conclusions 341
  14.15 Further reading 343
  Exercises 344
15. An elaborated example 349
  15.1 Formalising a proof of Bezout's Lemma 349
  15.2 Preparatory work 352
  15.3 Part I of the proof of Bezout's Lemma 354
  15.4 Part II of the proof 357
  15.5 Part III of the proof 360
  15.6 The holes in the proof of Bezout's Lemma 363
  15.7 The Minimum Theorem for Z 364
  15.8 The Division Theorem 369
  15.9 Conclusions 371
  15.10 Further reading 373
  Exercises 376
16. Further perspectives 379
  16.1 Useful applications of `λD` 379
  16.2 Proof assistants based on type theory 380
  16.3 Future of the field 384
  16.4 Conclusions 386
  16.5 Further reading 387

Appendix A Logic in `λD` 391
  A.1 Constructive propositional logic 391
  A.2 Classical propositional logic 393
  A.3 Constructive predicate logic 395
  A.4 Classical predicate logic 396
Appendix B Arithmetical axioms, definitions and lemmas 397
Appendix C Two complete example proofs in λD 403
  C.1 Closure under addition in ℕ 403
  C.2 The Minimum Theorem 405
Appendix D Derivation rules for λD 409

References 411

Index of names 419
Index of definitions 421
Index of symbols 423
Index of subjects 425


## 1. Untyped lambda calculus

### Positive properties of untyped lambda calculus

- It formally describes the input-output behaviour of functions, including the essential construction principles, abstraction and application, and the evaluation rule, β-reduction, as well as dealing with variable binding.
- Substitution is a fundamental mechanism for function evaluation, and it has some very tricky corner cases. However, substitution can be treated rigorously in untyped lambda calculus.
- Conversion is an extension of reduction. It covers the notion of being equivalent by means of calculations (β-equvalence, α-equvalence).
- β-normal form defines the notion of possible outcome of a calculation.
- Confluence, a desired property for calculations, is guaranteed.
- The consequence of confluence is the uniqueness of β-normal forms (if the β-normal form exists): a calculation cannot have more than one outcome.
- Fixpoints can be sued to solve recursive equations.
- Untyped lambda calculus is Turing-complete, in fact it is equal model of computation to Turing machine.

### Negative properties of untyped lambda calculus

- Self-application is allowed, although very counter-intuitive.
- Existence of normal forms for λ-terms is not guaranteed, so we have the real possibility of undesired infinite calculations.
- Each λ-term is guaranteed to have a fixed point, which is not in accordance with the proper behaviour of functions.

~ ~ ~

Next we investigate STLC and then systems obtained with further progression of abstractions and enhancements, each with own special features and advantages.

## 2. Simply typed lambda calculus

### 2.1 Simple types

Simply Typed Lambda Calculus (STLC)

Untyped lambda calculus shows that the abstract behaviour of functions can be expressed by means of λ-calculus; the system is concise and elegant, but sometimes too flexible to conform to our intuition about proper behaviour of functions. However, these negative properties are removed by *introduction of types*. Types naturally constrain the set of allowed λ-terms (primarily, as allowed function arguments).

Introducing types follows naturally: functions are usually thought of as acting on objects belonging to a certain collection (e.g. natural numbers, collection of points on a line), therefore, *the domain of a function* is always present, either implicitly or explicitly.

### 2.2 Simple types

A straightforward manner to abstract (introduce) *types* is to start with an infinite set of *type variables* and then add a production rule to build more complex types, the so-called *function types*. This is done as follows (based on a seminal paper of A. Church, 1940).

Assuming an infinite set of type variables, `𝕍 = {α, β, γ, …}`, 
the set `𝕋` of all **simple types** is defined by:
1. Type variable: if `α ∈ 𝕍` then `α ∈ 𝕋`
2. Arrow type: if `σ, τ ∈ 𝕋` then `(σ → τ) ∈ 𝕋`

Abstract syntax: 𝕋 := 𝕍 | 𝕋 → 𝕋

Examples of simple types:
- γ
- (β → γ)
- ((γ → α) → (α → (β → γ)))

Intended meaning of the types:
- *type variables* are abstract representations of basic types suich as `nat` for natural numbers, `list` for lists, etc.
- *arrow types* represent function types, such as `(nat → int) → (int → nat)` (the set of all functions with input a function from naturals to integers and output a function from integers to naturals).

We distinguish between the sets and the types because sets like `ℕ` belong to mathematics and types like `nat` to computer science. Otherwise said, `ℕ` is a collection of things in the 'real world' of mathematical entities, whereas `nat` is some coding of these entities in the 'virtual world' of programming. 

**Typing statement** in the formal language, `M : σ`.

(...)

### 2.3 Church-typing and Curry-typing

Typing of a λ-term starts with typing its variables.

There are two ways to give types to variables:
- typing à la Church or explicit typing
- typing à la Curry or implicit typing

#### Typing à la Church

Prescribe a (unique) type for each variable upon its introduction. This is called *typing à la Church* or *explicit typing*, since the types of variables are explicitly written down (as in Church's original paper from 1940). The types of more complex terms now follow in an obvious manner, if one takes the restriction on typability of applications into account.

For example, `(λzu.z)(yx)`: 
assume `x` has type `α → α` and `y` has type `(α → α) → β`; then `yx` has type `β`. If, moreover, `z` has type `β` and `u` has type `γ`, then `λzu.z` has type `β → γ → β`. The application `(λzu.z)(y x)` is permitted, since the type `β` of `yx` matches with the 'input type' `β` of `λzu.z`. So, `(λzu.z)(yx)` is typable, with type `γ → β`.

#### Typing à la Curry

Another way is not to give the types of variables, but to leave them open (implicit) to some extent; this is called *typing à la Curry* or *implicit typing*. In this case, the typable terms are found by a search process, which may contain 'guesses' for the types of the variables.

Look again at the λ-term `M ≡ (λzu.z)(y x)`, but now assume that the types of the variables x, y, z, u have not been given beforehand. Can we make an educated guess about the 'possible' types of these variables, provided that we require that the full term must obtain a type?

First of all, we note that the term `M` is an application of `λzu.z` to `yx`. So, `λzu.z` should have a function type, say `A → B`, and then `yx` must have type `A`. Consequently, `M` has type `B`.

The fact that `λz.λu.z : A → B`, implies that `z : A` and `λu.z : B`. The latter λ-term is abstraction, so it cannot be just `B` but say `B ≡ (C → D)`, for some C and D, and it follows that `u : C` and `z : D`.

In the second place, `y x` itself is an application, so there must be E and F such that `y : E → F` and `x : E`. Then `y x : F`.

It follows that:
- x : E
- y : E → F
- `z : A` and `z : D`, so `A ≡ D`
- u : C
- `B ≡ (C → D)`
- `y x : A` and `y x : F`, so `A ≡ F`

Hence, we have that `A ≡ D ≡ F`, so, omitting the superfluous D and F (and B), we obtain: `x : E`, `y : E → A`, `z : A`, `u : C` (¹).

Since M has type B and D ≡ A, we can also say that M : C → A. Thus we obtained a general scheme (¹) for the types of x, y, z, u, inducing a type for M.

We may fill the scheme (¹) with 'real' types, for example:
- `x : β`, `y : β → α`, `z : α`, `u : δ`, with `M : δ → α`; or
- `x : α → α`, `y : (α → α) → β`, `z : β`, `u : γ`, with `M : γ → β` 
  (compare this with the typing-à-la-Church example above); or
- `x : α`, `y : α → α → β`, `z : α → β`, `u : α → α`, with `M: (α → α) → α → β`

Apparently, each mentioned 'instance' of the general scheme shows that the λ-term `M ≡ (λzu.z)(yx)` is a typable term. Hence, as long as the restrictions imposed by the general scheme are respected, there is a rich choice of types for the 4 variables.

In the major part of this textbook we only consider typing à la Church because in real life situations from mathematics and logic types are usually fixed and given beforehand. For a clear presentation, we denote the types of bound variables immediately after their introduction following a `λ`. The types of the free variables are given in a so-called *context* (sometimes called *basis*), in an order that may be chosen at will.

(λzᵃ. λuᶜ. zᵃ)ᵃ🠂ᶜ🠂ᵃ (yᵉ🠂ᶠ xᵉ)ᶠ



### 2.12 Consequences

All the negative aspects of untyped λ-calculus have disappeared:
- Self-application in λ→ is not possible
- Existence of β-normal forms is guaranteed
- Not every legal λ-term has a fixed point

### 2.13 Conclusions

We have added simple types to lambda calculus but these types *don't have much structure*: starting from type variables, the only way to construct other types is by repeatedly writing the binary symbol `→` between types. By their simplicity, they do not contain much "information" about the terms.

The positive points of untyped lambda calculus extend to the simply typed version of lambda calculus. There is only one important drawback: the system `λ→` is too weak to encapsulate all computable functions and is hence not useable for the formalisation of mathematics.

### Exercises

#### 2.1 Find types (if possible)

(a) `x x y`, ✘ (self-app)

(b) `x y y` ✔
  (x y) y ≡⟩ ((x: a -> a -> a) y: a ) y: a
  (x y) y ≡⟩ ((x: (a -> a) -> (a -> a) -> a) (y: a -> a)) (y: a -> a)

(c) `x y x` ✘ (self-app)

  x y x
  = (x y) x
  = ((x: a -> b -> c) (y: ?)) (x: ?)
  = ((x: a -> b -> c) (y: a)) (x: b) ✘

(d) `x(x y)` ✔

  x(x y)
  = (x: ?)((x: ?) (y: ?))
  = (x: ?)((x: a -> a) (y: ?))
  = (x: a -> a)((x: a -> a) (y: a))

(e) `x(y x)` ✘

  x(y x)
  = (x: ?)((y: a -> a) (x: ?))
  = (x: a)((y: a -> a) (x: a)) ... ✘
  = (x: a)(y x: a) ... (app doesn't make sense)




## 3. Second-order typed lambda calculus

### 3.1 Type-abstraction and type-application
