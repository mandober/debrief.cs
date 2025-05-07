# Coroutine

https://en.wikipedia.org/wiki/Coroutine

Coroutines are computer program components that generalize *subroutines* for *non-preemptive multitasking*, by allowing *execution to be suspended and resumed*.

Coroutines are well-suited for implementing familiar program components such as cooperative tasks, exceptions, event loops, iterators, infinite lists and pipes. They have been described as functions whose execution you can pause. If absent, coroutines may be implemented, more-less, using generators, continuations, mutual recursion, or even closures.

Melvin Conway coined the term coroutine in 1958 when he applied it to the construction of an assembly program. The first published explanation of the coroutine appeared later, in 1963.

One important difference between threads and coroutines is that threads are typically preemptively scheduled while coroutines are not. Running two thread in parallel is non-deterministic, whereas the coroutines volontarily yield control. In fact, the keyword `yield` is often used for that.

## Contents

- 1. Definition and types
- 2. Comparison with
  - 2.1. Subroutines
  - 2.2. Threads
  - 2.3. Generators
  - 2.4. Mutual recursion
- 3. Common uses
- 4. Native support
- 5. Implementations

## Definition and types

There is no single precise definition of coroutine. In 1980 C. D. Marlin summarized two widely-acknowledged fundamental characteristics of a coroutine:
* the values of data local to a coroutine persist between successive calls
* the execution of a coroutine is suspended as control leaves it, only to carry on where it left off when control re-enters the coroutine at some later stage.

Besides that, a coroutine implementation has 3 features:
* Control-transfer mechanism. *Asymmetric coroutines* usually provide keywords like `yield` and `resume`. Programmers cannot freely choose which frame to yield to. The runtime only yields to the nearest caller of the current coroutine. On the other hand, in *symmetric coroutines*, programmers must specify a yield destination.
* whether coroutines are provided in the language as first-class objects, which can be freely manipulated by the programmer, or as constrained constructs
* whether a coroutine is able to suspend its execution from within nested function calls. Such a coroutine is a *stackful coroutine*. One to the contrary is called *stackless coroutines*, where unless marked as coroutine, a regular function can't use the keyword `yield`.

The paper "Revisiting Coroutines" published in 2009 proposed term *full coroutine* to denote one that supports first-class coroutine and is stackful.

Full coroutines deserve their own name in that they have the same expressive power as *one-shot continuations* and *delimited continuations*.

Full coroutines are either symmetric or asymmetric. Importantly, whether a coroutine is symmetric or asymmetric has no bearing on how expressive it can be as they are equally as expressive, though full coroutines are more expressive than *non-full coroutines*.

While their expressive power is the same, asymmetrical coroutines more closely resemble routine-based control structures in the sense that control is always passed back to the invoker, which programmers may find more familiar.

## Comparison with subroutines

Subroutines may be considered as a special case of coroutines.

When a *subroutine* is invoked, the execution enters the subroutine, and executes the code within, line by line, always from the beginning to end, at which point the execution of the subroutine is finished, so the execution exits. An instance of a subroutine only returns once, and does not hold state between invocations.

By contrast, *coroutines* can exit by calling other coroutines, which may later return to the point where they were invoked in the original coroutine; from the coroutine's point of view, it is not exiting but calling another coroutine.

Thus, a coroutine instance holds state, and varies between invocations; there can be multiple instances of a given coroutine at once. The difference between calling another coroutine by means of *yielding* to it, versus simply calling another routine (which then, also, would return to the original point), is that the relationship between two coroutines which yield to each other is not that of *caller-callee*, but instead *symmetric*.

Any subroutine can be translated to a coroutine which does not call yield.

### Example

Here is a simple example of how coroutines can be useful. Suppose you have a *consumer-producer relation* where one routine creates items and adds them to a queue and another removes items from the queue and uses them. For reasons of efficiency, you want to add and remove several items at once. In pseudo-code:

```rb
var q := new queue

coroutine producer
  loop:
    until q full
      create new items
      add items to q
    yield to consumer

coroutine consumer
  loop:
    until q empty
      remove items from q
      use items
    yield to producer

call producer
```

The queue is then completely filled or emptied before yielding control to the other coroutine using the `yield` command. The further coroutines calls are starting right after the yield, in the outer coroutine loop.

Although this example is often used as an introduction to multithreading, two threads are not needed for this: *the `yield` statement can be implemented by a jump directly from one routine into the other*.

## Comparison with threads

Coroutines are very similar to threads. However, coroutines are *cooperatively multitasked*, whereas threads are typically *preemptively multitasked*.

