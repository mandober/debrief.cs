# Iterator

https://en.wikipedia.org/wiki/Iterator

- iterator is an object that enables traversal of container data structures
- various types of iterators are often provided via container's API
- iterator is behaviorally similar to a database cursor
- iterators date back to 1974 and the CLU programming language
- iterator performs data structure traversal giving access to data elements
- normally, iterator does not perform iteration/enumeration itself

Iterators were introduced as language constructs to allow looping over abstract data structures without revealing their internal representation.

Though the interface and semantics of a given iterator are fixed, 
iterators are often implemented 
in terms of the structures 
underlying a container implementation 
and are often tightly coupled to the container 
to enable the operational semantics of the iterator. 

An iterator performs data structure traversal giving access to data elements, but normally does not perform iteration itself.

* The elements of an aggregate object should be accessed and traversed without exposing its representation (data structures).
* New traversal operations should be defined for an aggregate object without changing its interface. Defining access and traversal operations in the aggregate interface is inflexible because it commits the aggregate object to the particular access and traversal operations and makes it impossible to later add new operations without changing the API.


An **external iterator** may be thought of as a type of pointer that has two primary operations: referencing one particular element in the object collection, called *element access*, and modifying itself so it points to the next element, called *element traversal*. There must also be a way to create an iterator so it points to some first element, as well as some way to determine when the iterator has exhausted all of the elements in the container.

The primary purpose of an iterator is to allow a user to process every element of a container while isolating the user from the internal structure of the container. This allows the container to store elements in any manner it wishes while allowing the user to treat it as if it were a simple sequence or list. An iterator class is usually designed in tight coordination with the corresponding container class. Usually, the container provides the methods for creating iterators.

A *loop counter* (e.g. `for x=1..10`) is sometimes also referred to as a loop iterator. A loop counter, however, only provides the traversal functionality and not the element access functionality.

## Generators
Main article: Generator (computer science)
https://en.wikipedia.org/wiki/Generator_(computer_science)


One way of implementing iterators is to use a restricted form of coroutine, known as a generator. By contrast with a subroutine, a generator coroutine can yield values to its caller multiple times, instead of returning just once.

Most iterators are naturally expressible as generators, but because generators preserve their local state between invocations, they're particularly well-suited for complicated, stateful iterators, such as tree traversers.


## Iterators vs indexing

In procedural languages it is common to use the subscript operator and a loop counter to loop through all the elements in a sequence such as an array. Although indexing may also be used with some OO containers, the use of iterators may have some advantages:
* Counting loops are not suitable to all data structures, in particular to data structures with no or slow random access, like lists or trees.
* Iterators can provide a consistent way to iterate on data structures of all kinds, and therefore make the code more readable, reusable, and less sensitive to a change in the data structure.
* An iterator can enforce additional restrictions on access, such as ensuring that elements cannot be skipped or that a previously visited element cannot be accessed a second time.
* An iterator may allow the container object to be modified without invalidating the iterator. For instance, once an iterator has advanced beyond the first element it may be possible to insert additional elements into the beginning of the container with predictable results. With indexing this is problematic since the index numbers must change.

## Iterator invalidation

The ability of a container to be modified while iterating through its elements has become necessary in modern object-oriented programming, where the interrelationships between objects and the effects of operations may not be obvious. By using an iterator one is isolated from these sorts of consequences. This assertion must however be taken with a grain of salt, because more often than not, for efficiency reasons, the iterator implementation is so tightly bound to the container that it does preclude modification of the underlying container without invalidating itself.

For containers that may move around their data in memory, the only way to not invalidate the iterator is, for the container, to somehow keep track of all the currently alive iterators and update them on the fly. Since the number of iterators at a given time may be arbitrarily large in comparison to the size of the tied container, updating them all will drastically impair the complexity guarantee on the container's operations.

An alternative way to keep the number of updates bound relatively to the container size would be to use a kind of handle mechanism, that is a collection of indirect pointers to the container's elements that must be updated with the container, and let the iterators point to these handles instead of directly to the data elements. But this approach will negatively impact the iterator performance, since it must effectuate a double pointer following to access the actual data element. This is usually not desirable, because many algorithms using the iterators invoke the iterators data access operation more often than the advance method. It is therefore especially important to have iterators with very efficient data access.

All in all, this is always a trade-off between security (iterators remain always valid) and efficiency. Most of the time, the added security is not worth the efficiency price to pay for it. Using an alternative container (for example a singly linked list instead of a vector) would be a better choice (globally more efficient) if the stability of the iterators is needed.




## JavaScript

As of ECMAScript 6, JS supports the *iterator pattern* with any object that provides the `next()` method, which must return an new object with two specific properties: `done` (a Boolean that indicating whether there are more elements remaining) and `value` (an element's value).

```js
xs = ["uno", "dos"]
// these methods return iterators
ite = xs.entries()
itk = xs.keys()
itv = xs.values()

// can make a map out of [].entries iterator
map = new Map(xs.entries())
mit = map.entries()
mit.next() // { value: [0, "uno"], done: false }
mit.next() // { value: [1, "dos"], done: false }
mit.next() // { value: undefined, done: true }    // exshausted iterator
```

Here's an example that shows a reverse array iterator:

```js
revit = (array, len = array.length - 1) => ({
  next: () =>
    len >= 0
      ? { value: array[len--], done: false }
      : { done: true }
  })

const it = reverseArrayIterator(['three', 'two', 'one']);

console.log(it.next().value);                     //-> 'one'
console.log(it.next().value);                     //-> 'two'
console.log(it.next().value);                     //-> 'three'
console.log(`Are you done? ${it.next().done}`);   //-> true
```
