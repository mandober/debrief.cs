# Generator

https://en.wikipedia.org/wiki/Generator_(computer_science)

One way of implementing iterators is to use a restricted form of coroutine, known as a generator. By contrast with a subroutine, a generator coroutine can yield values to its caller multiple times, instead of returning just once.

Most iterators are naturally expressible as generators, but because generators preserve their local state between invocations, they're particularly well-suited for complicated, stateful iterators, such as tree traversers.
