# Exceptions

An exception occurs if the standard precondition of an operation is false when that operation is invoked. The standard precondition of an operation is the weakest precondition guaranteeing the termination of that operation in a state which satisfies its postcondition.

Exceptions are a form of error handling. An occurrence of an erroneous condition causes an exception to be "raised" to bring attention to it [whose attention?]. Unlike in (naive) error handling, the execution foricibly jumps to another part of the code, presumably where an exception handling routine stands ready to resolve the issue. At the assembly level, exception are realized as jumps. C has no exceptions but it has GOTO and (long) jumps which may be used to implement exceptions.

Exceptions are said to solve the semipredicate problem, but they do it in an abrupt manner, while also significantly lowering the usefulness of function signatures - now a function can claim to return a certain type, but then return something else entirely, or even diverge. Exceptions are operationally similar to continuations in that both use jumps.


One line of though against exceptions places the blame on the potential mistakes implementors make, or for failing to extend the codomain (›don't restrict the domain but extend the codomain‹) with some safe, neutral value that will signify the occurrence of exceptional condition (rather then raising an exception). However, it can be difficult to come up with such a value when the language lacks sum types [which is one of greater CS mysteries: providing excellent support for product types, but then stopping half way - aka half-assing things, foreshadowing another future motto along with the evergreen "always fast, almost correct" - by completely failing to implement sum types].

Another definition of exception: the "inconvenient" result of an operation (in the subjective opinion of the implementor).

Exception as apology message: a partial implementation of the desired abstraction, in which an implementation works often enough to satisfy the client, but sometimes fails and emit an appropriate apology message. The generation of an exception can be viewed as such an apology message.

According to another definition, an exception is an admission by the implementor of the abstraction that it cannot comply with the specification.

While exception handling mechanisms are designed for dealing with results that can only be interpreted outside of the operation that detects them, it is characteristic of an implementation insufficiency that its details are meaningful only inside the implementation of the abstraction. Effective recovery from an implementation insufficiency is possible only if information about the implementation is available. Yet it is the very purpose of the abstraction to hide that information. To illustrate this point, consider the abstraction "integer". Given the external information that the implementation of integers broke when adding 32760 to 10, there is nothing that the user can do. Only if he is aware that the integers are represented as a row of 16 binary digits according to the two's complement convention will he be able to determine if useful computation can be continued with -32766. A knowledge of the external specification (Peano's axioms) alone is insufficient.

## Error handling

Hill [44] considers the problem of a function `f` that takes an integer `n` such that `f` is only defined if `n ≥ 0`. The legality of `n` is checked in the body of the function - if the check fails, what action should be taken?

This problem is fundamental: the idea that certain things are not defined cannot be expressed in an algorithmic language. *Undefinedness* can only be interpreted as freedom to do anything the implementor sees fit. Understood in its strictest sense, any answer is then valid. Having stated that `f` has a limited domain, if a user is foolish enough to still invoke it with a value outside that domain, they cannot blame anyone but themselves for the consequences. Unfortunately, programers must turn the other cheek and see to provide a more user-friedly resolution.

One possible action is to complete `f` by decreeing that in case `n < 0`, the result is `x`. Then the function implemented is not really `f` at all but a new function `g`, where `f n = g n` if `n ∈ dom(f)`, and `x` otherwise.

Nevertheless, all correct calls of `f` can be replaced by calls of `g` without any change in the action of a program containing them. But what about the incorrect calls? If `x ∉ ran(f)`, then the result of `g` can be tested. This has the disadvantage that programer must remember to perform the test, and they are no more likely to do it than to remember to test the precondition `n ≤ 0`.

Hill also points out that if `g` is called within a complex expression the result may be impossible to test. Furthermore, if `ran(f)` is the whole of the result type, then there is no suitable `x`.

If the requirement of functionality is dropped when the value of `n` is outside the permitted range more courses of action become available, including:
1. Terminate the program after printing a message.
2. Add an output parameter. A Boolean result can indicate the success of the call. However, some value must still be returned as the result of `f`.
3. Use a Boolean function whose result is the validity of `n`, and sets an output param to the result of `f(n)` only if `n ∈ dom(f)`.
4. Add a label parameter to `f`, and jump to that label if `n` is invalid.
5. Add a procedure parameter to `f`, and call that procedure if `n` is invalid. Of course, control returns to `f` when the procedure completes, but the decision what to do can be informed by the result of the procedure. It is also possible to include in the procedure a non-local goto and not return at all.

A variant of (5) is to take a function argument, a user supplied function, and call it in case of exception. The result of that function would then determine how to proceed.

* What does an OS do to restore a stable state after abnormal condition? Surely, it cannot just (╯‵□′)╯︵┻━┻ unless it is an irrecoverable condition (a panic).
* Clean-up after abnormal program termination.

## Exception Handling in CLU

>Early annotation of side effects!

The CLU language was developed by the Computation Structures Group at MIT between 1974 and 1978. CLU takes the view that a routine may terminate in one of several ways. A *normal return* indicates that the operation it implements has been successfully completed. However, if such completion proves to be impossible, the routine executes a signal statement instead. Results may be delivered by both return and signal; the heading of a routine must specify the various possibilities.

The library routine for exponentiation has the type:

```s
power: proctype (real, real) returns (real)
       signals (zero_divide, complex_result, overflow, underflow)
```

`zero_divide` occurs if x = 0 and y < 0. `complex result` if x < 0 and y is non-integral. `overflow` and `underflow` occur if the magnitude of the result is too large or too small to represent.

Few of the library routines actually use the facility of passing arguments with a signal, although some of the file manipulation routines pass strings which more precisely define the error.

To handle the exceptions raised by calls of `power` in the calling block, one could write:

```s
begin
  # body of block containing invocations of power...
end except when zero_divide: hl
           when oveflow, underflow: h2
           others : h3
    end
```

If the `zero_divide` exception is raised by an invocation in the block, handler `h1` is executed. If `underflow` or `overflow` occurs, `h2` is executed. If any other exception is raised, `h3` is executed. The handlers will themselves usually be statement sequences, and may contain other `except` statements. 

If the execution of the statement enclosed by an except statement completes without raising an exception, contrul passes to the statement following the except statement without executing any of the handlers. However, if an exception is raised during the execution of the statement, contrul passes imediately to the textually closest handler for that exception (it is necessary to say 'closest' because except statements can be nested). When execution of the handler completes, control passes to the statement following the except statement containing that handle. A handler is outside its own scope: an exception occurring in a handler must be caught either by an except statement within the handler body or by another, enclosing, except statement.






## Terms

- errors
- error handling
- recoverable errors
- irrecoverable errors
- exceptions
- exceptional behaviour, condition, situation, occurrrence
- exception handling
- exception handler
- exceptions are relative and subjective
- hardware exception
- software exception
- interrupts (as a form of exceptions)
- abrupt discontinuation of execution in the current context
- unconditional jumps, GOTO
- try/catch/finally
- resumable exceptions
- the semipredicate problem
- in-band error signalling (using valid domain values to signal an error)
- out-of band signalling (exceptions or jumps in general)
- error exit/return codes
- errno special value
- raising or throwing an exception
- throwing an exception
- re-raising or re-throwing an exception
- catching an exception
- exception/error propagation
- exception that bubbles up until caught
- side effects
- annotating side effects into type signatures
- algebraic side effects
- Java's checked exceptions
