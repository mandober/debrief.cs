# Fixed-points

https://www.youtube.com/watch?v=1BRf2LveEsY&list=PL6kPvEdcJ4jRzqb9Iu_NkKAmzHKufXAY5&index=11

## Fixpoint in math

Let `f : ℝ -> ℝ` be a continuous function, and `x₁ ∈ ℝ`. If the sequence

    x₁, x₂ = f x₁, x₃ = f x₂, …, xₙ = f xₙ˗₁

converges to `x ∈ ℝ` then `x` is a fixpoint of `f`, i.e. `f x = x`.

Proof: f x = f (lim{x→∞} xₙ) = lim{x→∞} f xₙ = lim{x→∞} f xₙ﹢₁ = x

```hs
iter :: a -> (a -> a) -> [a]
iter x f = x : iter (f x) f

[i | i <- fⁿ x, n = 0..] = x, f x, f (f x), f (f (f x)), …

f⁰ x = x
f¹ x = f x
f² x = (f ∘ f) x = f (f x)
f³ x = (f ∘ f ∘ f) x = f (f (f x))
…
fⁿ x = (f ∘ … ∘ f) x = f (… (f x)…)

-- or
x₀ = f⁰ x₀ = x₀
x₁ = f¹ x₀ = f x₀
x₂ = f² x₀ = f x₁ = f (f x₀)
x₃ = f³ x₀ = f x₂ = f (f (f x₀))
xₙ = fⁿ x₀ = f xₙ˗₁
```

How do we know if the sequence `x₁, x₂ = f x₁, x₃ = f x₂, …` converges? 
It converges if `f` *contracts* points.

>A function `f : ℝ -> ℝ` is a contraction if there is `0 ≤ c < 1` such that
>`|f x - f y| ≤ c|x - y|`, for all x, y ∈ ℝ.

Intuitivelly, a contraction decreses the distance between points.

A contraction is always continuous, in fact, *uniformly continuous*.

>**Banach's fixpoint theorem** states that if `f : ℝ -> ℝ` is a contraction, then `f` has a unique fixpoint. Moreover, if x₁ ∈ ℝ is any point, then the sequence `x₁, x₂ = f x₁, x₃ = f x₂, …` converges to that point.

## Fixpoints in logic

In logic, fixed points yield self-referential statements.

⌜φ⌝

For a formula `φ` in the language of Piano Arithmetic (PA), let `⌜φ⌝` denote its *Gödel number* (in what follows we do not distinguish between numbers and numerals).

**Karnap's fixed point lemma** aka **the diagonal lemma** states that 
for any formula `φ(x)` there is a sentence `ψ` such that

    PA ⊢ ψ ⇔ φ(⌜ψ⌝)

    or, more precisely
    PA ⊢ ψ ⇔ [x:=⌜ψ⌝]φ

i.e. for any formula `φ` with one free variable `x`, there is a sentence `ψ`, such that Piano Arithmetic proves the equivalence `ψ` if and only if `φ` of `⌜ψ⌝`. Here, we are substituting the Gödel number of `ψ` (denoted by `⌜ψ⌝`) for the free occurrences of `x` in `φ`.

Intuitively, `ψ` says: "I have property `φ`".

Up to provable equivalence, `ψ` is a fixed point for the operation of substitution into `φ`.

How can we construct such a sentence `ψ`? Well, if we could substitute `φ` into itself infinitely many times, then we could define the sentence

    ψ = φ(⌜φ⌝)
    ψ = φ(⌜φ(⌜φ(…)⌝)⌝)

with infinitely many substitutions of `φ`.

    ψ = φ (⌜φ⌝)
            ↑
          ┌─┴─┐
        φ (⌜φ⌝)

i.e. [φ:=φ(⌜φ⌝)](⌜φ⌝)

So the sequence of substitutions is:

    ψ = φ (⌜φ⌝)
    ψ = φ (⌜φ (⌜φ⌝)⌝)
    ψ = φ (⌜φ (⌜φ (⌜φ⌝)⌝)⌝)
    ψ = φ (⌜φ (⌜φ (⌜φ (⌜φ⌝)⌝)⌝)⌝)
    ψ = φ (⌜φ (⌜φ (…)⌝)⌝)

We would then have

    φ (⌜ψ⌝) = φ (⌜φ (⌜φ (…)⌝)⌝) = ψ

i.e. `φ (⌜ψ⌝)` is just `ψ`.

Certainly, in this case, PA would prove the equivalence

    PA ⊢ ψ ⇔ φ(⌜ψ⌝)

To make this idea work, we use the substitution function `sub` defined so that sub of the Gödel number of `φ(x)` and the number `m` is the Gödel number of the sentence obtained by substituting `m` for the free occurrences of `x` in `φ`.

    sub(⌜φ(x)⌝, m) = ⌜φ(m)⌝

    or, more precisely
    sub(⌜φ(x)⌝, m) = ⌜φ([x:=m]φ)⌝

This function is computable and hence representable in PA.

Notice that we can take `m` to be the Gödel number of `φ(x)`, `m = ⌜φ(x)⌝`, to get `φ` substituted into itself,

    sub(⌜φ(x)⌝, ⌜φ(x)⌝) = ⌜φ(⌜φ(x)⌝)⌝

which begins to approximate our idea.

To simulate infinitely many substitutions, we define

    θ(x) = φ(sub(x, x))

and then define `ψ` to be the sentence obtained by substituting `θ` into itself

    ψ = θ(⌜θ(x)⌝)

Notice that the definition of `θ` includes a self-substitution operation on `x` within `φ`, using a term representing the substitution function.

In the definition of `ψ`, when we substitute `θ` into itself, we intuitively obtain `φ` applied to the very same substitution operation we just performed, namely `ψ`.

This suggests that `ψ` should be equivalent to `φ(ψ)`, `ψ = φ(ψ)` (a fixpoint), which can be proved in PA.

We can now prove **Gödel's first incompleteness theorem** which says that if PA is consistent (that is, if it doesn't prove a contradiction), then it admits true but unprovable statements.

Indeed, by the fixed point lemma there is a sentence `ψ` for which PA proves the equivalence `ψ ⇔ ¬φ(ψ)`

    PA ⊢ ψ ⇔ ¬π(⌜ψ⌝)

where `φ(x)` says "`x` is the Gödel number of a sentence provable in PA".

Note that this property `π` is expressible in the language of arithmetic because proofs themselves are just finitary objects which can be encoded as numbers (namely as Gödel numbers via Gödel encoding).

Thus, `ψ` says "I am not provable".

If PA proves `ψ`, then it proves that `ψ` is provable. So by definition of `ψ`, it also proves `¬ψ`, which contradicts the assumption of consistency:

if `PA ⊢ ψ`, then `PA ⊢ π(⌜ψ⌝)`, so also `PA ⊢ ¬π(⌜ψ⌝)`!

Therefore, `ψ` is not provable, `PA ⊬ ψ`. But that's just what the `ψ` says!

It is remarkable that the Gödel sentence ψ, which showcases a fundamental limitation of the axiomatic method in mathematics, is just another example of a fixed point.

## Fixpoints in lambda calculus
