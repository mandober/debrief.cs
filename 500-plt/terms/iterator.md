# Iterator

https://en.wikipedia.org/wiki/Iterator

An **iterator** is an object that provides on-demand access to each item of a collection, in order.

A collection may provide multiple iterators via its interface that provide items in different orders, such as forwards or backwards. An iterator is often implemented in terms of the structure underlying the implementation of a collection, and is often tightly coupled to the collection data structure in order to achieve operational semantics pertaining to iteration. An iterator is behaviorally similar to a database cursor. Iterators date to the CLU programming language in 1974.

An *internal iterator* is implemented by the member functions of the class which has the iteration logic. An *external iterator* is implemented by a separate class which can be attached to the object which has iteration logic. The advantage of external iterator is that, many iterators can be made active simultaneously on the existing or same object.

## Iterator protocol

Iterator protocol subsumes accessing the elements while traversing a collection. The protocol details the manner of iteration, describing the roles of 1 structure and 3 helper functions: `iter()`, `next()` and `done()`. The structure (object), conventially named `Iter`, holds the iteration state by keeping track of the current cursor (cursor is a collection element currently focused). The `iter()` function initializes the iterator object, supplying it with a reference to the first element of the target collection. The `next()` function advances the iterator by updating the reference so it points to the subsequent element in the collection. `next()` relies on the `done()` predicate which checks whether the collection is exhausted. In many PLs, this minimal setup is extended with additional functionality, like the capability to rewind the iterator, iterating in reverse, zipping two or more iterators, etc.

An important property of an iterator is that it isolates the underlying data structure, keeping its implementation hidden from the consumers. Iterator allows the underlying colection to store elements in any manner, even to change the manner of storage (but keeping the same API), while exposing only the "official" API to the clients. Different data structures may implement the same iterator protocol, which then provides uniform and generic access to all of them. Iterators may also be used to represent infinite sets, producing terms of an infinite sequence (such iterators may be entirely realized as functions).
