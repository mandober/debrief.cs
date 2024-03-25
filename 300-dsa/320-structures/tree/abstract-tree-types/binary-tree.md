# Binary tree

https://en.wikipedia.org/wiki/Binary_tree

A binary tree is a k-ary tree, with k=2, in which each node has at most 2 children, referred to as the left and right child. Each child induces a subtree rooted at their parent node. Any k-ary tree can be converted into a binary tree.

```s
    root
  /  S  \
 /\     /\
/__\   /__\
  L     R
  subtree
  ᐃᴸ    ᐃᴿ
```

A recursive definition using just set theory notions is that a nonempty binary tree is a tuple `⟨S, ᐃᴸ, ᐃᴿ⟩` where:
- `S` is a singleton set containing the root (aka nonempty root node)
- `ᐃᴸ` is a binary tree (or ∅)
- `ᐃᴿ` is a binary tree (or ∅)

To allow for completely empty binary tree, we have to let `S` be possibly ∅.

From the perspective of graph theory, a binary, and k-ary trees in general, are called *arborescences*. It is also possible to interpret a binary tree as an undirected, rather than a directed graph, in which case a binary tree is an ordered, rooted tree. A binary tree is also often interpreted as a special case of an ordered k-ary tree, with k=2.

Most commonly, a binary tree is a graph that is
- directed (all edges flow in one direction)
- connected (all vertices are interconnected)
- rooted (one special, parentless node, called root)
- ordered (left and right child are distinguished)
- acyclic (no back references; only forward refs, from parent to children)

Some configurations of a binary tree, `⟨S, ᐃᴸ, ᐃᴿ⟩`
- ⟨S, ᐃᴸ, ᐃᴿ⟩ generic binary tree with root S and subtrees ᐃᴸ and ᐃᴿ
- ⟨∅, ∅, ∅⟩   or is it just ∅ or ⟨∅⟩ or ⟨⟩ or what?! [unsettled_case]
- ⟨S, ∅, ∅⟩   root only
- ⟨S, L, ∅⟩   root with a left child
- ⟨S, ∅, R⟩   root with a right child
- ⟨S, L, R⟩   root with both children
- ⟨S, ᐃᴸ, ∅⟩  root with a left subtree
- ⟨S, ∅, ᐃᴿ⟩  root with a right subtree


>Allowing for the possibility of an empty tree (and therefore the possibility that any subtree can be empty) is probably a useful case to have in some operations on trees, since an empty tree can act as the identity element.

### Types of cells

Roles of a cell:
- storage,    ± s
- branch,     ± b
- terminator, ± t

Cell types
- root cell: no parents, at most 2 children
- parent cell: at most 2 children (aka internal node?)
  - 2-child parent cell, parent with both children
  - 1-child parent cell (aka internal node)
    - L-child parent cell, left child only parent cell
    - R-child parent cell, right child only parent cell
  - 0-child parent cell (leaf, external node, childless node)
- child cell: has a parent (any cell but the root is a child)


Node
Branch (Fork) - a branching node
internal node
Root
Leaf, external node

### Implementing binary trees

A tree-cell may be considered a generalization of cons-cell in linked lists. In binary trees, a generic node may have 3 fields: 'data', 'left' and 'right'. The `data` field holds a value (payload), while `left` and `right` are references to other nodes.

```
┌───┬───┬───┐
│ v │ L │ R │
│ _ │ _ │ _ │
└───┴───┴───┘
```
A tree-cell


┌──────┬──────┬───────┐
│ data │ left │ right │
│  1   │   ∅  │   ∅   │
└──────┴──────┴───────┘

Leaf
┌──────┬──────┬───────┐
│ data │ left │ right │
│   ∅  │   ∅  │   ∅   │
└──────┴──────┴───────┘


┌───┬───┬───┐     ┌───┬───┬───┐
│ v │ L │ R │     │ v │ L │ R │
│ 1 │ ● │ ● ┼────→│ 3 │ ∅ │ ∅ │
└───┴─┼─┴───┘     └───┴───┴───┘
      │
      ↓
┌───┬───┬───┐
│ v │ L │ R │
│ 2 │ ∅ │ ∅ │
└───┴───┴───┘



└ ┴ ┘ ─ ┌ ┬ ┐│├ ┼ ┤



┌──────┬──────┬───────┐
│ data │ left │ right │
│  "1" │   ∅  │   ∅   │
│  "A" │   ◀  │   ▶   │
│  "A" │   ●  │   ○   │
│  "A" │   ■  │   ▣   │
│  "A" │   ◙  │   ◎   │
└──────┴──────┴───────┘

