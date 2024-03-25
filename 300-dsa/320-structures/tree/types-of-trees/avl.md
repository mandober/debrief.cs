# AVL tree

https://en.wikipedia.org/wiki/AVL_tree

An AVL tree is a self-balancing binary search tree named after Georgy Adelson-Velsky and Evgenii Landis from the USSR, who invented it and described it in their 1962's paper "An algorithm for the organization of information". AVL was the first tree structure with the self-balancing mechanism.

B-tree      | Average   | Worst
------------|-----------|----------
Search      | O(log n)  | O(log n)
Insert      | O(log n)  | O(log n)
Delete      | O(log n)  | O(log n)
Space compl.| O(n)      | O(n)


The *invariant property* of AVL trees: `heigth difference > 1 => rebalance`

i.e. the difference in height between the left and right subtree (from the persepective of any node set as a relative root) must not be larger than 1. Otherwise, rebalancing is performed to restore this property. This check is usually conducted on insertion and deletion - if the invariant is broken, these operations will trigger rebalancing via *tree rotations*.

*Lookup*, *insertion*, and *deletion* all take `O(log n)` time in both the average and worst cases, where `n` is the number of nodes in the tree prior to the operation.


AVL trees are often compared with red-black trees because both support the same set of operations and take {\displaystyle {\text{O}}(\log n)}{\displaystyle {\text{O}}(\log n)} time for the basic operations. For lookup-intensive applications, AVL trees are faster than red-black trees because they are more strictly balanced.[4] Similar to red-black trees, AVL trees are height-balanced. Both are, in general, neither weight-balanced nor {\displaystyle \mu }\mu -balanced for any {\displaystyle \mu \leq {\tfrac {1}{2}}}{\displaystyle \mu \leq {\tfrac {1}{2}}};[5] that is, sibling nodes can have hugely differing numbers of descendants.


An **Adelson-Velskii Landis (AVL) tree** is a self-balancing BST that maintains it's height to be `O(log N)` when having `N` vertices in the AVL tree.

BST (and especially balanced BST like AVL Tree) is an efficient data structure to implement a certain kind of Table (or Map) Abstract Data Type (ADT).

A Table ADT supports at least 3 operations:
- Search(v)
- Insert(v)
- Remove(v)

If we use unsorted array to implement Table ADT, it can be inefficient:
- Search(v) runs in O(N), as we may end up exploring all N elements of the ADT if v actually does not exist,
- Insert(v) can be implemented in O(1), just put v at the back of the array,
- Remove(v) runs in O(N) too as we have to first search for v which is already O(N) and later close the resulting gap after deletion - also in O(N).

If we use sorted array to implement Table ADT, we can improve the Search(v) performance but weakens the Insert(v) performance:
- Search(v) can now be implemented in O(log N), as we can now use binary search on the sorted array,
- Insert(v) now runs in O(N) as we need to implement an insertion-sort like strategy to make the array remains sorted,
- Remove(v) runs in O(N) because even if Search(v) runs in O(log N), we still need to close the gap after deletion - which is in O(N).

The goal is to improve basic Table ADT operations (Search, Insert, Remove, etc.) so they run in O(log N) time by exploring BST and balanced BST (AVL Tree) data structure.
