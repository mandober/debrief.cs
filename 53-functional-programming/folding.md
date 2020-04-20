# Folding

The three most commonly encountered high-order functions (HOF) in functional programming (FP) are probably filter, map and reduce.

All 3 functions act on a foldable type (most often a list): filter will always return a list, a new list; one extreme is a completely empty list, while the other extreme would be to return the same list as the original one. Usually, the list it returns is in between in terms of the number of elements.

On the other hand, the map function always returns a new list that has the same number of elements as the original list. It acts on the values but it doesn't change the list's size.

Finally, the fold function may return anything. It may reduce a list of numbers into a single number, or it may process a list in some other way and return a list as well.

However, between these 3 functions, only one of them has the power to define the other two, which, considering what each may return, puts the spotlight on the fold function.


## Haskell

Haskell fold functions signatures

```hs
foldl  :: (a -> b -> b) -> b -> [a] -> b
foldr  :: (a -> b -> b) -> b -> [a] -> b

foldl1 :: (a -> a -> a) -> a -> [a] -> a
foldr1 :: (a -> a -> a) -> a -> [a] -> a
```

the `foldl` may be defined:

```hs
foldl :: (a -> b -> b) -> b -> [a] -> b
foldl _ acc [] = acc
foldl f acc (x : xs) = f x (foldl f acc xs)

foldl (\x y -> x + y) 0 [2,3,4]
-- 9
```

This translates to JS almost nicely:

```js
//    foldl(  f ,  acc ,  list)
const foldl = f => acc => ([x, ...xs]) =>
  x === undefined
    ? acc
    : foldl (f) (f(acc, x)) (xs)
    //foldl (f, acc,        list)
    : f(x, fld(f)(acc)(xs) )
;
```

The first line is foldl type signature (not necessary but convenient) that, along with the second and third line, constitute the definition of `foldl`.

And here is the pattern matching galore everyone's talkng about: the arguments try the patterns as encountered (top to bottom), executing the RHS expr on match.

The arguments are passed in the order function, acc, list. 

```
f acc list
↓  ↓  ↓    ?
_ acc []
✔  ✔  ✔   It's a match!
```

This match tells us that the first argument was given, but we don't care to even know if it was indeed a function or something else. The accumulator has certianly matched the pattern `acc` bacause anything would; it's the most general binding pattern that makes available the bound argument under that same name in the body expr. The last pattern was a literal `[]` which matches only the empty list; this was a literal so not a binding pattern, meaning we can't reference the (empty) list in the body expr. Nor we want to. We jut want to return the accumulator in this "case" (the base case), so the body expr is just `acc` (return is implicit cuz every expr has a value).

The only interestingpattern in the second part of foldl definition (the part that deals with the recursive case) is `(x:xs)`. To match, the arg must be a non-empty (singleton at least) list; if it is, the list is immediately split, making the head element accessible as `x` and the rest of list as `xs` (ex and excess).



## Implementing the left fold in JS

As the guiding assumption through the implementation, we'll take that the input list is in fact an array of integers, and we expect the output to be a single integer (let's say a sum of the array's elements).



* Name of the function: `foldl`
* Parameters:
  - foldl should accept:
    - *reducer* function, `f`
    - *accumulator*, `acc` (aka initial value, identity element, neutral val)
    - list or array, `arr`


## Reducer

- the reducer should be a binary or ternary function
- it is given (by the fold function) 3 arguments:
  1. accumulator, `acc`
  2. the value of the current list element, `x`
  3. Optinally, the index of the current list element, `i`
- if the reducer is a binary function, it accepts:
  1. accumulator, `acc`
  2. the value of the current list element, `x`
- so it's prototype should be: `reducer(acc, x)`
- the reducer function gets bound to the `f` param


## Accumulator
- the accumulator gets bound to the `acc` param
- acc cannot be just any old value, it has to be in some kind of
  relation with both, the list and the reducer function.

### Abstract Algebra

There are structures in abstract algebra similar to what has been described:
- elements, `a,b,c,e,r`, in a set `A`: `a,b,c,e ∈ A`
- bin.op, `⨀`, which has the properties of
  - associativity: `a ⨀ b ⨀ c = (a ⨀ b) ⨀ c = a ⨀ (b ⨀ c)`
  - totality (closure): `a ⨀ b ∈ A`
- identity element, `e`: `a ⨀ e = e ⨀ a = a`
- inverses: `a ⨀ a' = e` (where `a' ∈ A ` is the inverse of `a`)
- if binop is commutative, then it is an abelian group: `a ⨀ b = b ⨀ a`

