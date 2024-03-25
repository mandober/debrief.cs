# Recursive data structures

https://en.wikipedia.org/wiki/Recursive_data_type

A recursive data type is a data type for values that may contain other values of the same type. Data of recursive types are usually viewed as directed graphs.

They are also called inductive data type, although sometimes that term is used for algebraic data types which are not necessarily recursive.

A recursive data structure is a data structure that is composed of the (smaller or simpler) instances of the same data structure.

For example, linked lists and binary trees are recursive data structures. A list is a recursive data structure because a list is an empty list or a node followed by a list. A binary tree is as an empty tree or a node with two binary trees as its left and right child.

A recursive data structure is defined by a recurrence relation. For example, a linked list is defined as `La = 1 + a ⨯ La`, and a binary tree with values only at nodes by `Ta = 1 + a ⨯ Ta ⨯ Ta`.

The recursive relation used to define a data structure provides a natural model for a recursive algorithm on the data structure.
