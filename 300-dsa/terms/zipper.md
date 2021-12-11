# Zipper

https://en.wikipedia.org/wiki/Zipper_(data_structure)

In purely functional programming languages, since mutation is disallowed, a zipper is a technique to represent an aggregate data structure (list, tree) allowing convenient structure traversal and updates.

Zipper enables efficient updates by keeping a reference to a path (the handle on a specific node) in the sturucture. The node in the path is said to be in focus.

The zipper is the pointer to the current path. Behind the scenes the zippers are efficient when making (functional, i.e. making a new minimal copy since direct mutation is prohibited) changes to a data structure, where a new, slightly changed, data structure is returned from an edit operation.

The whole point of the zipper is that it is a structure that "remembers" the unchanged part of the original structure, so that modifying some element in the middle doesn't result in copying the entire structure, only replacing that on element. The zipper saves the part of the structure before the change, allowing it to be shared between the new and the old version of the structure. It provides for fast reconstruction of the unmodified part of the structure before the edited node.


## List zipper

When attached to a list zipper becomes the underlying data structure that enables more efficient manipulation of the list. It provides list traversal in both directions, keeping a focus on an element thereby allowing it to be modified easily. It does this by splitting the list in 3 parts: the "front" list, which is in reversed order, the element under the focus, and the "back" list: `Zip [xs] z [ys]`. Converting a zipper list back to a regular list: `reverse xs ++ [z] ++ ys`.

A zipper list has operations to "flip" through the list: `left` flips the list one element to the left, consing the current focus onto the front list, while taking the head of the back list and placing it in focus. When the back list is depleated, `left` has no effect (implementation detail). The `right` operation acts in opposite to the `left`.

```hs
z1 = fromList [1..3]    -- Zip [] 1 [2,3]
z2 = left $ left z2     -- Zip [2,1] 3 []
z3 = zap (+10) z2       -- Zip [2,1] 13 [4]

-- or, as one-liner:
z3 = zap (+10) $ left $ left $ fromList [1..3]
```

There are some implementation decision to be made, like the issue of converting the empty list into a zipper list. If that is allowed, then the focus field should be a Maybe, `ZipperList ([a], Maybe a, [a])`, with `Nothing` placed in the focus. This introduces additional overhead on the structure and further inconvenience with pattern matching due to exhaustive handling of the `Maybe` type. On the other hand, disallowing this and making it a run-time error means one more partial function in Haskell.

Another decision is about the flipping operations: what happens when the `left` is issued with the "back" segment empty? Seems easiest to treat this as a noop. Another way, particularly if the Maybe type was already introduced, is to handle the focused node as usual, then place `Nothing` in the focus. The third way, handling this situation as a runtime error, seems unnecessarily drastic.


## The Zipper - Gerard Huet 1997

Almost every programmer has faced the problem of representing a tree together with a subtree that is the focus of attention, where that focus may move left, right, up or down the tree. The Zipper is Huet's nifty name for a nifty data structure which fulfills this need.

The main drawback to the purely applicative paradigm of programming is that many efficient algorithms use destructive operations in data structures such as bit vectors or character arrays or other mutable hierarchical classification structures, which are not immediately modelled as purely applicative data structures. A well known solution to this problem is called *functional arrays* (Paulson, 1991). For trees, this amounts to modifying an occurrence in a tree non-destructively by copying its path from the root of the tree. This is considered tolerable when the data structure is just an object local to some algorithm, the cost being logarithmic compared to the naive solution which copies all the tree. But when the data structure represents some global context, such as the buffer of a text editor, or the database of axioms and lemmas in a proof system, this technique is prohibitive.

Here, we explain a simple solution where tree editing is completely local, the handle on the data not being the original root of the tree, but rather the current position in the tree.

The basic idea is simple: the tree is turned inside-out like a returned glove, pointers from the root to the current position being reversed in a path structure. The current location holds both the downward current subtree and the upward path. All navigation and modification primitives operate on the location structure. Going up and down in the structure is analogous to closing and opening a zipper in a piece of clothing, whence the name.

There are many variations on the basic idea. First let us present a version which pertains to trees with variadic arity anonymous tree nodes, and tree leaves injecting values from an unspecified item type.

## Trees, paths and locations

The tree structure is just hierarchical lists grouping trees in a section. For instance, in the UNIX file system, items would be files and sections would be directories. Generalizing this to any level, we would get a notion of a hierarchical Turing machine, where a tape position may contain either a symbol or a tape from a lower level.
