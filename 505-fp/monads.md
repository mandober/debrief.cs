# Monads

* *Purity* implies absence of *side-effects* which make programs easier to understand and reason about, make *lazy evaluation* a viable strategy and enhances modularity and code reuse. On the other hand, side-effects get the job done, they facilitate in-place modifications which in turn improves efficiency of programs. But is it possible to allow side-effects and stay pure? Monads bridge this gap, allowing effectful programming in a pure setting.

* Monads have origin in Category Theory. They were adapted by E. Moggi for structuring denotational semantics. Phillip Wadler's work was on using monads to structure functional programming.

* The key idea of monads is that computations are first-class values.

* Monads promotes disciplined, modular use of side-effects since the type of a program reflects the effects that occur. Monads grant us a great flexibility in tailoring the structure of side-effect according to our precise needs.


## Motivation

In situation when things can go wrong with a sequence of evaluations, we are bound to do a lot of checking:

```hs
safeEval (Div e1 e2) =
    case safeEval e1 of
        Nothing -> Nothing
        Just n1 -> case safeEval e2 of
            Nothing -> Nothing
            Just n2 -> if n2 == 0
                       then Nothing
                       else Just (n1 `div` n2)
```

In FP, in Haskell, we can factor out the emerging pattern: we have a sequence of evaluations and if one evaluation fail, the overall evaluation fails; if not, we make its result available to the following evaluation.

```hs
evalSeq :: Maybe Integer -> (Integer -> Maybe Integer) -> Maybe Integer
evalSeq (Just x) f = Just (f x)
evalSeq Nothing  _ = Nothing
```

Now, this function takes a Maybe Integer and a function from Integer to Maybe Integer; it is evident we'll need to unwrap the integer from the first arg in order to apply the function (in the second arg) to it. It returns the resulting integer wrapped in Maybe as the result.


## Stateful Computations

In the example below, where we enumerate a data-in-leaves-only tree, we notice a repetitive pattern: threading a counter through a sequence of tree numbering computations.

```hs
data Tree a = Leaf a | Tree a :- Tree a

-- Enumerating a tree: replace data in each Leaf with
-- always increasing integer, starting with 0
numberTree :: Tree a -> Tree Int
numberTree t = fst $ aux t 0
    where aux (Leaf _)   n  = (Leaf n, n + 1)
          aux (l0 :- r0) n0 =
            let (l1, n1) = aux l0 n0
                (r1, n2) = aux r0 n1
            in  (l1 :- r1, n2)
```

A **stateful computation** consumes a state and returns a result along with a possibly updated state. The following type synonym captures this idea, with `Int` as state and `a` as the type of the result of computation.

A value (function) of type `StateInt a` can now be viewed as denoting a stateful computation - computing a value of type `a`.

```hs
-- StateInt a computes the value of type a
type StateInt a = Int -> (a, Int)

-- If we also parameterize the state, as `s`, and get the newtype
newtype State s a = State { runState :: s -> (a, s)}
```

When sequencing stateful computations, the resulting state should be passed on to the next computation. That is, *state updating is an effect*, implicitly affecting subsequent computations (as we would expect).

```hs
-- Computation of a value without changing the state:
sReturn :: a -> StateInt a
sReturn a = \n -> (a, n)

-- Sequencing of stateful computations:
sSeq :: StateInt a -> (a -> StateInt b) -> StateInt b
sSeq sa f = \n -> let (a, n') = sa n
                  in f a n'

-- Reading and incrementing the state:
sInc :: StateInt Int
sInc = \n -> (n, n + 1)



-- Enumerating a tree: revisited
numbTree :: Tree a -> Tree Int
numbTree t = fst (ntAux t 0)
    where
        ntAux (Leaf _)   =
            sInc `sSeq` \n ->
            sReturn (Leaf n)
        ntAux (t1 :- t2) =
            ntAux t1 `sSeq` \t1' ->
            ntAux t2 `sSeq` \t2' ->
            sReturn (t1' :- t2')
```
