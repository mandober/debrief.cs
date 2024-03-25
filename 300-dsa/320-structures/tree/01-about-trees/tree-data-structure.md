# Tree data structure

https://en.wikipedia.org/wiki/Tree_(data_structure)

In CS, a tree is a widely used abstract data type that represents a hierarchical tree structure with a set of connected nodes.

Depending on the type of tree, each node in the tree can be connected to many children, but must be connected to exactly one parent, except for the root node, which has no parent.

These constraints mean there are no cycles or "loops" (no node can be its own ancestor), and also that each child can be treated as a root of the child induced subtrees it is a parent of. This makes recursion a useful technique for tree traversal.

In contrast to a linear data structure, many tree structures cannot be represented by relations between neighboring nodes in a single straight line.

Binary trees are the most commonly used trees, in which the number of children is constrained to at most two.

When an order on the children is specified, the data structure corresponds to an ordered tree in graph theory.

A node in a tree usually contains a data field for storing a payload, and a number of link fields to connect the child nodes. The data is sometimes associated with nodes, sometimes with leaves, and sometimes with both.

The abstract tree data type can be represented in a number of ways, including a list of parents with pointers to children, a list of children with pointers to parents, or a list of nodes and a separate list of parent-child relations (a specific type of adjacency list). Representations might also be more complicated, e.g. using indexes or ancestor lists for performance.

Trees as used in computing are similar to but can be different from trees in graph theory, trees in set theory, and trees in descriptive set theory.
