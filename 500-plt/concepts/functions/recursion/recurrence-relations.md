# Recurrence relation

https://en.wikipedia.org/wiki/Recurrence_relation

>A **recurrence relation** is an *equation* according to which the `n`-th term of a sequence of numbers is equal to some combination of the previous terms.

Often, only `k` previous terms of the sequence appear in the equation, for a parameter `k` that is independent of `n`; this number `k` is called the *order of the relation*.

If the values of the first `k` terms in the sequence have been given, the rest of the sequence can be calculated by repeatedly applying the equation.

Linear recurrence relations

>In **linear recurrence relations**, the `n`-th term is equated with a linear function of the `k` previous terms.

A famous example is the recurrence for the Fibonacci numbers

    Fₙ = Fₙ˗₁ + Fₙ˗₂

    f n = f (n - 1) + f (n - 2)

where the order `k` is 2 and the linear function merely adds the two previous terms. Fibonacci sequence (function) is a *linear recurrence with constant coefficients*, because the coefficients of the linear function (1 and 1) are constants that do not depend on `n`.

For these recurrences, one can express the general term of the sequence as a closed-form expression of `n`.

Moreover, linear recurrences with polynomial coefficients depending on `n` are also important, because many common elementary and special functions have a *Taylor series* whose coefficients satisfy such a recurrence relation (see holonomic function).

**Solving a recurrence relation** means obtaining a closed-form solution, i.e. a non-recursive function of `n`.

For example, the power of two sequence is given by the recurrence relation:

    Fₙ = 2Fₙ˗₁  with F₀ = 1 (for n ∈ ℕ)

The solution of this recurrence relation is the (non-recursive) function `2ⁿ`.

The concept of a recurrence relation can be extended to multidimensional arrays, that is, indexed families that are indexed by tuples of natural numbers.

## Linear recurrence relations

Certain kinds of recurrence relation are called linear recurrence relations, for example:

    f x = 3f(x-1) + 12f(x-2), with f 0 = 1 and f 1 =1

Instead of writing `f x`, we often use the notation `aₙ` to represent `a(n)`, but these notations are interchangeable.

Note that a linear recurrence relation should always have stopping cases, otherwise we would not be able finish the calculation. These stopping cases of linear recurrence relations are called *initial conditions*.

In general, a linear recurrence relation is in the form

    aₙ = c₁aₙ˗₁ + c₂aₙ˗₂ + ... + cⱼaₙ˗ⱼ

with

    f t₁ = u₁, f t₂ = u₂, …, f tⱼ = uⱼ

as initial conditions.

The number `j` is called the *order of the linear recurrence relation*. Note we always need at least `j` initial conditions for the recurrence relation to make sense.

## Solving linear recurrence relations

We can find a nonrecursive function (a solution) that will take on the same values as the recurrence relation itself. We can solve some linear recurrence relations in a very systematic way, but we need to establish a few theorems first.

### Sum of solutions

>Sum of solutions theorem says if `f n` and `g n` are both solutions to a linear recurrence relation `aₙ = A∙aₙ˗₁ + B∙aₙ˗₂`, then their sum is a solution.

This is true, since if we rearrange the recurrence to have 

    aₙ - A∙aₙ˗₁ - B∙aₙ˗₂ = 0

and we know that `f n` and `g n` are solutions, so we have, on substituting into the recurrence

    f n - A∙f(n - 1) - B∙f(n - 2) = 0
    g n - A∙g(n - 1) - B∙g(n - 2) = 0

If we substitute the sum `f n + g n` into the recurrence, we obtain

    (f n + g n) - A∙(f (n-1) + g (n-1)) - B∙(f (n-2) + g (n-2)) = 0

On expanding out, we have

  f n - A∙f (n-1) - B∙f(n-2) + g n - A∙g(n-1) - B∙g(n-2)

But using the two facts we established first, this is the same as

    0 + 0 = 0

So `f n + g n` is indeed a solution to the recurrence.

### General solution

General solution theorem states that if we have a second-order linear recurrence relation

    aₙ - A∙aₙ˗₁ - B∙aₙ˗₂ = 0

with supplied initial conditions, then `γrⁿ` is a solution to the recurrence, where `r` is a solution of the quadratic equation

    x² - Ax - B = 0

which is called the *characteristic equation*.

