# DSA Glossary

https://en.wikipedia.org/wiki/Data_structure

https://en.wikipedia.org/wiki/List_of_data_structures

https://en.wikipedia.org/wiki/List_of_terms_relating_to_algorithms_and_data_structures

<!-- TOC -->

- [Administrative data](#administrative-data)
- [Amortized analysis](#amortized-analysis)
- [Anti-arborescence](#anti-arborescence)
- [Arborescence](#arborescence)
- [Array](#array)
- [AVL tree](#avl-tree)
- [Balanced binary search tree](#balanced-binary-search-tree)
- [Binary heap](#binary-heap)
- [Binary search](#binary-search)
- [Binary tree](#binary-tree)
- [Binary search tree](#binary-search-tree)
- [B-tree](#b-tree)
- [Collateral trees](#collateral-trees)
- [Complete binary tree](#complete-binary-tree)
- [Composite data structure](#composite-data-structure)
- [Container](#container)
- [Conflict-free replicated data type](#conflict-free-replicated-data-type)
- [Collision](#collision)
- [Cuckoo hash table](#cuckoo-hash-table)
- [Directed rooted tree](#directed-rooted-tree)
- [Double-ended queue](#double-ended-queue)
- [Dynamic data structure](#dynamic-data-structure)
- [Empty tree](#empty-tree)
- [Fibonacci heap](#fibonacci-heap)
- [Forset](#forset)
- [Hash function](#hash-function)
- [Hash table](#hash-table)
- [Heap property](#heap-property)
- [Heap order](#heap-order)
- [Heterogeneous data structure](#heterogeneous-data-structure)
- [Homogeneous data structure](#homogeneous-data-structure)
- [In-tree](#in-tree)
- [Judy array](#judy-array)
- [Lefist heap](#lefist-heap)
- [Linear data structure](#linear-data-structure)
- [Linear probing](#linear-probing)
- [Linked list](#linked-list)
- [Map](#map)
- [Nonempty tree](#nonempty-tree)
- [Ordered tree](#ordered-tree)
- [Out-tree](#out-tree)
- [Overhead](#overhead)
- [Pairing heap](#pairing-heap)
- [Path compression](#path-compression)
- [Payload](#payload)
- [Perfect hash function](#perfect-hash-function)
- [Perfect hash table](#perfect-hash-table)
- [Primary clustering](#primary-clustering)
- [Primitive data structure](#primitive-data-structure)
- [Priority queue](#priority-queue)
- [Quadratic probing](#quadratic-probing)
- [Queue](#queue)
- [Red-black tree](#red-black-tree)
- [Rotation](#rotation)
- [Rooted tree](#rooted-tree)
- [Search tree](#search-tree)
- [Sentinel](#sentinel)
- [Separate chaining hash table](#separate-chaining-hash-table)
- [Sequence container](#sequence-container)
- [Skip list](#skip-list)
- [Splay tree](#splay-tree)
- [Splaying](#splaying)
- [Stack](#stack)
- [Static data structure](#static-data-structure)
- [Subtree](#subtree)
- [Tree](#tree)
- [Union find data structure](#union-find-data-structure)
- [Universal hash function](#universal-hash-function)
- [Van Emde Boas tree](#van-emde-boas-tree)

<!-- /TOC -->

## Administrative data
The administrative data is the non-user data needed for proper functioning of a data structure. The size of this, *bureaucratic data*, is also known as a data structure's overhead.

## Amortized analysis
Amortized analysis is a method for analyzing an algorithm's complexity with a take that only considering the worst-case scenarios is a too pessimistic approach for judging an algorithm's efficiency. While certain operations of an algorithm may indeed result in a significant cost in resources, others may not be as costly, so amortized analysis considers them jointly, and compares them against the entire series of operations of the algorithm, also accounting for different types of input, length of the input, and other factors that affect performance.

## Anti-arborescence
When a directed rooted tree has an orientation towards the root, it is called an anti-arborescence or out-tree.

## Arborescence
When a directed rooted tree has an orientation away from the root, it is called an arborescence or an out-tree. This is the common type of tree where only the root node is parentless, while all other nodes have only one parent and a number of children.

## Array
https://www.wikiwand.com/en/Array_data_structure

an array data structure, or simply an array, is a data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key. An array is stored so that the position of each element can be computed from its index tuple by a mathematical formula. The simplest type of data structure is a linear array, also called one-dimensional array.

## AVL tree
An AVL tree is the first ever implementation a self-balancing binary search tree. It is named after Georgy Adelson-Velsky and Evgenii Landis from the USSR, who invented it and described it in their 1962's paper "An algorithm for the organization of information". AVL was the first tree structure with the self-balancing mechanism realized via the invariant that the height of each node's left and right subtree may differ by at most one.

## Balanced binary search tree
A binary search tree with a balance invariant that maintains depth of the tree at O(log n), with `n` being the number of nodes. All operations must maintain the balance requirement.

## Binary heap

https://www.wikiwand.com/en/Binary_heap

An implementation of a priority queue so it is supported by an underlying array and has logarithmic time insertion and deleteMin operations.

A binary heap is a heap data structure that takes the form of a binary tree. Binary heaps are a common way of implementing priority queues. The binary heap was introduced by J. W. J. Williams in 1964, as a data structure for heapsort.

A binary heap is defined as a binary tree with two additional constraints:
1. Shape property: a binary heap is a complete binary tree; that is, all levels of the tree, except possibly the last one (deepest) are fully filled, and, if the last level of the tree is not complete, the nodes of that level are filled from left to right.
2. Heap property: the key stored in each node is either greater than or equal to (≥) or less than or equal to (≤) the keys in the node's children, according to some total order.

## Binary search
A binary search is an algorithm that can search a sorted array in O(log n) time. Its efficiency comes from the invariant of the data structure, e.g. an array needs to be sorted, so that the algorithm starts in the middle of the array, halving it with each pass, thus guaranteed to find any element in at most `log n` number of attempts wrt to the size of the array `n`.

## Binary tree
A binary tree is a k-ary tree with k=2, in which each node has at most 2 children, referred to as the left and right child. Each child induces a subtree rooted at their parent node. Any k-ary tree can be converted into a binary tree.

## Binary search tree
A binary search tree (BST) is a tree in which each node has at most two children. Some implementations stipulate exactly two children per node, others allow less. There are many variants of BSTs depending on where the data is stored: only at nodes, only at leaves, or both.

## B-tree
A B-tree is a self-balancing tree data structure that maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time. The B-tree generalizes the binary search tree, allowing for nodes with more than two children. Unlike other self-balancing binary search trees, the B-tree is well suited for storage systems that read and write relatively large blocks of data, such as databases and file systems.

## Collateral trees
In a binary tree rooted at some node T, the two collateral subtrees are the left L and right R subtree formed by the node's children. L and R are collateral to each other. This term only serves as a reference to a particular part of a tree (i.e. it's not a kind of tree).

## Complete binary tree
A binary tree in which all levels are full, except possibly the last one, which can be left-filled but with no nodes missing. Used in binary heap.

## Composite data structure
A non-atomic data structure is non-primitive or composite data structures. For example, integers are an atomic data structure, while a record, array and string represent comosite data structures.

## Container
A container data structure stores a bunch of objects.

## Conflict-free replicated data type
In distributed computing, a conflict-free replicated data type is a data structure which can be replicated across multiple computers in a network, where the replicas can be updated independently and concurrently without coordination between the replicas, and where it is always mathematically possible to resolve inconsistencies that might come up.

## Collision
Any hash function used to hash entries for a hashing data structure, such as a hash table, occasionaly creates the same hash - what is called a collision - for two distinct entries. Different strategies have been implemented to deal with collisions.

## Cuckoo hash table
A hash table implementation that uses two tables and two hash functions and supports constant worst-case access.

## Directed rooted tree
The edges of a rooted tree can be assigned a natural orientation, either away from or towards the root, in which case the structure becomes a directed rooted tree.

## Double-ended queue
A double-ended queue or deque is a sequence container in which operations are restricted to the front and back.

## Dynamic data structure
Dynamic data structures have their modifiable aspects (such as size, capacity, data population, etc.) free to change during the runtime. For example, a vector, as opposed to an array, is free to change its size during the execution.

## Empty tree
The empty tree, or the null tree, is a tree without nodes. It may be denoted by an empty set, `∅`. Not all types of trees can be empty.

## Fibonacci heap
An implementation of a priority queue that provides O(1) amortized cost for `decreaseKey`.

## Forset
In graph theory, a *forest* is an undirected graph in which any two vertices are connected by at most one path, or, equivalently, an *acyclic undirected graph*, or equivalently a *disjoint union of trees*. A forest is a set of disjoint tree.

## Hash function
Maps items to array indices, with the property that if x = y, then hash(x) = hash(y) and if x≠y, then the collision probability that hash(x) = hash(y) should be approximately 1/M.

## Hash table

https://www.wikiwand.com/en/Hash_table
https://www.wikiwand.com/en/Hash_function

An implementation of an unordered sequence collection that typically provides constant time search and update on average.

A hash table (hash map) is a data structure which implements an associative array abstract data type, a structure that can map keys to values. A hash table uses a hash function to compute an index into an array of buckets or slots, from which the desired value can be found.

Ideally, the hash function will assign each key to a unique bucket, but most hash table designs employ an imperfect hash function, which might cause hash collisions where the hash function generates the same index for more than one key. Such collisions must be accommodated in some way.

In a well-dimensioned hash table, the average cost (number of instructions) for each lookup is independent of the number of elements stored in the table. Many hash table designs also allow arbitrary insertions and deletions of key-value pairs, at (amortized) constant average cost per operation.

In many situations, hash tables turn out to be on average more efficient than search trees or any other table lookup structure. For this reason, they are widely used in many kinds of computer software, particularly for associative arrays, database indexing, caches, and sets.


## Heap property
In e.g. binary tree, the heap property is an invariant stipulating that a node's value must be larger than any of the child values in the left subtree, and smaller than any value in its right subtree.

## Heap order
In a priority queue that allows access to the minimum item, the heap order means that every node's value is at least as large as its parent's value.

## Heterogeneous data structure
Heterogeneous data structures, such as records, hold elements of possibly different types.

## Homogeneous data structure
Homogeneous data structures, such as arrays, hold elements of same type.

## In-tree
see Arborescence

## Judy array
https://www.wikiwand.com/en/Judy_array

A Judy array is a data structure implementing a type of associative array with high performance and low memory usage. Unlike most other key-value stores, Judy arrays use no hashing, leverage compression on their keys (which may be integers or strings), and can efficiently represent sparse data, that is, they may have large ranges of unassigned indices without greatly increasing memory usage or processing time. They are designed to remain efficient even on structures with sizes in the peta-element range, with performance scaling on the order of `O(log₂₅₆n)`. Roughly speaking, Judy arrays are highly optimized 256-ary radix trees.

Judy trees are usually faster than AVL trees, B-trees, hash tables and skip lists because they are highly optimized to maximize usage of the CPU cache. In addition, they require no tree balancing and no hashing algorithm is used.

The Judy array was invented by Douglas Baskins and named after his sister.

Memory allocation: Judy arrays are dynamic and can grow or shrink as elements are added to, or removed from, the array. The memory used by Judy arrays is nearly proportional to the number of elements in the Judy array.
Speed: Judy arrays are designed to minimize the number of expensive cache-line fills from RAM, and so the algorithm contains much complex logic to avoid cache misses as often as possible. Due to these cache optimizations, Judy arrays are fast, especially for very large datasets. On data sets that are sequential or nearly sequential, Judy arrays can even outperform hash tables, since, unlike hash tables, the internal tree structure of Judy arrays maintains the ordering of the keys.
Drawbacks: Judy arrays are extremely complicated. The smallest implementations are thousands of lines of code.

- [Main Judy arrays site](http://judy.sourceforge.net/)
- [How Judy arrays work and why they are so fast](http://judy.sourceforge.net/downloads/10minutes.htm)
- [A complete technical description of Judy arrays](http://judy.sourceforge.net/application/shop_interm.pdf)
- [An independent performance comparison of Judy to H](http://www.nothings.org/computer/judy/)
- [A compact implementation of Judy arrays in 1250 li](http://code.google.com/p/judyarray)

## Lefist heap
The first efficient mergeable priority queue.

## Linear data structure
A data structure is linear if the elements form a sequence. For example, arrays and lists are linear, while trees and graphs are non-linear data structures.

## Linear probing
A hash table implementation that uses only a simple table and tries array slots sequentially starting from the hash value position until an empty slot is found.

## Linked list
A sequence container in which the items are linked; can be singly linked, storing a link to the next item, or doubly linked, storing links to both the previous and next items.

## Map
The storage of key-value pairs. The abstract map type may be realized by many underlying structures, such as an associative array or tree, although a hash table is most commonly used.

## Nonempty tree
At a minimum, a nonempty tree consists of a single, root node. In general, a nonempty tree consists of a root node and potentially many levels of additional nodes, forming a hierarchy.

## Ordered tree
A rooted tree in which an ordering is specified for the children of each node.

## Out-tree
see Anti-arborescence

## Overhead
Every data structure comes with the cost in terms of bytes of space needed to implement it, and then also the cost of each instance of that data structure. This cost includes everything that is needed to support the structure, as well as the cost for its administrativia. So the overhead is the total cost excluding the cost of user data. This cost may also be measured relative to the capacity available for storing user data. For example, array is a data structure with virtually no overhead (succinct and implicit data structure).

## Pairing heap
An implementation of a priority queue that provides o(log N) amortized cost for decreaseKey, uses two links per node, does not require balance information, and performs very well in practice.

## Path compression
In the union/find data structure, the process of changing the parent of every node on a fnd path to the root.

## Payload
Payload is the totality of the user data stored in a particular data structure (in one or all its instances).

## Perfect hash function
All functions used to hash entries before their insertion into a e.g. hash table are known to create collisions from time to time. An ideal hashing functions that would never create collisions despite the size of the collection is referred to as a perfect hash function. Perfect hash functions don't exists but there are functions, or sets of functions used together, that results in a low number of collisions.

## Perfect hash table
A hash table scheme with constant time access obtained by using additional hash tables to resolve collisions.

## Primary clustering
A phenomena in linear probing in which keys with diﬀerent hash values attempt to resolve to similar alternate locations, potentially resulting in poor performance.

## Primitive data structure
Atomic (or indivisible) data structures are primitive data structures. The prime example of the primitive data structures are integers. Non-atomic data structures are called non-primitive or composite data structures.

## Priority queue
A container in which only the minimum can be accessed and removed.

## Quadratic probing
A hash table implementation that uses only a simple table and tries slots sequentially starting from the hash value position plus i2 (starting with i = 0), until an empty slot is found.

## Queue
A sequence container in which insertions are restricted to the back and access and removal is restricted to the front.

## Red-black tree
A balanced search tree with nodes alternating between red and black color and an invariant that a red node must be folowed by a black one.

## Rotation
A process by which parent/child relations among a few nodes are changed, while retaining binary search tree order. Examples include single and double rotations for AVL trees and a zig-zig rotation for splay trees.

## Rooted tree
A rooted tree is a tree in which one vertex has been designated as the root. The root has no parents. The edges of a rooted tree can be assigned a natural orientation, either away from or towards the root, in which case the structure becomes a directed rooted tree. When a directed rooted tree has an orientation away from the root, it is called an arborescence or out-tree; when it has an orientation towards the root, it is called an anti-arborescence or out-tree.

## Search tree
An implementation of an ordered sequence collection that generally uses either binary trees or multiway trees.

## Sentinel
A sentinel or a terminator is a special childless node that holds no value, and serves to terminate other types of nodes (usually those with some number od children). A sentinel is commonly a special value that indicates the base case in an algorithm over a recursive data structure (list, tree).

## Separate chaining hash table
A hash table scheme in which collisions are resolved by singly linked lists.

## Sequence container
Stores items in a linear order, with items inserted at specifed positions.

## Skip list
An ordered container that uses linked lists with multiple forward pointers per node.

## Splay tree
A binary search tree that maintains no balance information but that has O(log N) amortized cost per operation.

## Splaying
The process in splay trees by which a node is rotated toward the root using zig, zig-zig, or zig-zag rotations.

## Stack
A sequence container in which operations are restricted to one end.

## Static data structure
Static data structure have all their modifiable aspects (such as size, capacity, data population, etc.) fixed at compile time. For example, an array, as opposed to a vector, has its variable aspects fixed during the execution.

## Subtree
A subtree is a relative term induced by focusing on an arbitrary node as the relative root - in a binary tree, such (relative) root induces a left and right subtrees. When we focus on a node in a tree (temporary ignoring everything else but this node's descendents), we can consider just a part of the whole tree, i.e. the subtree rooted at the focused node.

## Tree
In graph theory, a tree is *connected, undirected, rooted, ordered, acyclic graph*. A tree is an undirected graph in which any two vertices are connected by exactly one path, or, equivalently, a *connected acyclic undirected graph*.

As a data structure, a tree can be defined as a collection of nodes, where a single node is assigned to be the only parentless node, called the root. Any other node has a single parent. Each node may hold a value and have a number of child nodes. The invarient of trees is that no reference (to child nodes) is duplicated and that none points back to the root; in general, no backward, only forward references.

A tree, considered as a whole, is a hierarchy of nodes, with the root as the single parentless node at the top of the hierarchy. Being a recursive structure, a tree has many subtrees.

## Union find data structure
Maintains a partition of some number of elements under a sequence of union and find operations at only slightly more than constant cost per find.

## Universal hash function
A collection of hash functions where the risk of the collision for any two distinct elements is inversely proportional to the size of the collection.


---


## Van Emde Boas tree
https://www.wikiwand.com/en/Van_Emde_Boas_tree

A Van Emde Boas tree (vEB tree or Van Emde Boas priority queue) is a tree data structure which implements an associative array with m-bit integer keys. It performs all operations in O(log n) time, i.e. O(log log N) time, where N=2ⁿ is the maximum number of elements that can be stored in the tree. N is not to be confused with the actual number of elements stored in the tree, by which the performance of other tree data-structures is often measured. The vEB tree has good space efficiency when it contains a large number of elements. It was invented by a team led by Dutch computer scientist Peter van Emde Boas in 1975.