Coroutines provide concurrency, because they allow tasks to be performed out of order or in a changeable order, without changing the overall outcome, but they do not provide parallelism, because they do not execute multiple tasks simultaneously.

The advantages of coroutines over threads are that they may be used in a hard-realtime context (switching between coroutines need not involve any system calls or any blocking calls whatsoever), there is no need for synchronization primitives such as mutexes, semaphores, etc. in order to guard critical sections, and there is no need for support from the operating system.

It is possible to implement coroutines using preemptively-scheduled threads, in a way that will be transparent to the calling code, but some of the advantages (particularly the suitability for hard-realtime operation and relative cheapness of switching between them) will be lost.

## Comparison with generators

*Generators* (semicoroutines) are a subset of coroutines.

Specifically, while both can yield multiple times, suspending their execution and allowing re-entry at multiple entry points, they differ in coroutines' ability to control where execution continues immediately after they yield, while generators cannot, instead transferring control back to the generator's caller.

That is, since generators are primarily used to simplify the writing of iterators, the `yield` statement in a generator does not specify a coroutine to jump to, but rather passes a value back to a parent routine.

However, it is still possible to implement coroutines on top of a generator facility, with the aid of a top-level dispatcher routine (a trampoline, essentially) that passes control explicitly to child generators identified by tokens passed back from the generators.

```rb
var q := new queue

generator produce
  loop
    while q is not full
      create some new items
      add the items to q
    yield

generator consume
  loop
    while q is not empty
      remove some items from q
      use the items
    yield

subroutine dispatcher
  var d := new dictionary(generator → iterator)
  d[produce] := start consume
  d[consume] := start produce
  var current := produce
  loop
    call current
    current := next d[current]

call dispatcher
```

### Example in JS

```js
let q = []
let n = 0

function* producer() {
  while (true) {
    while (q.length < 3) {
      q.push(n++)
    }
    yield consumer();
  }
}

function* consumer() {
  while (true) {
    while (q.length != 0) {
      consle.log(q.pop())
    }
    yield producer();
  }
}

producer()
```

## Comparison with mutual recursion

Using coroutines for state machines or concurrency is similar to using *mutual recursion with tail calls*, as in both cases the control changes to a different one of a set of routines.

However, coroutines are more flexible and generally more efficient. Since coroutines yield rather than return, and then resume execution rather than restarting from the beginning, they are able to hold state, both variables (as in a closure) and execution point, and yields are not limited to being in tail position; mutually recursive subroutines must either use shared variables or pass state as parameters.

Further, each mutually recursive call of a subroutine requires a new stack frame (unless tail call elimination is implemented), while passing control between coroutines uses the existing contexts and can be implemented simply by a jump.

## Common uses

Coroutines are useful to implement the following:
- State machines within a single subroutine, where the state is determined by the current entry/exit point of the procedure; this can result in more readable code compared to use of goto, and may also be implemented via mutual recursion with tail calls.
- Actor model of concurrency, for instance in video games. Each actor has its own procedures (this again logically separates the code), but they voluntarily give up control to central scheduler, which executes them sequentially (this is a form of cooperative multitasking).
- Generators, and these are useful for streams - particularly input/output - and for generic traversal of data structures.
- Communicating sequential processes where each sub-process is a coroutine. Channel inputs/outputs and blocking operations yield coroutines and a scheduler unblocks them on completion events. Alternatively, each sub-process may be the parent of the one following it in the data pipeline (or preceding it, in which case the pattern can be expressed as nested generators).
- Reverse communication, commonly used in mathematical software, wherein a procedure such as a solver, integral evaluator, etc., needs the using process to make a computation, such as evaluating an equation or integrand.

## Native support

Coroutines originated as an assembly language method, but are supported in some high-level programming languages.
- C++ (Since C++20)
- C# (Since 2.0)
- Erlang
- F#
- Haskell
- High Level Assembly
- JavaScript
- Julia
- Kotlin (since 1.1)
- Lua
- Perl 5 (using the Coro module)
- PHP (with HipHop, native since PHP 5.5)
- Prolog
- Python
- Racket
- Raku
- Ruby
- Scheme

Since continuations can be used to implement coroutines, programming languages that support them can also quite easily support coroutines.

- Linear resources in Haskell
https://axman6.com/posts/2016-07-10-Linear-resources-in-haskell.html

- Coroutine: Type-safe coroutines using lightweight session types
https://hackage.haskell.org/package/Coroutine

## Implementations

As of 2003, many of the most popular programming languages, including C and its derivatives, do not have built-in support for coroutines within the language or their standard libraries. This is, in large part, due to the limitations of stack-based subroutine implementation.

