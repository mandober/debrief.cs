# Tree Terminology

## Tree
1. A tree is a data structure accessed at the root node. Each node is either a leaf or an internal node. An internal node has one or more child nodes and is called the parent of its child nodes. All children of the same node are siblings. Contrary to a physical tree, the root is usually depicted at the top of the structure, and the leaves are depicted at the bottom.

2. A connected, undirected, acyclic graph. It is rooted and ordered unless otherwise specified.

A tree is a common non-linear abstract data type, representing a hierarchical tree-like structure. A tree is a constrained acyclic and directed graph consinsting of a set of nodes, one of which is the main node, called the root node.

A tree, as a whole, is a hierarchy of nodes and their child nodes, with the root node as the single parentless node at the top of the hierarchy. However, being a recursive structure, a tree has many subtrees.

## The empty tree
The empty tree or the null tree, is a tree without nodes.

## A nonempty tree
A nonempty tree consists of a root node and potentially many levels of additional nodes, forming a hierarchy.

## Subtree
A subtree is a relative term because we can focus on any node in a tree (temporary ignoring everything else but this node's descendents), considering just a part of the whole tree, i.e. the subtree rooted at the focused node.

## Payload
The payload data is the essential user data that we want to store in a data structure.

## Administrative data
The admin data is the non-essential data needed for proper functioning of a data structure. The size of this bureaucratic data is called the data structure'

## Overhead
The overhead is the size of the data structure's administrative data. It may also represent the ratio of user to admin data. A data structure that, in the average, uses more storage for admin data then for user data, has intolerablly high overhead. In this regard, arrays are the most economic data structures, having no overhead at all.

## Node
A node is a basic unit of a recursive data structure, such as lists or trees. A node is a data structure, often carrying some kind of data: either administrative data or the payload or both. Nodes also appears in graphs where they go by the name vertices (vertex). As the basic building block of a tree, a node may carry data and it represents the branchingin a tree by linking to other nodes, i.e. its children. These links are often implemented by pointers. It may have any number of children.

Tree nodes:
- root node (parentless node)
- parent, node with at least one child
- leaf, childless node
- single-child node
- branch is an internal node 
- child node
branch
parent
terminal, sentinel
sibling

## Forest
a set of `n >= 0` disjoint trees.

## Rooted tree
Tree with the root node, i.e. parentless node that is the common ancestor of all other nodes.

## Ordered tree
A rooted tree in which an ordering is specified for the children of each vertex.

## Sentinel
Sentinel is a special terminating value, commontly NULL.

## Terminator
Terminator is a special terminating value, commontly NULL.

## Root
The root node is a special node as it's the only parentless node in a tree. It is the common ancestor to all other nodes in a tree. All other nodes in a tree are the root node's descendents.

## Child
A child is a relative term in a tree hierarchy because every node is someone's child (save for the root).

node directly connected to another node when moving away from the root.

## Parent
The converse notion of a child.

## Neighbor
Parent or child.

## Siblings
A group of nodes with the same parent.

## Descendant
A node reachable by repeated proceeding from parent to child.

## Ancestor
A node reachable by repeated proceeding from child to parent.

## Leaf
A node with no children; so, the last node on a path. Sometimes also called external node.

## Branch
Internal node with at least one child.


## Edge
An edge is a link between a parent and a child node. An edge is always directed, a one-way connection from a parent to a child. Edges are practically unimportant because they carry no information.

## Path
A path is a continuous sequence of immediately succeeding nodes (and edges between them) connecting some starting node with an ending node (the descendant of the start node). In a perfectly balanced BST, there are 2^n paths through the tree, from the root to each leafs.





## Width
The number of nodes in a level. In a perfectly balanced BST, there are 2^n leaves in a tree.

## Breadth
Breadth is the total number of leaves.

## Degree
The number of subtrees (children) of a node is its **degree**. Nodes with degree 0 are called leaf nodes. The degree of a tree is the max degree of any node in the tree.

## Level
The **level** of a node is defined by letting the root be at level zero: 
if a node is at level `l`, then its children are at level `l+1`.

The level may also be defined as all the nodes of a tree with the same depth. The level of a node is 1 + the number of nodes between that node and the root.

## Height
The **height** of a tree is the maximum level of any node in the tree. 
The **height** of a subtree is the maximum level of any node in that subtree. 
If the height of a tree is `h`, then the height of the subtree rooted in one of its children (either left, right, or perhaps both) is `h-1`.

Height is the maximum distance of any node from the root.
Equivalently, the height is the maximum depth of any node. 
The height of a tree is also known as the *order*.
- the height of the empty tree is not defined (-1)
- the height of a tree with the root only is 0

The height of a node is the number of nodes in the longest path between that node and its furthest leaf (excluding the node itself, but including the leaf).

## Depth
Depth of a node is the distance from the root to that node, measured in the number of intervening nodes:
- the root is at depth 0, the root's children at depth 1
- the depth of any node is 1 + the depth of its parent

## Distance
The number of edges in the shortest path between two nodes.
The distance from the root to its left child is 1 (?)

## Size
Size of a tree is the number of nodes in the tree. If a tree tracks its size by an integer installed at each node, then the root holds the size of the entire tree; each node holds the size of the subtree rooted at that node.



The number of subtrees (children) of a node is its **degree**. Nodes with degree 0 are called leaf nodes. The degree of a tree is the max degree of any node in the tree.

The **level** of a node is defined by letting the root be at level zero: if a node is at level `l`, then its children are at level `l+1`.

The **height** of a tree is the maximum level of any node in the tree. The **height** of a subtree is the maximum level of any node in that subtree. If the height of a tree is `h`, then the height of the subtree rooted in one of its children (either left, right, or perhaps both) is `h-1`.





## Binary serach tree

## Self-balancing BST

## Tree traversals
- depth-first
- breadth-first

## depth-first
Traversal by nodes, "vertical" traversal
- pre-order
- in-order
- post-order

## breadth-first
traversal by levels, "horizontal" traversal

## height-balanced tree
(data structure) A tree whose subtrees differ in height by no more than one and the subtrees are height-balanced, too. An empty tree is height-balanced.


---


https://en.wikipedia.org/wiki/Self-balancing_binary_search_tree

https://xlinux.nist.gov/dads/HTML/heightBalancedTree.html