We guess (it doesn't matter why, accept it for now) that `γrⁿ` may be a solution. We can prove that this is a solution iff it solves the characteristic equation. We substitute `γrⁿ` (where `r ≠ 0`) into the recurrence to get

    γrⁿ - Aγrⁿ⁻¹ - Bγrⁿ⁻² = 0

then factor out by `γrⁿ⁻²`, the term farthest on the right

    γrⁿ⁻²(r² - Ar - B) = 0

and we know since `r` is not zero, `rⁿ⁻²` can never be zero. So `r² - Ar - B` must be zero, and so `γrⁿ`, with `r` a solution of `r² - Ar - B = 0`, will indeed be a solution of the linear recurrence. Note that we can generalize this fact to higher order linear recurrence relations.

Where did this come from? Why does it work (beyond a rote proof)?

Here is a more intuitive explanation: solving the characteristic equation finds a function that satisfies the linear recurrence relation, and conveniently does not require the summation of all `n` terms to find the `n`-th one.

We want: a function `F n` such that `F(n) = A∙F(n-1) + B∙F(n-2)`

We solve: `x² = A∙x + B`, and call these solutions `r` (since there can be more than one value of `r`, like in the example below).

We get: a function `F(n) = rⁿ` that satisfies `F(n) = A∙F(n-1) + B∙F(n-2)`.

Let's check: does `rⁿ = A∙rⁿ⁻¹ + B∙rⁿ⁻²`?

Divide both sides by `rⁿ⁻²` and you get `r² = Ar + B`, which must be true because `r` is a solution to `x² = Ax + B`.

Why does `γrⁿ` also satisfy the recurrence relation? If `F(n) = rⁿ` is a solution, that is, `rⁿ - Arⁿ⁻¹ - Brⁿ⁻² = 0`, then certainly `F(n) = γrⁿ` is a solution since `γrⁿ - Aγrⁿ⁻¹ - Bγrⁿ⁻² = γ(rⁿ - Arⁿ⁻¹ - Brⁿ⁻²) = 0`.


Because we have a second order recurrence, the general solution is the sum of two solutions, corresponding to the two roots of the characteristic equation. Say these are `r` and `s`. The general solution is `C(rⁿ) + D(sⁿ)` where `C` and `D` are some constants. We find them using the two (there must be two so that we can find C and D) starting values of the relation. Substituting these into the general solution gives two equations which we can (hopefully) solve.

https://en.wikibooks.org/wiki/Discrete_Mathematics/Recursion

## Definition

A recurrence relation is an equation that expresses each element of a sequence as a function of the preceding ones. More precisely, in the case where only the immediately preceding element is involved, a recurrence relation has the form

    uₙ = φ(n, uₙ˗₁)    for n > 0

where `φ : N × X → X` is a function and `X` a set to which the elements of a sequence must belong. For any `u₀ ∈ X`, this defines a unique sequence with `u₀` as the initial value. This defines recurrence relation of order 1.

A recurrence relation of order `k` has the form

    uₙ = φ(n, uₙ˗₁, uₙ˗₂, …, uₙ˗ₖ)    for n > 0

where `φ : N × Xᵏ → X` is a function that involves `k` consecutive elements of the sequence. So `k` initial values are needed for defining a sequence of order `k`.

## Examples

### Factorial

The factorial is defined by the recurrence relation

n! = n(n−1)!   for n > 0

and the initial condition 0! = 1.

This is an example of a *linear recurrence with polynomial coefficients of order 1*, with the simple polynomial `f(n) = n` as its only coefficient.

### Logistic map

An example of a recurrence relation is the logistic map:

    xₙ﹢₁ = r xₙ (1 − xₙ)

with a given constant `r`; given the initial term `x₀`, each subsequent term is determined by this relation.

Logistic map is an recurrence relation of degree 2, often referred to as an archetypal example of how complex, chaotic behaviour can arise from very simple nonlinear dynamical equations,

### Powers of two

We can create a recursive function that depends on its previous values to create new ones. We often call these *recurrence relations*.

Fₙ = 2Fₙ˗₁          with F₀ = 1     for n ∈ ℕ

f(n) = 2f(n - 1)   with f(1) = 1   for n ∈ ℕ

Gives the same sequence as the function `2ⁿ`, with `n ∈ ℕ`. What we have done is found a non-recursive function with the same values as the recursive function (recurrence relation). This is called solving a recurrence relation.

### Fibonacci numbers

The recurrence of order two satisfied by the Fibonacci numbers is the canonical example of a homogeneous linear recurrence relation with constant coefficients. The Fibonacci sequence is defined using the recurrence

    Fₙ = Fₙ˗₁ + Fₙ˗₂

with initial conditions F₀ = 0 and F₁ = 1.

The recurrence can be solved by methods described below yielding Binet's formula, which involves powers of the two roots of the characteristic polynomial `t² = t + 1`; the *generating function* of the sequence is the rational function
```
    t
----------
1 - t - t²
```





## Refs
https://en.wikipedia.org/wiki/Constant-recursive_sequence
https://en.wikipedia.org/wiki/Linear_recurrence_with_constant_coefficients
https://en.wikipedia.org/wiki/P-recursive_equation
https://en.wikipedia.org/wiki/Taylor_series
