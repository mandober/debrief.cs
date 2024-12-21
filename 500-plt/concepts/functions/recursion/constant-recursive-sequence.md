# Constant-recursive sequence

https://en.wikipedia.org/wiki/Constant-recursive_sequence

An infinite sequence of numbers `…s₀, s₁, s₂, s₃, …` is called constant-recursive if it satisfies an equation of the form:

    sₙ = c₁sₙ˗₁ + c₂sₙ˗₂ + ⋯ + cₑsₙ˗ₑ


for all `n ≥ e`, where `cᵢ` are constants.

So, the current term `sₙ` is obtained a sum of some previous terms.

s(n) = c(1)s(n - 1) + c(2)s(n - 2) + ⋯ + c(n)s(n - e)

The equation is called *linear recurrence relation*, aka
- linear recurrence sequence
- linear-recursive sequence
- linear-recurrent sequence
- C-finite sequence

Fibonacci sequence (0,1,1,2,3,5,8,13,…) is a prime example of a constant recursive sequences as it satisfies the linear recurrence 
, i.e. each term in the sequence is the sum of the previous 2 terms. This means the order of this sequence (relation) is 2. Fibonacci sequence is a *linear recurrence with constant coefficients*, because the coefficients of the linear function (1 and 1) are constants that do not depend on n, `Fₙ = 1Fₙ˗₁ + 1Fₙ˗₂`.

Other examples of constant-recursive sequences include:
- power of two sequence, (1, 2, 4, 8, …), where each term is twice the previous term, `Sₙ = 2Sₙ˗₁` (i.e. Sₙ = 2ⁿ)
- square number sequence, (0, 1, 4, 9, 16, 25, …), (i.e. Sₙ = n²)
- all arithmetic progressions are constant-recursive
- all geometric progressions are constant-recursive
- all polynomials are constant-recursive

However, not all sequences are constant-recursive; e.g. the factorial sequence (1, 1, 2, 6, 24, 120, …) is not constant-recursive; `f n = n ∙ f(n - 1)`.

## Definition


## Selected examples of integer constant-recursive sequences


Name          |Ord| First few values    | Recurrence (for n≥d ) | Generating function | OEIS

Zero sequence | 0 | 0, 0, 0, 0, 0, 0, … | sₙ = 0                | 0 / 1               | A000004
One sequence  | 1 | 1, 1, 1, 1, 1, 1, … | sₙ = sₙ˗₁              | 1 / 1 - x           | A000012
χ of {0}      | 1 | 1, 0, 0, 0, 0, 0, … | sₙ = 0                | 1 / 1               | A000007
χ of {1}      | 2 | 0, 1, 0, 0, 0, 0, … | sₙ = 0                | x / 1               | A063524
Powers of 2   | 1 | 1, 2, 4, 8, 16, …   | sₙ = 2sₙ˗₁            | 1 / 1 - 2x           | A000079
Powers of −1  | 1 | 1, −1, 1, −1, 1, …  | sₙ = −sₙ˗₁            | 1 / 1 + x            | A033999
