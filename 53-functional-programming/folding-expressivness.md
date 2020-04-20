# Universality and Expressiveness of fold

*"A tutorial on the universality and expressiveness of fold"* by Graham Hutton

Programming tasks that involve iteration over a data structure may be expressed imperatively (using, e.g. `if` or `while` loops), but become quite elegant and far more comprehensible when expressed using recursive constructs. *Recursive expressions* naturally translate into *mathematical induction* in the formal proof of programs' correctness.

Functional programming gave us the tools to abstract many programming patterns that were inconvenient or impossible to generalize using a procedural paradigm. One of the reoccurring patterns, *iteration*, usually over a data structure that is collection of some kind, can be abstracted using the concept of **folding**.

The *fold* family of functions are *recursion operators* that encapsulate the common recursive patterns occurring in list processing.

The *fold operator* is equipped with a proof principle called *universality*, which encapsulates a common pattern of inductive proof concerning lists.

Fold and its universal property together form the basis of a simple but powerful calculational theory of programs that process lists.

This theory may be generalised from lists to a variety of other datatypes.

The use of the universal property of fold (together with the derived fusion property) both as proof principles that avoid the need for inductive proofs, and as definition principles that guide the transformation of recursive functions into definitions using fold.

Even though the pattern of recursion encapsulated by fold is simple, in a language with tuples and functions as first-class values the fold operator has greater expressive power than expected, thus permitting the application of universal and fusion properties to a larger class of programs.


## The fold operator

The fold operator has its origins in *recursion theory* (Kleene, 1952), while the use of fold as a central concept in a programming language dates back to the reduction operator of APL (Iverson, 1962), and later to the insertion operator of FP (Backus, 1978).

In Haskell, the fold operator for lists can be defined as follows:

```hs
--            f         acc   lst    output
fold :: (a -> b -> b) -> b -> [a] -> b
fold f acc [] = acc
fold f acc (x : xs) = f x (fold f acc xs)
--                    f 1 (fold f [] [2,3])
--                    f 1 (f 2 (fold f [] [3]))
--                    f 1 (f 2 (f 3 []))
```

That is, 
given a function `f :: a → b → b` 
and a value `acc :: b`, 
the function `fold f acc [a]` 
processes a list of type `[a]` 
to returns a value of type `b` 
by replacing the *nil* constructor `[]` at the end of the list 
by the value `acc`, 
and each *cons* constructor, `:`, in the list 
by the function `f`.

```hs
1 : 2 : 3 : []            -- infixr 5 (:) meaning right-associativity:
1 : (2 : (3 : []))
1 (:) (2 (:) (3 (:) []))
(:) 1 ((:) 2 ((:) 3 []))  -- (:) in prefix position
f 1 (f 2 (f 3 acc))       -- replacing (:) with f and [] with ac
-- f x (f x (f x acc))
```

In this manner, the fold operator encapsulates a simple pattern of recursion for processing lists, in which the two constructors for lists are simply replaced by other values and functions.

A number of familiar functions on lists have a simple definition using fold:


```hs
(+) :: [Int] -> Int
(+) = fold (+) 0

(*) :: [Int] -> Int
(*) = fold (*) 1

and :: [Bool] -> Bool
and = fold and True

or :: [Bool] -> Bool
or = fold or False

(++) :: [a] -> [a] -> [a]
(++) = foldl (:)

length :: [a] -> Int
length = fold (\x n -> 1 + n) 0

reverse :: [a] -> [a]
reverse = fold (\x xs -> xs ++ [x]) []

map :: (a -> b) -> [a] -> [b]
map f = fold (\x xs -> f x : xs) []

filter :: (a -> Bool) -> [a] -> [a]
filter p = fold (\x xs -> if p x then x : xs else xs) []
```


## The universal property of fold

As with the fold operator itself, *the universal property* of fold also has its origins in recursion theory. For finite lists, the universal property of fold can be stated as the following equivalence between two definitions for a function `g` that processes lists:

```hs
g []     = acc
g (x:xs) = f x (g xs)  ⇔  g = fold f acc

-- substituting LHS `g` with its definition on RHS, `fold f acc` gives:
fold f acc []     = acc
fold f acc (x:xs) = f x (fold f acc xs)
```

Substituting `g` (on the left side) with `fold f acc`  gives the recursive definition for fold.

```hs
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ acc []     = acc
foldr f acc (x:xs) = f x (foldr f acc xs)
```

Conversely, the two equations for `g` (on the left side) are precisely the assumptions required to show that `g = fold f acc` (on the right side).

```hs
-- replace [] with acc
fold f acc [] = acc
-- replace each (:) with f
fold f acc (x : xs) = f x (fold f acc xs)
```

Folding means replacing all cons `(:)` with `f` and `[]` with `acc`:

```hs
-- foldl  f   acc     list
fold     (+)   0    [0,1,2,3]
0 : 1 : 2 : 3 : []
  +   +   +   + 0
-- replace each (:) with f=(+) and [] with acc=0
```

Taken as a whole, the **universal property** states that for finite lists the function `fold f v` is not just a solution to its defining equations, but in fact the unique solution.