⊗ ⊚ ⊝ ⊜ ⊙
⊖ ⊛ ⊘ ⊕
⨂ ⨀

◉ ◎
◒ ◑ ◐ ◓ ◕
○ ● ◌
○ ◯
◲ ◳ 
◔ ◍
◖◗
◙ ▣ ■

◀ ▶
◁ ▷

▼ ▲
△ ▽
◻ ◼

┌─────┬────┬───────┐
│     │    │       │
├─────┼────┼───────┤
│     │    │       │
├─────┼────┼───────┤
│     │    │       │
└─────┴────┴───────┘

└ ┴ ┘ ─ ┌ ┬ ┐│├┼┤




### Operations on polymorphic trees

Some operations on binary trees can be complicated by the choice of nodes which are permitted to hold the payload; and in conjunction with the fact whether they are used as terminators as well.

```hs
-- (1)
data Tree a = Leaf a | Node (Tree a) (Tree a)

-- (2)
data Tree a = Leaf | Node a (Tree a) (Tree a)
```

Having the empty nodes, i.e. nodes that don't hold a value but either serve as branches or as terminators, may make it more complicated to define some tree operations while keeping the tree (and operation) polymorhic. For example, finding the max value can be a polymorhic operation if the type of the values stored in the tree can be ordered, `findMax :: Ord a => Tree a -> a`. But, for nodes that do not hold a value this can be problematic as there is no neutral and polymorphic value. By monomorphizing a tree (and the operation), e.g. into `findMax :: Tree Int -> Int`, this becomes trivial since we can use 0 as the (lowest) element.

But in case `findMax :: Tree Char -> Char`, we seem to have to invent a neutral character that compares as being lower than any other one; but in case `findMax :: Tree String -> String`, this again becomes trivial as we can use the empty string as the neutral (lowest) element.




## Binary trees in CS

In CS, binary trees are used in two, very different, ways:

1. First, as a means of accessing nodes based on a particular value or *label* associated with each node.

*Labelled binary trees* are used to implement binary search trees and binary heaps, favored for their efficient searching and sorting properties.

The designation of non-root nodes as left or right child, even when there is only one child, matters in some tree types, in particular, in BST.

However, the particular arrangement of nodes into a tree is not part of the conceptual information. For example, in a BST, the layout of nodes (values in nodes) depends almost entirely on the order in which the values are added, allowing subsequent rearrangements, mostly in the form of *rebalancing* that maintains the invariants; in BST, the invariant is *the heap property*.

2. Second, as a representation of data with a relevant *bifurcating structure*. In such cases, the particular arrangement of nodes *is part of the information* since changing the arrangement of nodes would change the meaning.

Common examples occur with *Huffman coding* and *cladograms*. The everyday division of documents (into chapters, sections, paragraphs) is an analogous example (with n-ary rather than binary trees) where change in the node layout would change the underlying meaning.


## Contents

- Definitions
  - Recursive definition
  - Using graph theory concepts
- Types of binary trees
- Properties of binary trees
- Combinatorics
- Methods for storing binary trees
  - Nodes and references
  - Arrays
- Encodings
  - Succinct encodings
  - Encoding general trees as binary trees
- Common operations
  - Insertion
    - Leaf nodes
    - Internal nodes
  - Deletion
    - Node with zero or one children
    - Node with two children
  - Traversal
    - Depth-first order
    - Breadth-first order

## Definitions

