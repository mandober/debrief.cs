# B-tree

https://en.wikipedia.org/wiki/B-tree

A B-tree is a self-balancing tree data structure that maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time. The B-tree generalizes the binary search tree, allowing for nodes with more than two children. Unlike other self-balancing binary search trees, the B-tree is well suited for storage systems that read and write relatively large blocks of data, such as databases and file systems.

Invented: 1970
Inventors: Rudolf Bayer, Edward M. McCreight

B-tree      | Average   | Worst
------------|-----------|----------
Search      | O(log n)  | O(log n)
Insert      | O(log n)  | O(log n)
Delete      | O(log n)  | O(log n)
Space compl.| O(n)      | O(n)
