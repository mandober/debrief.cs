# Total functional programming

https://en.wikipedia.org/wiki/Total_functional_programming

**Total functional programming**, or *strong functional programming*[^1] (contrasted with ordinary or weak FP) is a programming paradigm that restricts the range of programs to those that are provably terminating.

## Restrictions

Termination is guaranteed by the following restrictions:
1. Restricted form of recursion that operates only on reduced forms of args
  - Walther recursion
  - substructural recursion
  - strongly normalizing, as proven by abstract interpretation of code
2. Every function must be a total function.
  Ways to make partial functions total:
  - return an arbitrary value for undefined inputs
  - return a default arg for undefined inputs
  - exclude undefined inputs via type system (dependent, refinement types)

These restrictions make total functional programming not Turing-complete, however, the set of usable algorithms is still huge.

Any algorithm for which an asymptotic upper bound can be determined (by a program that uses only restricted recursion) can be trivially transformed into a provably-terminating function by using the upper bound as an extra argument that gets decremented on each (recursive) iteration. In other words, *for-loops* (whose upper bound is known) can be integrated into provably terminating functions, as opposed to the *while-loops* (whose upper bound is unknown) which cannot be proved to terminate.

For example, QuickSort is not trivially shown to be substructural recursive, but it only recurs to a maximum depth of the length of the vector; it has the worst-case time complexity of `O(n²)`. A QuickSort implementation on lists (which would be rejected by a substructural recursive checker) is, using Haskell:

```hs
import Data.List (partition)

qsort :: [a] -> [a]
qsort []       = []
qsort [y]      = [y]
qsort (y : ys) =
  let (lo, hi) = partition (< y) ys
  in  qsort lo
      ++ [y] ++
      qsort hi
```

Make it *substructural recursive* using the length of the vector as a limit:

```hs
qsort :: forall a. [a] -> [a]
qsort ls = aux ls ls
  where
  aux :: [a] -> [a] -> [a]
  aux []       ys       = ys   -- shows termination
  aux (_ : _)  []       = []   -- nonrecursive, so accepted
  aux (_ : _)  [y]      = [y]  -- nonrecursive, so accepted
  aux (_ : xs) (y : ys) =      -- rec but on xs which is substructure of 1.arg
    let (lo, hi) = partition (< y) ys
    in  aux xs lo
        ++ [y] ++
        aux xs hi
```

Some classes of algorithms have no theoretical upper bound, but do have a practical upper bound; for example, some heuristic-based algorithms can be programmed to "give up" after some number of recursions, also ensuring termination.

Another outcome of total functional programming is that both strict evaluation and lazy evaluation, in principle, result in the same behaviour; however, one or the other may still be preferable (or even required) for performance reasons.

In total functional programming, a distinction is made between *data* (finitary) and *codata*, which is potentially infinite. Such potentially infinite data structures are used for applications such as I/O.

Using codata entails the use of operations like *corecursion*. However, it is possible to do I/O in a total functional programming language (with dependent types) even without codata.

Both `Epigram` and `Charity` could be considered Total FPL, even though they do not work in the way Turner specifies in his paper. So could programming directly in plain *System F*, and in *Martin-Löf type theory*, and in *Calculus of Constructions*.


## Papers

- David Turner, 1995. Elementary Strong Functional Programming
- David Turner, 2004, Total Functional Programming
- David Turner, 2000, Ensuring Termination in ESFP


[^1] This term is due to: David Turner, 1995. Elementary Strong Functional Programming.
