# Abstract heap

## Heaps

*Priority queues* are typically based on labeled trees that have the heap property:

> A tree has **the heap property** if the value of every node is LE to the value of each of its children.

Equivalently, the value of each node is LE to the value of all of its descendants.

The root of any tree with the heap property is *the minimum node* (node holding the minimul value in a tree). Moreover, the second-smallest node in any tree with the heap property is one of the root's children.

This is why trees satisfying the heap property are typically used to implement priority queue: because the minimum element is in the root and we don't have to look far to find the next smallest element.

## Amortization

Essentially, **the amortized runtime** of a function is the average runtime over a worst-case sequence of operations.

As an example, if we have n operations which must run in a total of O(n) time, it doesn't necessarily follow that each operation must run in O(1) time (constant time). It would be perfectly acceptable if O(1) of those operations ran in O(n) time (if a constant number of ops run in linear time). *Amortized analysis* is a technique that allows us to analyze data structures that behave in this way.

## Skew heaps

> A **skew heap** is a binary tree (each node has two children), without further constraints.

The structure of a skew heap is just a vanilla binary tree:

```hs
data SkewHeap a = Empty | SkewNode a (SkewHeap a) (SkewHeap a)
```

What makes the skew heap special is the way in which union is done:
- Let t1 be the tree with the smaller root, t2 the other tree
- Take the union of t2 with the right child of t1, storing it as the right child of t1
- Swap the children of t1


## Pairing heaps

Pairing heaps are similar to skew heaps, but in many applications, they are one of the fastest priority queue implementations known. While their time bounds are amortized, making pairing heaps a poor choice for users who need real-time performance, they offer fantastic performance for applications that don't extensively use persistence.

> A **pairing heap** is implemented as a tree where each node may have arbitrarily many children.
