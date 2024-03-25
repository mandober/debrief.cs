# Implicit data structure

Implicit data structure is a space-efficient data structure, which usually means it has a low overhead (low administrative overhead).

It is implicit because the position of an element carries meaning, e.g. forming a relationship between elements.

this is contrasted with the use of pointers to give an explicit relationship between elements.

Definitions of "low overhead" vary, but generally means constant overhead; in big O notation, O(1) overhead. A less restrictive definition is a succinct data structure, which allows greater overhead.

A fundamental distinction is between static data structures (read-only) and dynamic data structures (which can be modified). Simple implicit data structures, such as representing a sorted list as an array, may be very efficient as a static data structure, but inefficient as a dynamic data structure, due to modification operations (such as insertion in the case of a sorted list) being inefficient.

A trivial example of an implicit data structure is an array data structure, which is an implicit data structure for a list, and requires only the constant overhead of the length; unlike a linked list, which has a pointer associated with each data element, which explicitly gives the relationship from one element to the next.
