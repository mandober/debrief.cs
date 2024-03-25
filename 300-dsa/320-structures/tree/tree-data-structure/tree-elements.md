# Tree illustration


https://en.wikipedia.org/wiki/List_of_algorithms
https://en.wikipedia.org/wiki/List_of_terms_relating_to_algorithms_and_data_structures
https://en.wikipedia.org/wiki/List_of_data_structures
https://en.wikipedia.org/wiki/Comparison_of_data_structures
https://en.wikipedia.org/wiki/Data_structure
https://en.wikipedia.org/wiki/Running_time
https://en.wikipedia.org/wiki/Search_data_structure

- A tree consists of *nodes*.
- By the number of nodes, a tree may be
  - empty (no nodes at all)
  - non-empty tree (any number of nodes)
  - 1-node tree (root only)
  - 2-node tree: root and one child
    - 0-1 node tree (root with a left child)
    - 1-0 node tree (root with a right child)
- A tree is rooted in a single node, called *the root node*.
  - There can be only one *absolute root* node per tree.
  - However, there may be any number of *relative roots*.
  - The root is *the only parentless node* in a tree.
  - All other nodes have *exactly one parent*.
- By their proeprties (position, progeny), nodes specialize into:
  - *the root node*
  - *internal nodes* (at least one child)
  - *leaf* (childless node)
- trees are usually constrained in the number of children a node may have.
  - BST: each nodes has at most 2 children; sometimes it matters which:
    - left-childed
    - right-childed
  - 2-3 tree: a node has either 2 or 3 children

Relative names:
- subtree
- absolute root
- relative root


Child: Nodes directly connected to a node are called children of that node. The roots of subtrees connected to a node are the children of that node. Leaf nodes are childless nodes.

Degree: It is the number of connections made from a node to the sub-hierarchy, that is, the number of children or subtrees. The degree of leaf rolls becomes 0. Trees with equal degrees of all nodes are called homogeneous trees.

Sibling: Nodes connected to the same node are called siblings. The number of siblings of a node is equal to the degree of the node it is connected to. Sibling number = degree.

Parent: The node in which the nodes are directly connected to the upper node is called the parent.

Ancestor: Nodes at the top of the tree are called Ata. There are at least 2 lengths between the child and the parent node.

Descendant: Nodes connected to the child of a grandchild node are called grandchildren.

Path: Path is a list of Nodes that we must traverse in order to go down from one node to another. The path length is equal to 1 less than the number of branches between the start and end nodes.

Level: Level is the number of nodes on the path between two nodes. The level of the root node is 1, while the level of nodes directly connected to the roots is 2. Level = Depth.

Depth: Depth is the distance of a node from the root, that is, level. The depth of the root node is 1. The depth of a tree is the depth of the farthest leaf node.

Height: Height is the number of levels a node has to the farthest leaf node in its chain, called height. The height of the tree is the height of the root.

The most popular tree type is the binary search tree. There are many different trees such as the coding tree, dictionary tree, heap tree.


Binary Search Tree

A node can have a maximum of 2 children. Connections established between the nodes for a key for example numerical value greatness or alphabetical order are some of the examples. If the tree is balanced search operations have O(logN) time complexity. It is statistically proven that when data is entered randomly to binary search trees, trees are not balanced but nearly balanced.

Coding Tree

It is the tree shape established for assigning codes to the characters in the set. The link values on the path from the root to the leaves give the code. Huffman coding is an example of this.

Dictionary Tree

A dictionary tree is a form of the tree for holding words in a dictionary. The aim is to perform the search process in a performance way and to use the memory optimally. Dictionary trees come together to form dictionary forests. There are as many trees in a forest as there are characters in the alphabet, and the root of each tree starts with different characters. For example, since the word father starts with f, it is searched in the word tree starting with f and added there.

Heap Tree

Heap tree is a kind of search tree. In heap tree child nodes always have smaller values than their parent nodes(or the opposite). These types of trees are used as queues.

Expression Tree

Expression trees are used for holding a mathematical expression. Nodes hold numerical values and edges hold mathematical operations.

Holding data in Trees

There are 2 types of data storing in trees node-connection or index-connection.

In node-linkage, trees nodes hold 3 values. Data, pointer1 and pointer2. These pointers point to the next nodes. It is some kind of linked list.

In the index-linkage method, edges between the nodes help you calculate the other edges on the tree. Values get stored in an array. The first element is the root node and the next 2 elements are their parents. For other elements, we need to know the degree of the tree. There is an index relation depending on the degree of the tree and the kinship relations between the nodes are determined according to this relation. Example index: indexLeft(j)=2j+1, indexRight(j)=2j+2.

Traversing on Binary Tree

We can traverse as we pleased but traversing in a planned way ease the algorithm. Pre-order(root, left, right), in-order(left, root, right), post-order(left, right, root) are the three ways of traversing.
