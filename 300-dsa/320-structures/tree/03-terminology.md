# Tree :: Terminology

https://en.wikipedia.org/wiki/Tree_(data_structure)#Terminology

The terminology tries to be general and cover different k-ary trees; however, binary tree is favored whenever the matters can be simplified down to k=2 case (especially since any k-ary tree can be converted into a binary tree).

We'll also use the term "cell" for a generic node because the term "node" has a lot of bagagge - some authors use it to denote a branch (a branching cell) that may or may not also hold a value.

A *node* (cell) is a structure that may contain data and/or links to other nodes. In fact, the classification of nodes is driven by the presence of these 3 essential properties:

Properties of a cell:
- ± data
- ± children

Based on the children:
- child node: has parent (all nodes but the root)
- parent node: has at least one child (aka internal node)
  - left-childed
  - right-childed
  - full parent: has both children
  - childless node (aka terminal, external): maybe data, but no children
- terminal nodes (no children)
  - leaf: maybe data, no children
  - sentinel: no data, no children


Roles of a cell:
- The root (the only parentless node)
- Internal node: a parent with at least one child
- External node: a node with no children, possibly with data
- Leaf: maybe data, terminal, childless
- Sentinel: no data, childless
- Terminals: leaf or sentinel

A node that is a *parent* must have at least one *child*; otherwise, it would be a leaf. A *leaf* is a childless node that may hold data. A leaf that doesn't hold data is a *sentinel* node. *Terminals* are leaves and sentinels. Conceptually, a parent always has 2 links to its child nodes, however, a left-childed parent has one proper link (referencing its left child node), while the its right link actually leads to a terminal.

## Terms

- Root: the topmost node, which is the only parentless node.
- Parent: a node with at least one child. All nodes have exactly 1 parent.
- Child: one of the two direct descendants of a (parent) node.
- Ancestors: nodes that are direct or indirect parents of a node.
  A node reachable by repeated proceeding from child to parent.
- Descendants: all direct and indirect children of a node
  A node reachable by repeated proceeding from parent to child.
- Siblings are the children that of the same parent.
- Empty tree: a tree without nodes.
- Internal (inner, inode, branch) node is a node with children.
- External (outer, leaf, terminal) node is a node without children.
- *Height* of a node is the length of the longest path to a leaf.
  - the height of a tree is the height of the root.
  - an empty tree has height −1.
- *Depth* of a node is the length of the path to its root (its root path).
  (using zero-based counting)
  - root has depth 0
  - leaves have height 0
  - a single-node-tree has depth and height 0
- each node can be a *relative root node* that anchors its own two subtrees.
- Neighbor: a parent or child node
- Degree of a node: number of children of a node.
  - A leaf necessarily has degree 0.
  - Degree of tree: max degree of a node in the tree.
- Distance: number of edges along the shortest path between two nodes.
- Size of a tree: number of nodes in a tree.
- Level of a node: number of edges along the unique path to the root.
  - the level of a node is the same as depth when using 0-based counting.
- Width: number of nodes in a level.
- Breadth: number of leaves.
- Forest: a set of one or more disjoint trees.
- Ordered tree: a rooted tree in which an ordering is specified for the children of each node.
