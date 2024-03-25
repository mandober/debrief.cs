# Zipper

https://en.wikipedia.org/wiki/Zipper_(data_structure)

* Zippers - Learn You a Haskell for Great Good!
http://learnyouahaskell.com/zippers#taking-a-walk

* Zipper (data structure) - Wikipedia
https://en.wikipedia.org/wiki/Zipper_(data_structure)

* Zipper - HaskellWiki
https://wiki.haskell.org/Zipper

* Zipper monad - HaskellWiki
https://wiki.haskell.org/Zipper_monad



In purely functional PLs like Haskell, updating the data at a node of a compound data structure is a sufficienly efficient process despite the setting that prohibits mutations. However, updating a bunch of values in a sequence, especially if the values are closely located, or generally, in any situation when we need to keep updating the structure as data comes in, traversing the entire structure each time an update is needed is very inefficient.

What is needed in such situations is a helper structure that can wrap around a conventinal data structure, endowing it with the ability to keep a location in focus, to move the focus around in a persistent manner, so it can easily manipulate the focused point.

Zipper is such a technic, invented by Gérard Huet in 1997, and thus also called *Huet's zipper* (the terms "zip" and "zipping" have other meanings).

A zipper implemented on aggregate data structures like lists and trees provides convenient traversal and the possibility of continuous updates. Zipper subsumes and generalizes the gap buffer technic sometimes used with arrays.

Zipper works by keeping a reference to a path (a handle on a specific node) of a data sturucture. The node in the path is said to be in *focus*. A zipper is like a pointer to the current path.

Behind the scene, zippers are efficient when making (functional, i.e. making a new minimal copy since direct mutation is prohibited) changes to a data structure, where a new, slightly changed, data structure is returned from an edit operation.

The whole point of the zipper is that it is a structure that "remembers" the unchanged part of the original structure, so that modifying some element in the middle doesn't result in copying the entire structure, only replacing that one element. The zipper saves the part of the structure before the change, allowing it to be shared between the new and the old version of the structure. It provides for fast reconstruction of the unmodified part of the structure before the edited node.


## List zipper

When attached to a list, the zipper becomes the underlying data structure that enables more efficient manipulation of the list. It provides traversal in both directions, and allows easy access to the neighbouring elements by shifting the focus. The zipper does this by splitting a list in two, with the focus placed on the head element of the second part.

```hs
[1,2,3,4]    -- original list
[] [1,2,3,4] -- placed in the zipper
[1] [2,3,4]  -- go left
[2,1] [3,4]  -- go left
[2,1] [13,4] -- map the focus: mapFocus (+10) zipper
[13,2,1] [4] -- go left
[13,2,1] [4] -- go left (remains in this position)

reverse xs ++ ys -- convert zipper to list at any time
```


A zipper "flips" through the list: `left` flips the list one element to the left, `right` does the opposite.







## The Zipper - Gerard Huet 1997

Almost every programmer has faced the problem of representing a tree together with a subtree that is the focus of attention, where that focus may move left, right, up or down the tree. The Zipper is Huet's nifty name for a nifty data structure which fulfills this need.

The main drawback to the purely applicative paradigm of programming is that many efficient algorithms use destructive operations in data structures such as bit vectors or character arrays or other mutable hierarchical classification structures, which are not immediately modelled as purely applicative data structures. A well known solution to this problem is called *functional arrays* (Paulson, 1991). For trees, this amounts to modifying an occurrence in a tree non-destructively by copying its path from the root of the tree. This is considered tolerable when the data structure is just an object local to some algorithm, the cost being logarithmic compared to the naive solution which copies all the tree. But when the data structure represents some global context, such as the buffer of a text editor, or the database of axioms and lemmas in a proof system, this technique is prohibitive.

Here, we explain a simple solution where tree editing is completely local, the handle on the data not being the original root of the tree, but rather the current position in the tree.

The basic idea is simple: the tree is turned inside-out like a returned glove, pointers from the root to the current position being reversed in a path structure. The current location holds both the downward current subtree and the upward path. All navigation and modification primitives operate on the location structure. Going up and down in the structure is analogous to closing and opening a zipper in a piece of clothing, whence the name.

There are many variations on the basic idea. First let us present a version which pertains to trees with variadic arity anonymous tree nodes, and tree leaves injecting values from an unspecified item type.

## Trees, paths and locations

The tree structure is just hierarchical lists grouping trees in a section. For instance, in the UNIX file system, items would be files and sections would be directories. Generalizing this to any level, we would get a notion of a hierarchical Turing machine, where a tape position may contain either a symbol or a tape from a lower level.
