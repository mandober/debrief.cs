# Folding

In FP, the *fold* family of functions are used for processing recursive data structures, such as lists and trees.

It is a family of functions, first because there are two obvious approaches to folding a list with regards to the folding direction: we can start folding it either from the left, `foldl`, or from the right, `foldr`. Another dimension is whether the folding function requires an initial, default, value. Yet another dimension may represent the strictness of evaluation (lazy or eager). There could be as many folding functions as there are combinations of dimensions; if we consider only the 3 dimensions of direction (left or right), initial value (present or absent), strictness (eager or lazy), then there are 8 folding functions in the family.

```
      s      left       right
     t      .--------.-------. i
    r       | foldl' |foldr' | n
   i        |--------|-------| i
  c         |foldl1' |foldr1'| t
 t  .-------|--------|-------'
i   |foldl  |   foldr|    l
n   |-------|--------|   a
i   |foldl1 |  foldr1|  z
t   '-------'--------' y
     left       right
```

Through the use of a supplied function, the results of recursively processing list's constituent parts are recombined, building up a return value.

Folds are in a sense dual to *unfolds*, which take a seed value and apply a function corecursively to decide how to progressively construct a corecursive data structure. On the other hand, a fold recursively breaks that structure down, replacing it with the results of applying a combining function at each node on its terminal values and the recursive results (catamorphism, versus anamorphism of unfolds).

Fold functions may return anything; fold may reduce a list of numbers into a single number (the sum), or it may process a list in some other way and return a new list.


In Haskell `foldr` is defined as:

```hs
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v [] = v
foldr f v (x:xs) = f x (foldr f v xs)
```

We can define it similarly in JS:

```js
const foldr = f => v => ([x, ...xs]) =>
  x === undefined ? v
  : f (x) (foldr (f) (v) (xs))
```
