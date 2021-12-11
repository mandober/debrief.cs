# List

Implementation
- singly-linked list
- cons cell
- list from pairs

Variants
- cons list
- snoc list
- difference list
- split list


## Lists

List is the fundamental datatype in FP, with origins in lambda calculus, and the fact that lists can be constructed in LC means that they can be implemented in any language where functions are first-class values.

List were popularized by the PL Lisp, where they are built from the primitives known as the cons cells. *Cons cells*, which are essentially pairs, have two fields: by default, one is used for storing a value and the other for storing a pointer to the next cons cell (although there are many variations, one of which allows storing a pointer in both fields as a means to construct nested lists).

Lists in pure FPL, such as Haskell, have additional obligation (like any other data structure) and that is persistency. Also, since mutation is disallowed,many technics for sharing lists, or some of their parts, have been developed in order to curb memory consumption.

## List in Haskell

List is not only builtin datatype in Haskell, but it enjoys special privileges in the compiler, mostly related to syntactic sugar.

A list is built of pairs, which are like cons cells in Lisp, and it looks like this:

```
┌───┬───┐  ┌───┬───┐  ┌───┬───┐
│ 1 : o--->│ 2 : o--->│ 3 : ∅ │
└───┴───┘  └───┴───┘  └───┴───┘
```

Alternative view of lists:

```
  :  s              :
 / \  p            / \
1   :  i          4   :
   / \  n            / \
  2   :  e          5   :
     / \               / \
    3   ∅             6   ∅

```

The (:) is the cons data ctor that takes a value and a list and produces a new list with that value prepended onto the given list. The ∅ is also a data ctor, but it just marks the end of the list.

Joining two lists, xs and ys, is implemented such that ys stays passive, while the elements are picked off of the end of the xs list and prepended onto ys.

(x:xs) ++ ys = x : (xs ++ ys)

The problem with this is that (++) is not very efficient operation, being O(n) and with space complexity also being O(n).

This equation shows that, if n is the length of xs list, there will be n stack frames, each holding an element of xs list as (x:) until the base case is hit ([] ++ ys = ys) and the stack unwinds.

```hs
xs ++ ys
-- where
xs = [1,2,3]
-- is actually
[1,2,3] ++ ys =
1: ([2,3] ++ ys) =
1: 2: ([3] ++ ys) =
1: 2: 3: ([] ++ ys) =
1: 2: 3: ys
```

The xs list is traversed once on account of each element taking up a stack frame.

The most efficint operation to insert an element into a list is prepend, i.e. consing it (:) onto the beggining of a list. The begging of a list is the open end of a list, because in order to append an element the entire list has to be traversed.

If you have to join a bunch of small list, since (++) is right-associative

xs ++ ys ++ zs = xs ++ (ys ++ zs)
