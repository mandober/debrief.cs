# Coroutine

https://en.wikipedia.org/wiki/Coroutine

Coroutines are computer program components that generalize *subroutines* for *non-preemptive multitasking*, by allowing **execution to be suspended and resumed**.

Coroutines are well-suited for implementing familiar program components such as cooperative tasks, exceptions, event loops, iterators, infinite lists and pipes.

If absent, coroutines may be implemented, with more or less success, using generators, continuations, mutual recursion, even closures.

One important difference between threads and coroutines is that threads are typically preemptively scheduled while coroutines are not.

## Comparison with subroutines

Subroutines may be considered as a special case of coroutines. When a subroutine is invoked, the execution enters the subroutine, and executes the code within, line by line, (always) from the beginning to end, at which point the execution of the subroutine is finished, so the execution exits.

An instance of a subroutine only returns once, and does not hold state between invocations. By contrast, coroutines can exit by calling other coroutines, which may later return to the point where they were invoked in the original coroutine; from the coroutine's point of view, it is not exiting but calling another coroutine.

Thus, a coroutine instance holds state, and varies between invocations; there can be multiple instances of a given coroutine at once. The difference between calling another coroutine by means of *yielding* to it, versus simply calling another routine (which then, also, would return to the original point), is that the relationship between two coroutines which yield to each other is not that of caller-callee, but instead symmetric.

Any subroutine can be translated to a coroutine which does not call yield.

## Example

Here is a simple example of how coroutines can be useful. Suppose you have a consumer-producer relationship where one routine creates items and adds them to a queue and another removes items from the queue and uses them. For reasons of efficiency, you want to add and remove several items at once. In pseudo-code:

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

The queue is then completely filled or emptied before yielding control to the other coroutine using the yield command. The further coroutines calls are starting right after the yield, in the outer coroutine loop.

Although this example is often used as an introduction to multithreading, two threads are not needed for this: the yield statement can be implemented by a jump directly from one routine into the other.


## Comparison with generators

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


*Generators* (semicoroutines) are a subset of coroutines. Specifically, while both can yield multiple times, suspending their execution and allowing re-entry at multiple entry points, they differ in coroutines' ability to control where execution continues immediately after they yield, while generators cannot, instead transferring control back to the generator's caller.

That is, since generators are primarily used to simplify the writing of iterators, the yield statement in a generator does not specify a coroutine to jump to, but rather passes a value back to a parent routine.

However, it is still possible to implement coroutines on top of a generator facility, with the aid of a top-level dispatcher routine (a trampoline, essentially) that passes control explicitly to child generators identified by tokens passed back from the generators.

## Comparison with mutual recursion

Using coroutines for state machines or concurrency is similar to using *mutual recursion with tail calls*, as in both cases the control changes to a different one of a set of routines.

However, coroutines are more flexible and generally more efficient. Since coroutines yield rather than return, and then resume execution rather than restarting from the beginning, they are able to hold state, both variables (as in a closure) and execution point, and yields are not limited to being in tail position; mutually recursive subroutines must either use shared variables or pass state as parameters.

Further, each mutually recursive call of a subroutine requires a new stack frame (unless tail call elimination is implemented), *while passing control between coroutines uses the existing contexts* and can be implemented simply by a jump.
