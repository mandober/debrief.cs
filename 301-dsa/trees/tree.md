# Tree

https://en.wikipedia.org/wiki/Tree_(data_structure)

A tree is a common abstract data type that simulates a hierarchical tree structure, such as a family tree, with a particularity that trees in CS are usually considered and depicted upside-down, with the trunk at the top, from which the tree branches out downward.

A list is a linear data structures because it consists of tems that appear in a predetermined sequence - each item has exactly one immediate successor item. In general, a tree is a *non-linear data structure* because it consists of items that can have any number of immediate successors, called "children". That is, while a list has a single path through it, a tree can have many paths. In fact, a list is a sort of a tree; it is a tree in which each item has exactly one immediate child. If this happens, it is said that a tree has degenerated into a list, and it is referred to as a *degenerative tree* (which is the case, e.g. when a BST is constructed by feeding it a monotonic sequence of values).




with a root value and subtrees of children with a parent node, represented as a set of linked nodes.

A tree data structure can be defined recursively as a collection of nodes (starting at a root node), where each node is a data structure consisting of a value, together with a list of references to nodes (the children), with the constraints that no reference is duplicated, and none points to the root.

Alternatively, a tree can be defined abstractly as a whole (globally) as an ordered tree, with a value assigned to each node.

Both these perspectives are useful: while a tree can be analyzed mathematically as a whole, when actually represented as a data structure it is usually represented and worked with separately by node (rather than as a set of nodes and an adjacency list of edges between nodes, as one may represent a digraph, for instance). For example, looking at a tree as a whole, one can talk about "the parent node" of a given node, but in general as a data structure a given node only contains the list of its children, but does not contain a reference to its parent (if it has a parent).

## Tree

Unlike lists, which are linear structures because their items appear in a predetermined sequence, that is, each item has at most one immediate successor, a tree is a *non-linear data structure* because an item can have then one successor.

Trees have many applications: for example, to represent expressions containing nested function calls.



## Tree as graph

A tree may also be considered as a graph with certain constrains:
- graph must be *acyclic* (no cycles or "loops")
- graph must be *connected*, that is, all nodes must be reachable by a path starting at the root

> A tree is an acyclic and connected graph.

**The empty tree**, or the null tree, is a tree without nodes.

**A nonempty tree** consists of a root node and potentially many levels of additional nodes, forming a hierarchy.

The tree data structure is a constrained directed graph, where constrains are:
- each node has exactly one parent (except the root node, which has none)
- no node in a tree points back to its parent
- a node may have any number of child nodes, including none
- a sentinel is a terminating value

Although, given a list of nodes, and for each node a list of references to its children, one cannot tell if this structure is a tree without analyzing its global structure and that it is in fact topologically a tree.



## type theory

In type theory, the abstract tree type `T` with values of some type `E` is defined, using the abstract forest type `F` (list of trees), by the functions:

```
value: T → E
children: T → F
nil: () → F
node: E × F → T
```

with the axioms:

```
value(node(e, f)) = e
children(node(e, f)) = f
```

In terms of type theory, a tree is an inductive type defined by the constructors nil (empty forest) and node (tree with root node with given value and children).


- [Data Trees as a Means of Presenting Complex Data A](http://www.community-of-knowledge.de/beitrag/data-trees-as-a-means-of-presenting-complex-data-analysis/)
- [Description](https://xlinux.nist.gov/dads/HTML/tree.html)
- [Dictionary of Algorithms and Data Structures](https://www.wikiwand.com/en/Dictionary_of_Algorithms_and_Data_Structures)
- [data.tree](http://www.ipub.com/data.tree)
- [WormWeb.org: Interactive Visualization of the C. e](http://wormweb.org/celllineage)
- [Binary Trees by L. Allison](http://www.allisons.org/ll/AlgDS/Tree/)




## Complete Tree
A balanced tree in which the distance from the root to any leaf is either h or h-1.



---

https://www.wikiwand.com/en/Tree_traversal

chrome-extension://chphlpgkkbolifaimnlloiipkdnihall/onetab.html
https://en.wikipedia.org/wiki/Binary_search_tree
https://en.wikipedia.org/wiki/Tree_(data_structure)
https://en.wikipedia.org/wiki/Tree_structure
https://en.wikipedia.org/wiki/Tree_(data_structure)#Terminology
https://en.wikipedia.org/wiki/Tree_(graph_theory)#Plane_tree
https://en.wikipedia.org/wiki/Node_(computer_science)
https://en.wikipedia.org/wiki/Binary_tree
https://en.wikipedia.org/wiki/Tree_(set_theory)

https://en.wikipedia.org/wiki/Optimal_binary_search_tree

https://en.wikipedia.org/wiki/Self-balancing_binary_search_tree
