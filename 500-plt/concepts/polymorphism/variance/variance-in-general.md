# Variance

- Variance in general
- Variance in Haskell
- canonical type representations
- variance
  - covariance ⇉
  - contravariance ⇄
  - bivariance ⇉ ⇄
  - invariance (nonvariance)
- canonical type representation
- polarity of position of type variables
  - positive position
    - a type var is in -pos if it occurs on the left of the function arrow
    - othersise a type var is in +pos
  - negative position
- Variant typeclasses
  - `Functor`       (covariant)
  - `Contravariant`
  - `Invariant`     (nonvariant)
  - `Bifunctor`     (bivariant)
  - `Profuctor`
- monovariant


## Variance in general

Variance is especially associated with features of a type system that include subtyping, generic datatypes, inheritance.

Often, the rules regarding variance are not a consequence of other decisions in the design of a PL, but are *set explicitly*, by the language author, in order to make the type system safer.

By making type ctors variant, more programs are accepted as well-typed. Many people find contravariance unintuitive, so a PL designer may choose to simplify things by forcing, e.g. a type ctor to be invariant, even if it was safe (type-safety) to leave it contravariant.

**Monovariance**: a monovariant is a property of an object whose value only changes in one direction. It will either always increase or always decrease.

## Variance in Haskell

> In Haskell, variance is a property of a type ctor in relation to one of its type parameters.

By convention, we tend to reserve the last formal parameter for the data structure (`T a`) the function will operate on, and since map-like functions transform the last parameter, we can unambiguously say, e.g., that a type ctor  
`T` is contravariant, as a shorthand for the full expression:   
`T a` is contravariant with respect to its type param `a`.


> The question of variance is: if we can transform an `a` into a `b`, does that necessarily mean we can transform a `T a` into a `T b`?

* *covariance* is a change in the same direction. A change in one triggers a similar change in the other
* *contravariance* is a change in the opposite directions
* *invariance* indicates the absence of this relation (two metrics are not variant, they are unrelated; change in one does not affect the other)


## Canonical type representation

A direct corollary of the theorem that, any two types with the same cardinality are isomorphic, is that there are multiple ways to represent any type; and any time multiple forms of the same thing are on the table, you know it's time to call the wolf to determine which one is gonna be the most representative form - the so called *canonical form*.



!!! warning Canonical Representation
    The *canonical representation* of an algebraic data type is a **potentially recursive sum of products (SoP)**.


* The canonical form of a sum type is a `Either a b`, that is, the type ctor `Either` with two type vars `a` and `b`.
* The canonical form of a product type is a pair, `(a,b)`, or more formally, the type ctor `(,)` with two type vars `a` and `b`.
* Function types have the arrow familiar form, `a -> b` or more formally, the type ctor `(->)` with two type vars `a` and `b`.

Basically, all sum types are repr by `Either`, all product types by a pair, and with the arrow type forms added.

Each of following types is in its canonical representation:
- Void                          ≅ 𝟘
- ()                            ≅ 𝟙
- (a, b)                        ≅ ⨯
- Either a b                    ≅ +
- a -> b                        ≅ ^
- Either (a, b) (c, d)
- Either a (Either b (c, d))
- (a, Int)
- `Either () a` is the canonical repr of `Maybe a`
- We make an exception to the rule for numeric types (like `Int` in the last case) as it would be too much work to express them as sums.


## Positive and negative position

There is a notion of **position polarity** wrt a type variable in a type that is in the canonical form:
- *Positive positions*
  - both type params in product type,         `(a,b)`
  - both type params in sum type,             `Either a b`
  - the return type param in function type,   `n -> p`
- *Negative position*
  - the input type param in function type,    `neg -> pos`


## Determining variance

The variance of a type `T a` with respect to its type variable `a` is fully specified by the position of `a`:
* if `a` appears in positive position it is *covariant*
* if `a` appears in negative position it is *contravariant*
* if `a` appears in both positions at once it is *invariant*


## Function input types

> The only way to introduce a type variable in a *negative position* is to put it as the *input type of a function*.

This should correspond to the intuition that the type of a function (that is, its input type) goes "backwards" when pre-composed with another function. If we consider a function `f :: b -> c`, whose input type is `b` and the output type is `c`, the type of the input will vary when `f` is composed with another function such as `g :: a -> b`; that is, the resulting function will have the same output type as `f` (that is `c`), because the output type is *covaraint* (it varies in the same direction, basically, stays the same), but the input type becomes the input type of g, `g . f :: a -> c`, making the input type to functions *contravariant* (it varies in the opposite direction in respect to the arrow).

```
     f :: b -> c
g :: a -> b
     a <- b -> c
-----------------
h :: a      -> c
```


## Calculating overall position sign

Occurrance of a type variable is the positive position is worth 1, while the negative position is worth -1. Multiplication determines its overall sign.

A type's variance also has a more concrete interpretation: variables in *positive position are produced (owned)*, while those in *negative position are consumed*. Products, sums and the right-side of an arrow are all pieces of data that already exist or are produced, but the type on the left-side of an arrow is indeed consumed.

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



## Type parameters and variance

We can discussed type ctors that are in a variance relation with their single type variable, but there are also type ctors that are variant in their both type vars.

However, since type ctors also support partial application, we can partially apply a multi-param type ctor to all its type params but the last one, making such type variant on different levels of their type param engagement.

With unary type ctor, variance with respect to their only type parameter is *covariance*, i.e. such types are *covariant*.

The most familar type class, that may be alternatively called `Covariant`, is the `Functor` class. It main methos `fmap` works only with covariant type ctors.

Considering the signature of fmap, we can easily see that a functions from `a` to `b` is lifted (in the same direction) to a function from `F a` to `F b`.

```hs
fmap :: Functor f => (a -> b) ->  f a -> f b

-- example Functor, specialized to Maybe
fmap @Maybe :: (a -> b) -> Maybe a -> Maybe b
```

`Maybe` is a covariant type with respect to its type param `a`. Many other, especially unary, types are as well. However, type ctors with more then one type param, may be members of Functor as well, provided they are partially applied to, all but the last, type param.

For example, `Either l r` has two params, but it also can be a `Functor` if its first one is partially applied, as `Either l`. In fact, in this case, we say that `Either l` is a Functor in its second type arg (since its first is fixed).

```hs
-- 2 type params, but it is functor only in the first one:

-- (Either l r) is Functor in (Either l)
-- here, the first TP is a Bool, so partially applied it is (Either Bool)
instance Functor (Either l) where
    fmap :: (a -> b) -> Either l a -> Either l b
```



```hs
-- function ctor a -> b is functor only 
fmap @((->) r) :: (a -> b) -> (Bool -> a) -> Bool -> b
```







Because we have the convention that map-like functions transform the last type parameter, we can unambiguously say that, e.g., "`T` is variant", as an abbreviation for "`T a` is variant with respect to `a`".

`(a -> b)` --?-> `(t a -> t b)`    


If we can transform an `a` into `b`, does it imply we can necessarily transform `T a` into a `T b`? This has to do with the shape of `T`. Depending on the shape of `T :: * -> *` there are 3 behaviours for variance of `T`:
* *Covariant*:     any function `a -> b` can be lifted into `T a -> T b`
* *Contravariant*: any function `a -> b` can be lifted into `T b -> T a`
* *Invariant*: Generally, no fn `a -> b` can be lifted into a fn over `T a`



Covariance is the version we're most familiar with as it directly corresponds to `Functors`. In fact, the type of `fmap` is precisely the witness to this "lifting" motion `fmap :: (a -> b) -> t a -> t b`.

A type `T` is a Functor percisely iff it is covariant. If not it is `Contravariant`, which is a class with `contramap` that has the signature: `contramap :: (a -> b) -> t b -> t a`.

The *contravariant* and *invariant* packages, by Ed Kmett, give us access to the `Contravariant` and `Invariant` classes. These classes are to their sorts of variance what Functor is to covariance.

A contravariant type allows you to map a function backwards across its type constructor.

```hs
class Functor f where
    fmap :: (a -> b) -> f a -> f b

class Contravariant f where
    contramap :: (a -> b) -> f b -> f a

class Invariant f where
    invmap :: (a -> b) -> (b -> a) -> f a -> f b


class Bifunctor p where
    bimap :: (a -> b) -> (c -> d) -> p a c -> p b d

class Profunctor p where
    dimap :: (b -> a) -> (c -> d) -> p a c -> p b d
```

On the other hand, an invariant type `T` allows you to map from `a` to `b` iff `a` and `b` are *isomorphic* (this one is not very interesting because being isomorphic means they're already the same thing to begin with).


There are some special names for types with multiple type variables:

* A type that is covariant in two arguments (`Either` and `(,)`) is a **bifunctor**.

* A type that is contravariant in its first argument, but covariant in its second (like `(->)`) is a **profunctor**.







## Refs

- from the book: Thinking with types
- https://www.fpcomplete.com/blog/2016/11/covariance-contravariance/
- https://en.wikipedia.org/wiki/Covariance_and_contravariance
- https://hackage.haskell.org/package/contravariant-1.4/docs/Data-Functor-Contravariant.html
