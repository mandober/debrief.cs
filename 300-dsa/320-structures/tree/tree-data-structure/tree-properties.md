# Tree illustration



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