An exception is the C++ library Boost.Context, part of boost libraries, which supports context swapping on ARM, MIPS, PowerPC, SPARC and x86 on POSIX, Mac OS X and Windows. Coroutines can be built upon Boost.Context.

In situations where a coroutine would be the natural implementation of a mechanism, but is not available, the typical response is to use a *closure* - a subroutine with state variables (static variables, often boolean flags) to maintain an internal state between calls, and to transfer control to the correct point.

Conditionals within the code result in the execution of different code paths on successive calls, based on the values of the state variables. 

Another typical response is to implement an explicit state machine in the form of a large and complex *switch statement* or via a goto statement, particularly a *computed goto*. Such implementations are considered difficult to understand and maintain, and a motivation for coroutine support.

*Threads*, and to a lesser extent *fibers*, are an alternative to coroutines in mainstream programming environments today. Threads provide facilities for managing the real-time cooperative interaction of simultaneously executing pieces of code. Threads are widely available in environments that support C (and are supported natively in many other modern languages), are familiar to many programmers, and are usually well-implemented, well-documented and well-supported. However, as they solve a large and difficult problem they include many powerful and complex facilities and have a correspondingly difficult learning curve. As such, when a coroutine is all that is needed, using a thread can be overkill.

One important difference between threads and coroutines is that threads are typically preemptively scheduled while coroutines are not. Because threads can be rescheduled at any instant and can execute concurrently, programs using threads must be careful about locking. 

In contrast, because coroutines can only be rescheduled at specific points in the program and do not execute concurrently, programs using coroutines can often avoid locking entirely. This property is also cited as a benefit of event-driven or asynchronous programming.

Since fibers are cooperatively scheduled, they provide an ideal base for implementing coroutines above. However, system support for fibers is often lacking compared to that for threads.

## Implementing coroutines in C

In order to implement general-purpose coroutines, *a second call stack* must be obtained, which is a feature not directly supported by the C language.

A reliable (albeit platform-specific) way to achieve this is to use a small amount of inline assembly to explicitly manipulate the stack pointer during initial creation of the coroutine.

This is the approach recommended by Tom Duff in a discussion on its relative merits vs the method used by Protothreads. On platforms which provide the POSIX *sigaltstack* system call, a second call stack can be obtained by calling a springboard function from within a signal handler to achieve the same goal in portable C, at the cost of some extra complexity. C libraries complying to POSIX or SUSv3 provided such routines as getcontext, setcontext, makecontext and swapcontext, but these functions were declared obsolete in POSIX 1.2008.

Once a second call stack has been obtained with one of the methods listed above, the `setjmp` and `longjmp` functions in the standard C library can then be used to implement the switches between coroutines. 

These functions save and restore, respectively, the stack pointer, program counter, callee-saved registers, and any other internal state as required by the ABI, such that returning to a coroutine after having yielded restores all the state that would be restored upon returning from a function call.

Minimalist implementations, which do not piggyback off the setjmp and longjmp functions, may achieve the same result via a small block of inline assembly which swaps merely the stack pointer and program counter, and clobbers all other registers. This can be significantly faster, as setjmp and longjmp must conservatively store all registers which may be in use according to the ABI, whereas the clobber method allows the compiler to store (by spilling to the stack) only what it knows is actually in use.

Due to the lack of direct language support, many authors have written their own libraries for coroutines which hide the above details. Russ Cox's `libtask` library is a good example of this genre. It uses the context functions if they are provided by the native C library; otherwise it provides its own implementations for ARM, PowerPC, Sparc, and x86. Other notable implementations include libpcl, coro, lthread, libCoroutine, libconcurrency, libcoro, ribs2, libdill, libaco, libco.

In addition to the general approach above, several attempts have been made to approximate coroutines in C with combinations of subroutines and macros. Simon Tatham's contribution, based on Duff's device, is a notable example of the genre, and is the basis for Protothreads and similar implementations.

In addition to Duff's objections, Tatham's own comments provide a frank evaluation of the limitations of this approach: "As far as I know, this is the worst piece of C hackery ever seen in serious production code".

The main shortcomings of this approximation are that, in not maintaining a separate stack frame for each coroutine, local variables are not preserved across yields from the function, it is not possible to have multiple entries to the function, and control can only be yielded from the top-level routine.

## Links

* Coroutines
https://softpanorama.org/Lang/coroutines.shtml
https://softpanorama.org/Lang/Cilorama/coroutines_in_c.shtml

* Coroutines in C by Simon Tatham
https://www.chiark.greenend.org.uk/~sgtatham/coroutines.html

* Building Coroutines
https://www.csl.mtu.edu/cs4411.ck/www/NOTES/non-local-goto/coroutine.html
