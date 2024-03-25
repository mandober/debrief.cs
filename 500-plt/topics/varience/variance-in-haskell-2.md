# Varience

Variance is about answering this question: if we can transform an `a` into a `b`, does it imply that we can transform a `T a` into a `T b` (where `T` is a type ctor like List)?

Variance is mostly related to PLs with *subtyping*: If there is a subtyping relation between two types, e.g. if every `Car` is a `Vehicle`, then it may be beneficial to extend this to container types, such that a List[Car] is also a List[Vehicle].

However, *variance is only sound for immutable data types*. If `List` is mutable, then a List[Vehicle] is something tht can mutate into a list of `Bus`es. If every List[Car] is automatically a List[Vehicle], then you can end up with buses in your list of cars.

## Variance in Haskell

In Haskell, variance is a property of type ctors like `List`, `Maybe`, etc.

```hs
newtype T1 a = T1 (Int -> a)           -- Functor
newtype T2 a = T2 (a -> Int)
newtype T3 a = T3 (a -> a)
newtype T4 a = T4 ((Int -> a) -> Int)
newtype T5 a = T5 ((a -> Int) -> Int)  -- Functor
```

The reason that only `T1` and `T5` are Functors has to do with variance.

Variance is about answering this question: if we can transform an `a` into a `b`, does it imply that we can transform a `T a` into a `T b` (where `T` is a type ctor like List)?

>(a -> b) ==> ([a] -> [b])

Depending on the shape of `T` (of kind `T :: Type -> Type`) 
there are 3 possibilities for `T`'s variance:
1. Covariant: 
  Any function `a -> b` can be lifted into a function `T a -> T b`.

2. Contravariant: 
  Any function `a -> b` can be lifted into a function `T b -> T a`. Or, 
  any function `b -> a` can be lifted into a function `T a -> T b`. 
  This is also a functor but a contravariant functor called `Contravariant`.

3. Invariant: 
  In general, no function `a -> b` can be lifted into a function over `T a`.


>More precisely, variance is a property of a type in relation to its type ctor (one of its type ctors in general). Because Haskell has the convention that map-like functions transform the last type parameter, we can unambiguously say that *a type ctor `T` is contravariant*, as a short-hand for *a type ctor `T a` is contravariant with respect to its type parameter `a`*.


Covariance is the sort Haskellers are most familiar with - it corresponds directly to functors. Covariant functor, in Haskell called just `Functor`, has the `fmap` method which is exactly the witness of this *lifting* motion since its type is `fmap :: Functor T => (a -> b) -> T a -> T b`.

>A type ctor `T` is a `Functor` iff it is covariant.


```hs
-- Convariant functor
class Functor (f :: Type -> Type) where
  fmap :: (a -> b) -> f a -> f b

-- Contravariant functor
class Contravariant (f :: Type -> Type) where
  fmap :: (a -> b) -> f b -> f a
  -- or, equivalently
  fmap :: (b -> a) -> f a -> f b

-- Bifunctor
class Bifunctor (f :: Type -> Type -> Type) where
  bimap :: (a -> b) -> (a' -> b') -> f a a' -> f b b'

-- Profunctor
class Profunctor (f :: Type -> Type -> Type) where
  dimap :: (a -> b) -> (b' -> a') -> f b b' -> f a a'
```

A `Functor` is a type ctor that takes one type argument and is a functor (i.e. covariant) in that arg.

A `Contravariant` is a type ctor that takes one type argument and is contravariant (i.e. a contravariant functor) in that arg.

A `Bifunctor` is a type ctor that takes two type arguments and is a functor (i.e. covariant) in both of them.

A `Profunctor` is a type ctor that takes two type arguments and is a functor (i.e. covariant) in the first argument, while it is contravariant in the second argument. A profunctor is a bifunctor where the first argument is contravariant and the second argument is covariant.


```hs
fmap      :: Functor       f => (a -> b)               -> f a    -> f b
bimap     :: Bifunctor     f => (a -> b) -> (a' -> b') -> f a a' -> f b b'
contramap :: Contravariant f => (a -> b)               -> f b    -> f a
dimap     :: Profunctor    f => (a -> b) -> (b' -> a') -> f b b' -> f a a'
```

Categorically

```
┌─ covariant arg
│     ┌─ contravariant arg
│     │
(a -> b) ≅ hom(a, b)
               │  │
               │  └ contravariant arg
               └ covariant arg

hom(a, b) ≅ (a -> b)
hom(a, b)   profunctor (co in 1st, contra in 2nd) F : ℂ ⨯ ℂᴼᴾ -> 𝔼
hom(a, -)   covariant in the 1st arg              F : ℂ -> 𝔼
hom(-, b)   contravariant in the 2nd arg          F : ℂᴼᴾ -> 𝔼

(a ⨯ b)
(a , -)     functor     (functor in 1st arg)    F : ℂ -> 𝔼
(- , b)     functor     (functor in 2nd arg)
(a , b)     bifunctor   (functor in both args)  F : ℂ ⨯ 𝔻 -> 𝔼

(a + b)
Either a -  functor   (functor in 1st arg)      F : ℂ -> 𝔼
Either - b  functor   (functor in 2nd arg)      F : ℂ -> 𝔼
Either a b  bifunctor (functor in both args)    F : ℂ ⨯ 𝔻 -> 𝔼
(a + b)     bifunctor                           F : ℂ ⨯ 𝔻 -> 𝔼
```




* Haskell98 invariant functors, aka exponential functors.
Haskell98 invariant functors - Edward Kmett's article "Rotten Bananas"
http://comonad.com/reader/2008/rotten-bananas/

* Profunctors in Haskell
http://blog.sigfpe.com/2011/07/profunctors-in-haskell.html

* Functors - Bartosz Milewski
https://bartoszmilewski.com/2015/01/20/functors/
