# Tree elements

A tree is generally understood to be a *rooted tree*, meaning it has a single *root*, i.e. the *absolute root node* which is the only parentless node.

The root may have any number of child nodes, in fact, the number of *child nodes* determines the *arity of a tree*, which, in general, is n-ary.

A *binary tree* is tree in which each node (branch) has at most two child nodes, i.e. it is a *2-ary tree*. Thus, a 2-child node has both children, called the *left child* and the *right child*, and each child node is a *relative root* of the *subtree* it induces, the *left subtree* and *right subtree*. In relation to each other, the left and right subtrees are *collateral trees*.

A binary tree is a *recursive data structure* for it may be described as either being an *empty tree* or a node with two binary trees as its left and right children. This holds for a binary tree that stores data only at the nodes and not at the leaves. A *leaf* is a node that has no children, but in various versions of trees it may or may not hold data.

A *sentinel node* is a leaf that carries no data and only serves as a terminating marker, similarly to the nil marker in lists.

```
         ⊛           root               level:1, depth:0, heigth:0
       ↙   ↘
     ⊛      ⊛       internal nodes      level:2, depth:1, heigth:1
    /  \      \
  ⊛    ⊛     ⊛                          level:3, depth:2, heigth:2
 / \   / \
⊛  ⊛ ⊛  ⊛          leaves
     /  \
    /\   /\
   /__\ /__\
left     right
   subtree
```

A *level of a tree* counts the number of all collateral subtrees.

The *height of a tree* is 0 for an empty binary tree or a tree which only has the root node.

The *depth of a node* is 0 for a leaf, then +1 for a node.


```
⊙ node with data
⊕ node without data
⊗ leaf
⊚ leaf with data

⊘⊖⊜⊝

  ⊗        ⊙         ⊙          ⊙        ⊕        ⊙
                     /  \        / \       / \      / \
                    ⊗   ⊗     ⊚   ⊗    ⊚   ⊚   ⊚  ⊚
                                                         
0-tree    1-tree    1-tree      2-tree    2-tree   3-tree
```