The problem with defining a binary tree in general is the issue of which nodes are allowed to store values (only at leaves, only at nodes, or both); the use of *sentinel nodes* (that terminate childless nodes and don't carry a value); whether each node has exactly two, or at most two, children; whether the entire tree may be empty; and similar factors, some of which overlap.

The common types of binary trees are the one that stores values only at the leaves, the one that stores values only at the (internal) nodes, and the one that stores values at both internal and leaf nodes, in which case it need an extra type of node as a terniator in order to allow storing an even number of values; see (3) and (4) below.

### Binary tree subspecies

Using Haskell, we can define several subspecies of binary trees depending on the nodes which are allowed to store the data. Here we differentiate between these types of nodes:
- `Node` is an intenal node, a branch, that may or may not hold a value.
- `Leaf` is a childless node that may or may not hold a value.
- `Nil` is a sentinel node, i.e. a childless node that doesn't hold a value.

Only the childless types of nodes can be used as terminators. So, `Nil` can always be safely used as terminator, while `Leaf` may be used as a terminator but with some consequences.


```hs
-- (1)
data Tree a = Leaf a | Node (Tree a) (Tree a)

-- (2)
data Tree a = Leaf | Node a (Tree a) (Tree a)

-- (3)
data Tree a = Leaf a | Node a (Tree a) (Tree a)

-- (4)
data Tree a = Nil | Leaf a | Node a (Tree a) (Tree a)
```

In (1), only the leaf nodes can store data, and the internal nodes are empty, serving only as branches. This type of binary tree cannot be empty. It can store 1 value using 1 (Leaf) node, or 2 values using 3 nodes (Node + 2 Leaf nodes as children), or 3 values using 5 nodes (2 Node + 3 Leaf), etc. So storing `n` values requires `2n - 1` nodes.

In (2), only the internal nodes can store data, and the leaves are empty, serving only as terminators. This type of binary tree can be empty (Leaf). It can store 1 value using 3 nodes (1 Node + 2 Leaf), or 2 values using 5 nodes (2 Node + 3 Leaf), or 3 values using 7 nodes (3 Node + 4 Leaf), etc. So storing `n` values requires `2n + 1` nodes.

In (3), both leaves and internal nodes can store data, and the tree cannot be empty. This is not the most flexibe species of binary tree since there are no terminating nodes. This means that every added node must carry a value, and moreover, we can only store an odd number of values (1, 3, 5, …). Storing 1 value requires 1 node (Leaf¹), but storing 2 values is impossible! Storing 3 values requires 2 nodes (Node² + Leaf¹). Storing 4 values is impossible! And so on.

In (4), both leaves and internal nodes can store data, and the difference from (3) is that now we have an extra type of node (`Nil`) that serves as a terminator, so we are again able to store any number of values, and we can also have an empty tree (Nil). The number of required nodes to store `n` values depends on the parity of `n`: to store `n` values, where `n` odd, `n` nodes are required; if `n` is even, `n+1` nodes are required (the extra node is `Nil`).

Due to its form, i.e. being binary, each level of a *perfect binary tree* has number of nodes that is a power of 2 (and so can store a power of 2 values max), but the total number of nodes in a perfect tree is always an odd number (1, 1+2=3, 1+2+4=7, 1+2+4+8=15, …).

### Generalization of a list

If we consider a binary tree as an generalization of a list, we can model it in the similar way. A list consists of *cons-cells*, each with 2 fields, `data` that stores the payload, and `link` that points to the next cons-cell.

We can extend the cons-cells to node-cells such that each has 3 fields, one `data` and two `link` (pointer) fields, `left` and `right`, that point to the left and right child nodes.

A nonexisting (empty) node is then denoted by the empty set, `∅`. The empty set `∅` can be used to terminate childless nodes just like it terminates a list (where it is called `Nil`). If the entire binary tree is permitted to be empty, then it is equal to the empty set, `∅`.

### Recursive definition

To define a binary tree in general, we must allow for the possibility that one of the children may be empty. An artifact, which in some textbooks is called an extended binary tree, is needed for that purpose.

An *extended binary tree* is thus recursively defined as:
- the empty set is an extended binary tree
- if `T₁` and `T₂` are extended binary trees, then denote by `T₁ • T₂` the extended binary tree obtained by adding a root `r` connected to the left to `T₁` and to the right to `T₂`, by adding edges when these subtrees are non-empty.

Another way of imagining this construction (and understanding the terminology) is to consider instead of the empty set a different type of node-for instance square nodes if the regular ones are circles.

### Using graph theory concepts

A binary tree is a *rooted tree* that is also an *ordered tree* (aka a *plane tree*) in which every node has *at most two children*.

A rooted tree naturally imparts a notion of levels (distance from the root), thus for every node a notion of children may be defined as the nodes connected to it a level below.

Ordering of these children (e.g. by drawing them on a plane) makes it possible to distinguish a left child from a right child. It still doesn't distinguish, however, between a node with left but without a right child, from one with right but no left child.

The necessary distinction can be made by first partitioning the edges, i.e. defining the binary tree as triplet `(V, E₁, E₂)`, where `(V, E₁ ⋃ E₂)` is a rooted tree (or equivalently, an arborescence), and `E₁ ⋂ E₂` is empty, and also requiring that, for all `j ∈ {1,2}`, every node has at most one `Eⱼ` child.

A more informal way of making the distinction is to say (quoting the Encyclopedia of Mathematics) that every node has a left child, a right child, neither, or both, and to specify that these are all different binary trees.
