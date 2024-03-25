# Tree data structure

A **tree** is a non-linear, *abstract data type* that represents a hierarchical, tree-like, structure with a set of connected nodes.

Each node in the tree can be connected to many children (depending on the type of tree), but must be connected to exactly one parent, except for the root node, which has no parent. These constraints mean there are no cycles (loops), i.e. no node can be its own ancestor.

A tree is especially suitable for recursively-defined operations (like traversals) since each child can be treated as the root of its own subtree.

In contrast to *linear data structures*, trees cannot be represented by relations between neighboring nodes in a single straight line.

*Binary trees* are a common type of trees in which the number of child nodes is constrained to at most two. When the order of the children is specified, the data structure corresponds to an *ordered tree* in graph theory.

Each tree node may be associated with a set of values (payload, label, links or pointers to child nodes, size, height, depth, etc.). These values (particularly payload data) may be associated with each node or only with leaf nodes (which are childless nodes).

As an abstract data type, a tree may be represented in a number of ways:
- list of parents with pointers to children
- list of children with pointers to parents
- list of nodes and a separate list of parent-child relations (adjacency list)

Representations might also be more complicated, for example using indexes or ancestor lists for performance.

Different types of trees arise when a set of constraints is introduced:
- binary trees have nodes with at most two children
- heaps are trees that respect *the heap property*
- red-black trees assign colors to the nodes and then imposing additional constraints; e.g. each path through tree must be a sequence of alternating red and black nodes.
- self-balancing trees are automatically rebalanced when, e.g. the difference in height between the left and right subtree is larger then some number.
