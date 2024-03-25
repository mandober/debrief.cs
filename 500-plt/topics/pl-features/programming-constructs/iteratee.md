# Iteratee

https://en.wikipedia.org/wiki/Iteratee

In FP, an iteratee is a composable abstraction for incrementally processing sequentially presented chunks of input data in a purely functional fashion.

With iteratees, it is possible to lazily transform how a resource will emit data, for example, by converting each chunk of the input to uppercase as they are retrieved or by limiting the data to only the five first chunks without loading the whole input data into memory.

Iteratees are also responsible for opening and closing resources, providing predictable resource management.

On each step, an iteratee is presented with one of 3 possible types of values:
- the next chunk of data
- a value to indicate no data is available-
- or a value to indicate the iteration process has finished

It may return one of 3 possible types of values, to indicate to the caller what should be done next:
- one that means `stop` (and contains the final return value)
- one that means `continue` (and specifies how to continue), and
- one that means `signal an error`

The latter types of values in effect represent the possible "states" of an iteratee. An iteratee would typically start in the `continue` state.

Iteratees are used in Haskell and Scala, and are also available for F#. Various slightly different implementations of iteratees exist. For example, in the Play framework, they involve Futures so that asynchronous processing can be performed.

Because iteratees are called by other code which feeds them with data, they are an example of inversion of control. However, unlike many other examples of inversion of control (such as SAX XML parsing), the iteratee retains a limited amount of control over the process. It cannot reverse back and look at previous data (unless it stores that data internally), but it can stop the process cleanly without throwing an exception (using exceptions as a means of control flow, rather than to signal an exceptional event, is often frowned upon by programmers).

## Commonly associated abstractions

The following abstractions are not strictly speaking necessary to work with iteratees, but they do make it more convenient.

### Enumerators
An *Enumerator* is a convenient abstraction for feeding data into an iteratee from an arbitrary data source. Typically the enumerator will take care of any necessary resource cleanup associated with the data source.

Because the enumerator knows exactly when the iteratee has finished reading data, it will do the resource cleanup (such as closing a file) at exactly the right time - neither too early nor too late.

However, it can do this without needing to know about, or being co-located to, the implementation of the iteratee, so enumerators and iteratees form an example of separation of concerns.

### Enumeratees
An *Enumeratee* is a convenient abstraction for transforming the output of either an enumerator or iteratee, and feeding that output to an iteratee.

For example, a `map` enumeratee would map a function over each input chunk.

## Motivations

Iteratees were created due to problems with existing purely functional solutions to the problem of making input/output composable yet correct.

*Lazy I/O* in Haskell allowed pure functions to operate on data on disk as if it were in memory, without explicitly doing I/O at all after opening the file (a kind of memory-mapped file feature), but because it was impossible in general, (due to the Halting problem) for the runtime to know whether the file or other resource was still needed, excessive numbers of files could be left open unnecessarily, resulting in file descriptor exhaustion at the OS level.

*Handler I/O*, i.e. traditional `C`-style I/O is too low-level and requires the developer to be concerned with low-level details such as the current position in the file, which hindered composability.

*Iteratees* and *enumerators* combine the high-level FP benefits of Lazy I/O with the ability to control resources and low-level details where necessary, as afforded by Handler I/O.

## Applications

Iteratees may be used to perform incremental parsing, that is, parsing that doesn't read all the data into memory at once (for example, JSON).

Iteratees are a very general abstraction and can be used for arbitrary kinds of sequential information processing (or mixed sequential/random-access processing) and need not involve any I/O at all. This makes it easy to repurpose an iteratee to work on an in-memory dataset instead of data flowing in from the network.

## History

In a sense, a distant predecessor of the notion of an enumerator pushing data into a chain of one or more iteratees, was the concept of pipeline in Unix.

However, unlike a typical pipeline, iteratees are not separate processes (and hence do not have the overhead of IPC), or even separate threads, although they can perform work in a similar manner to a chain of worker threads sending messages to each other.

This means that iteratees are more lightweight than processes or threads, unlike the situations with separate processes or threads, no extra stacks are needed.

Iteratees and enumerators were invented by *Oleg Kiselyov* for use in Haskell.

## Formal semantics

Iteratees have been formally modelled as *free monads*, allowing equational laws to be validated, and employed to optimise programs using iteratees.

## Implementations

In Haskell, alternative abstractions have been developed:

* The `pipes` package is not related to OS-level pipes, so like iteratees they don't require the use of system calls.

* The `conduits` package has substantially richer libraries of primitives and combinators than iteratees: there are *conduit adapters* for incremental functionalities such as parsing HTML, XML, generalised parsing, making HTTP requests and processing the responses, which makes `conduit` more suitable than iteratees for industrial software development, out of the box.

* Haskell also has `safe-lazy-io` package that provides a simpler solution to some of the same problems, which essentially involves being "strict enough" to pull all data that is required, or might be required, through a pipeline which takes care of cleaning up the resources on completion.


## Ref

- Issue #16 of The Monad Reader: *Iteratee: Teaching an Old Fold New Tricks* 
  John W. Lato (12 May 2010).

- Oleg Kiselyov's Iteratees and Enumerators page:
  http://okmij.org/ftp/Streams.html

- Haskell tutorials: Stanford lecture notes
  http://www.scs.stanford.edu/11au-cs240h/notes/iteratee.html
