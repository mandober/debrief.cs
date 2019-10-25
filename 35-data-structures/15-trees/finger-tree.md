# Finger Trees

https://en.wikipedia.org/wiki/Finger_tree

A **finger tree** is a purely functional data structure (PFDS) that can be used to efficiently implement other functional data structures.

A finger tree gives amortized constant time access to the "fingers" (leaves) of the tree, which is where data is stored, and concatenation and splitting logarithmic time in the size of the smaller piece.

It also stores in each internal node the result of applying some associative operation to its descendants. This "summary" data stored in the internal nodes can be used to provide the functionality of data structures other than trees.
