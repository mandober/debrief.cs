# Variance in Agda

In Haskell, variance is a property of a type ctor in relation to one of its type parameters. Agda is written and heavily influenced by Haskell, so it inherits some notion of variance from Haskell.

When we say that a type ctor `D` is contravariant, it is usually a shorter way of saying that a data type `D A` is contravariant with respect to its type param `A`. For example, the list data type, `List A`, is contravariant with respect to its type param `A`.

The question of variance is: if we can map an `A` into a `B`, does that necessarily mean we can map a `D A` into a `D B`? For `List A` it does, as we can map a `List A` into a `List B`, and so we can say that `List A` is **covariant** with respect to its type param `A`.

Variance of a datatype is affected by its representation. Usually, when there's a possibility to represent a data type in multiple ways (possibly isomorpic, but usually equivalent ways), there is also a notion of canonical forms. Each data type then has the most representative form, its **canonical form**. So, variance of a data type is discussed with respect to its canonical form.

In Haskell, the canonical form of ADTs is, a possibly recursive, sum of products. This means that a data type like `Maybe`, which is usually defined as `Maybe a = Nothing | Just a`, is not in the canonical form, `m = 1 + α`, that is, Maybe's the canonical form is `Either () a`.



## Types of variance

- ⇉ covariance is a change in the same direction
- ⇄ contravariance is a change in the opposite directions
- bivariance is a change that goes in both directions
- invariance (nonvariance) is the absence of variance relation

Variant typeclasses
- `Functor`       (covariant)
- `Contravariant`
- `Invariant`     (nonvariant)
- `Bifunctor`     (bivariant)
- `Profuctor`

**Monovariance** is a property of an object whose value only changes in one direction. It will either always increase or always decrease.

If two objects are invariant or non-variant, then they are unrelated: change in one does not affect the other.

## Positive and negative type parameter positions

When a data type is in its canonical form, each of its 
type params has the property of **position polarity**:
- *Positive* positions
  - both positions in a product type,  `a ⨯ b`     `ᐩ ⨯ ᐩ`
  - both positions in a sum type,      `a + b`     `ᐩ + ᐩ`
  - the return position in a function, `a → b`     `⁻ → ᐩ`
- *Negative* position
  - input position in a function type, `a → b`     `⁻ → ᐩ`

These just mark the polarities of the positions where a type parameter could occur. In these examples, it is easy to determine the variances of both type params, `a` and `b`, as they occur in the 3 constructions (product, sum, function) above.

However, the same type paramter can occur in multiple positions, so to determine its variance in such situations, you need to sum together the values of all of its individual occurences.

An occurrance of a type param in the positive position is +1, 
and an occurrance of a type param in the negative position is -1. 
Multiplying all the occurences of a type param gives its overall variance:
- if it is a positive number, that type param is *covariant*
- if it is a negative number, that type param is *contravariant*
- As a special case, if the same type param appears in both the positive and the negative position at the same time (which can only happen in functions), then it is *invariant*.

Occurrance of a type variable is the positive position is worth 1, while the negative position is worth -1. Multiplication determines its overall sign.

A type's variance also has a more concrete interpretation: variables in positive position are produced (owned), while those in negative position are consumed. Products, sums and the right-side of an arrow are all pieces of data that already exist or are produced, but the type on the left-side of an arrow is consumed.

### Examples

1. Example: `(a, Bool) -> Int`

The type param `a` is in the positive position (+1) in the pair `(a, Bool)`, but it is also a part of the larger expression that is the input type to a function and so in the negative position (-1). However, since (-1 ⨯ 1 = -1), the type param `a` is contravariant.

This aligns with Currying nicely, because when the signatue is curryied    
`a -> Bool -> Int` = `a -> (Bool -> Int)`   
then the type param `a` finds itself only in one position, which is a negative one, and so `a` remains contravariant.


2. Example: `a -> b`

In this function type with two distinct type params:
- `a` is contravariant (being in the negative position)
- `b` is covariant (being in the positive position)

3. Example: `a -> a`

Here the function type has the same type param in both positions, so the overall variance of `a` must be calculated. Once in negatove and once in positive position means its overall veriance number is negative and so `a` is contravariant. Wrong! `a` is actually *invariant* because it appears in both positions. (See the special case above).


4. Example: `(Int -> a) -> Int`

`a` is *contravariant* overall. It gets +1 for being in the return position of a function (which is a positive position), but it gets -1 for being in a larger expression that is in a negative position (and -1 ⨯ 1 = -1).


5. Example: `(a -> Int) -> Int`

Now `a` is in two negative positions:
- it gets -1 for `(a -> Int)`
- it gets -1 since the exp above is itself in the negative position

However, since `-1 × -1 = 1`, the type param `a` is here actually *covariant*.
