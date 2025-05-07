# Separate chaining

https://en.wikipedia.org/wiki/Separate_chaining

In separate chaining (aka open hashing), the process involves building a linked list with key-value pair for each search array index. The collided items are chained together through a single linked list, which can be traversed to access the item with a unique search key.

*Hash table as a large array of linked lists*. A hash table itself is an array (or dynamically-resizable array) and each slot holds a pointer to a list associated with that slot. All entries in the list hash to the same key.

Slots in a hash table are then used not to hold the data (payload), but each slot holds a pointer to a *linked list* instead. At a minimum, each slot points to a singleton list (single node list) which actually stores the entry. When a collision occurs, a new node holding the new entry is appended to the list associated with the slot (appended or prepended, it's all the same, but prepending is a natural operation for lists).

Possibly, a *dynamically resizable array* could be used instead of a list. Even if a list is used, its locality of reference could be improved by allocating the nodes in a contiguous block of memory so that searching for an entry is more efficient (compared to a list consisting of nodes that are scattered across the heap).

As an optimization, depending on the complexity of entries - although an entry is usually a compound structure like a record or struct - each list node probably holds a pointer to the entry data. Perhaps it is possible to decrease all that indirection and place that pointer in the slot itself if the slot is not associated with multi-cell list, i.e. if there are no collisions for that particular key.


```
Map    Slots
┌─┬─┐  ┌────────┬───────────┬─┐  ┌────────┬───────┬─┐
│0│●┼─→│ John   │ Lenon     │●┼─→│ Jimmy  │ Page  │●│
│ │ │  └────────┴───────────┴─┘  └────────┴───────┴─┘
├─┼─┤  ┌────────┬───────────┬─┐
│1│●┼─→│ Paul   │ McCartney │●│
│ │ │  └────────┴───────────┴─┘
├─┼─┤  ┌────────┬───────────┬─┐  ┌────────┬───────┬─┐  ┌──────┬────────┬─┐
│2│●┼─→│ George │ Harrisson │●┼─→│ Robert │ Plant │●┼─→│ Mick │ Jagger │●│
│ │ │  └────────┴───────────┴─┘  └────────┴───────┴─┘  └──────┴────────┴─┘
├─┼─┤  ┌────────┬───────────┬─┐
│3│●┼─→│ Ringo  │ Starr     │●│
│ │ │  └────────┴───────────┴─┘
└─┴─┘
```

Let T and x be the hash table and the node respectively, the operation involves as follows:
