# Mapping

map function gets a unary mapping function and then it receives each element of the list, one at the time. It can only do something with that one element right there; usually, it just applies the function to the element. It has no means of providing continuity across the list's elements, something like the accumulator of a folding function.

The map function gets a `mapper` function to do the actual mapping of elements, and a list (array). There are, at least, two version of the mapper function: it may be unary, expecting just the value of the current element, or it may be a binary function that also expects the index of the current element. It is probably best to also have two version of the map function itself, to be more explicit, or to stick with the latter, binary, version, and enforce the caller to explicitly deal with the second argument.


```js
// ParseInt is a binary fn, so this is wrong:
map(x => ParseInt(x), list)

// you must be explicit:
map(x => ParseInt(x, 10), list)


// must be explicit about the second arg
map((val, idx) => val + 5, list)
// using _ means "don't care", but in JS the arg will be bound anyway
// In FPL it is a proper "discard" param (pattern) that doesn't bind the arg
map((val, _) => val + 5, list)
```