The elements of a (certain) set are like values of a certain type. A binary function over that type is a binary operation. It has totality if its output is also a value of the same type. It is associative if 3 values may be combined in any grouping. There is an identity element of the same type that, when combined with other elements (values of that same type), doesn't change them. If an element may be combined with another such that the result is the identity element, then the structure also has inverses i.e. invertability property.

An algebraic structure that has all these properties, plus commutativity, is called an *albelian group*. Without commutativity, it's just a *group*.

The important thing is that a set alone is not an algebraic strucutre. A set together with an attached operation is an *algebraic strucutre*.

The set of natural numbers (including zero) is not a group; the set of natural numbers together with the addition operation is an abelian group.

The set of functions, F, (e.g. from $$\mathbb{N}$$ to $$\mathbb{N}$$), together with the operation of composition is a *category*.


Algebraic structure |id |rev|tot|ass|com| BinOp
--------------------|---|---|---|---|---|-------
Commutative group   | i | r | t | a | c | 
Group               | i | r | t | a |   | 
Monoid              | i |   | t | a |   | 1
Inverse Semigroup   |   | r | t | a |   | 1
Semigroup           |   |   | t | a |   | 1
Groupoid            | i | r |   | a |   | 1
Quasigroup          |   | r | t |   |   | 1
Loop                | i | r | t |   |   | 1
Magma               |   |   | t |   |   | 1
Semigroupoid        |   |   |   | a |   | 1
Category            | i |   |   | a |   | composition













---

For example, a *group* is a structure, a set, endowed with an associative binary operation that combines any two element to give the result that is also a member of the same set. Additinally, it has the identity and inverse elements.

The **identity** (or neutral) element is an element `e` in the set `A`, that
when combined (used in bin op) with any other element of the set `A`,
gives back that element unchanged.

`!∃ e ∈ A : ∀x ∈ A -> x ⨀ e ≡ x`

There exists a unique element `e` in the set `A`, such that, 
if `x` is in the `A`, then `x` combined with `e` gives `x`

More strictly, IF a set `A` has an element, `e`, such that any element of `A` combined with `e` gives back that same element, THEN that set has an identity element.


For all elements `x` in the set `A`, `∀x ∈ A`,
there exists a unique element `e` in the set `A`, `!∃e ∈ A`,
such that when `x` is combined with `e`

acc's relation to the reducer function and the list

- Since it is also called the Identity (or Neutral) element (or value)
  the former suggest this might be the identity relation, that is, that
  the acc is the identity element of a binary operation. A binary op
  has the identity element if, when any other element

  bin(id, x) = x




LIST
- the supplied list or array holds the sequence of elements
- the list would be bound to the `arr` param, but knowing that
  we'll need to deconstruct it anyway, we might as well do it right
  there in the param declaration. So rather then having a param like
  `arr`, we'll put the syntax `([x, ...xs])` instead. This also makes
  sure that the param is an array, any other value triggers a TypeError.

THE ORDER OF FORMAL PARAMS
- deciding on the params order goes: data last, function(s) first
- if `f` param is the first and array binding param last, then we can
  just put the `acc` in the middle. After all `acc` is also data, it's
  just not the primary data.
- This amounts to the sig of the foldl being:
  foldl(f, acc, arr)

THE ARITY OF FOLDL
- we could make foldl a seq of unary functions right away, or
  make it a ternary now, knowing that it can be made such by
  curry-wrapping it, if needed.
- let's go with the unary version, so the sig of foldl is now:
        const foldl = f => acc => ([x, ...xs]) => { ... };
- and the sig of the reducer, f, is:
        reducer(a, b)


The Relationship between the Operation and the Identity Value
The choice of the Identity Value, as you might have guessed, is not random. There is a relationship between the Operation you are using and the Identity Value: Assume the operation is any binary function called operation and the Identity Value is called identity , then you can deduce the Identity Value from the relationship:
operation(identity, x) = x
Therefore, it follows that the Identity Value for the + (plus) Operation is 0 because:
plus(0, x) = 0 + x = x


## The folding process




## The foldl function in JS

```js
const foldl = f => acc => ([x, ...xs]) =>
    x === undefined
        ? acc
        : foldl(f)(f(x, acc))(xs)

// reducing
foldl((a, b) => a+b)(0)([1,2,3,4]); // 10

// not really a reduction
foldl((a, b) => a+b)(0)([1,2,3,4]); // 10

```
