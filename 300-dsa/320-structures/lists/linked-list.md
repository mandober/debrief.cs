# Linked list

https://en.wikipedia.org/wiki/Linked_list

https://en.wikipedia.org/wiki/Cons
https://en.wikipedia.org/wiki/Unrolled_linked_list
http://www.faqs.org/faqs/lisp-faq/part2/section-9.html
https://en.wikipedia.org/wiki/Constructor_(object-oriented_programming)

[Linked list](https://en.wikipedia.org/wiki/Linked_list)
[Linked](https://en.wikipedia.org/wiki/Linked_data_structure)
[Association list](https://en.wikipedia.org/wiki/Association_list)
[Skip list](https://en.wikipedia.org/wiki/Skip_list)
[Unrolled linked list](https://en.wikipedia.org/wiki/Unrolled_linked_list)
[XOR linked list](https://en.wikipedia.org/wiki/XOR_linked_list)


# Lists

A linked list is a linear collection of elements (called node), whose linearity is not inherited from its physical placement in memory (as it is with arrays), but each node has a pointer to the next node, thus forming a linear sequence.

In the simplest form, each node is composed of data and a reference (acting as a link) to the next node in the sequence. This form allows for efficient insertion or removal of elements from any position in the sequence.

More complex variants of linked lists have additional, backwards, links, which  facilitate a two way movement (back as well as forth) during list manipulations.

A drawback of linked lists is that access time is linear, O(n). Faster access, such as random access, is not feasible. Also since they are not a compact data structure (like arrays) cache locality is poor resulting in lots of cache misses.


# List variants
- linkage: 
  - singly-linked
  - doubly-linked
    - XOR list
- circular list
- unrolled list
- skip lists

## Properties
- linear collection, stored on the heap, consisting of CONS cells
- CONS cells typically has two fields, `CAR` (data) and `CDR` (next)
- both fields may link to immediate value (e.g. ordered pair)
- CAR field usually points to the payload, CDR points to the next cell
- in nested lists, CAR also points to a cell (to a child cell)
- list is terminated by an appropriate data structure, called `NIL`


Most generally, a list is a colection of items. In most realizations, a list is implemented as a singly-linked list, and that following the LISP model wherea an item is represented by a CONS cell. A CONS cell consist of two half, left half, called CAR and the right half called CDR.



A list is accessed from a reference object, which may be just a sole pointer to the first element of the list.


List is traversed 
Terminator data structure indicates the end of a list.


A linked list is a linear collection of data elements

whose order is not given by their physical placement in memory.
Instead, each element points to the next.

It is a data structure consisting of a collection of nodes which together represent a sequence.

each node contains: data, and a reference (in other words, a link) to the next node in the sequence.

This structure allows for efficient prepending of elements.

More complex variants add additional links, allowing more efficient insertion or removal of nodes at arbitrary positions.

A drawback of linked lists is that access time is linear (and difficult to pipeline).

Faster access, such as random access, is not feasible. Arrays have better cache locality compared to linked lists.


A linked list whose nodes contain two fields: an integer value and a link to the next node. The last node is linked to a terminator used to signify the end of the list.

Linked lists are among the simplest and most common data structures. They can be used to implement several other common abstract data types, including lists, stacks, queues, associative arrays, and S-expressions, though it is not uncommon to implement those data structures directly without using a linked list as the basis.

The principal benefit of a linked list over a conventional array is that the list elements can be easily inserted or removed without reallocation or reorganization of the entire structure because the data items need not be stored contiguously in memory or on disk, while restructuring an array at run-time is a much more expensive operation. Linked lists allow insertion and removal of nodes at any point in the list, and allow doing so with a constant number of operations by keeping the link previous to the link being added or removed in memory during list traversal.

On the other hand, since simple linked lists by themselves do not allow random access to the data or any form of efficient indexing, many basic operations—such as obtaining the last node of the list, finding a node that contains a given datum, or locating the place where a new node should be inserted—may require iterating through most or all of the list elements. The advantages and disadvantages of using linked lists are given below. Linked list are dynamic, so the length of list can increase or decrease as necessary. Each node does not necessarily follow the previous one physically in the memory.

-----



Possible renderings of a list:

[1,2,3]

  C
 / \
1   C
   / \
  2   C
     / \
    3   ∅


cons cell 1           cons cell 2
┌──────┬──────┐       ┌──────┬──────┐
│ data │ next─┼──────>│ data │ next─┼───> NULL
└──────┴──────┘       └──────┴──────┘


cell1           cell2           cell3
┌────┐          ┌────┐          ┌────┐
│data│─────────>│data│─────────>│data│─────────> NULL
└────┘next      └────┘next      └────┘next





In case of nested lists, the "data" field is used to hold a reference (pointer) as well.


[[1],[2],[3]]


         Cons
        /    \
    Cons      Cons
   / \       /    \
  1   ∅     /      \
           Cons     Cons
          / \      /    \
         2   ∅    /      \
                 Cons     ∅
                / \
               3   ∅
