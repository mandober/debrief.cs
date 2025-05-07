# Exception handling

https://en.wikipedia.org/wiki/Exception_handling

Exception handling is the process of responding to *exceptions* - anomalous conditions requiring special processing - during the execution of a program.

In general, exceptions break the normal flow of execution, forcing the control to jump to a pre-registered *exception handler*. The details of how this is done depend on whether it is a *hardware exception* or *software exception* and how the latter is implemented.

Exceptions are defined by different layers of a computer system. 
The typical layers are
- CPU defined interrupts
- OS defined signals
- programming language defined exceptions

Each layer requires different ways of exception handling although they may be interrelated, e.g. a CPU interrupt could be turned into an OS signal. Some exceptions, especially hardware ones, are usually handled gracefully such that execution resumes where it was interrupted.

## Broken preconditions

The definition of an exception is based on the observation that each procedure has *preconditions*, a set of conditions and invariants that need to remain unbroken for the procedure to terminate normally (as expected). The mechanics of exceptions allow the procedure to *raise an exception* if the preconditions are violated. The exception handling mechanism then has the chance to handle the exception.

However, exceptions are usually raised on *irrecoverable errors* - otherwise, a more "lightweight" method could be used - meaning that the exception handler can not do very much to restore the normal execution, but at least it can perform the clean up, safely closing or discarding the used resources.

The preconditions, and the definition of exception, is subjective, defined entirely by the programmer and their notion of what counts as exceptional behaviour. For example, a common reason to throw an exception - division by zero - may be handled another way, e.g. by returning 0 or a sentinel value.

Common exceptions include
- division by zero
- invalid arguments (arg outside the function's domain)
- unavailable resource (missing file, unreachable server)
- out-of-memory errors
- normal conditions that require special handling (e.g. end of file reached)

Exception handling solves *the semipredicate problem*, which is about *in-band error signalling*, i.e. signalling errors with values that are valid domain members. This makes it impossible for the client to tell errors and legal values apart.

In languages without exceptions, such as C, functions need to signal errors in some other way, e.g. by returning a specific exit code or by setting the special `errno` value. In Linux, programs generally signal errors via their exit code, by returning a non-zero number (and returning zero otherwise).

Taking a broader view, errors could be considered a proper subset of exceptions, and explicit error mechanisms such as `errno` as (verbose) form of exception handling.

The term "exception" is preferred to "error" as it was, at least, initially, free of being associated with erroneous conditions. It was intended to signify an exceptional occurrence - an abnormal or unusual condition or state. A condition viewed as an error by one procedure or programmer may not be deemed as such by another.

The term "exception" may be misleading because its connotation of "anomaly" indicates that raising an exception is abnormal or unusual, when, in fact, raising an exception may be a normal practice in a program. For example, if a lookup function on an associative array throws an exception if the key has no value associated - depending on the context, this "absence of the key" exception may occur much more often than a successful lookup.

Operationally, exceptions need not only be related to errors, although, semantically, they are indeed associated with errors.

Although some claim that exceptions solve the semipredicate problem by allowing *out-of band signalling* of errors, others point out that exceptions completely diminish the usefulness of type signatures. For if a function claims (via its type signature) to (always) return an integer, then it's quite unremarkable that it may sometimes break this promise and return something else entirely (like an exception message in form of a string, or even no value at all).

Exceptions cannot be integrated into a valid domain range, which makes functions (in strongly-typed languages, from Haskell up) dishonest. Exceptions make pure functions impossible because they are another *side effect*. The research into this problem has introduced new concepts into programming language theory, like the necessity to *annotate all side effects*. One such concept, *algebraic side effects*, insists on an ennumeration and annotation of all side effects a function may exert, integrating them into the function's "normal" type signature.

JAVA has *checked exceptions*, where a function also contains an annotation that it may throw an exceptions (and thus possibly diverge). C compilers (GCC and Clang at least) have the 'nothrow' attribute signifying that the function does not diverge (which enables optimizations).

## Hardware exceptions

There is no clear consensus as to the exact meaning of exceptions with respect to hardware. From the implementation point of view, they are handled identically to interrupts: the processor halts execution of the current program, finds the *interrupt handler* in the *interrupt vector table* registered for that exception or interrupt condition, saves the current state, and then passes control to the handler.

In hardware, but also in software exceptions, the control may not necessarily return, or, if it does, it may not return to the same palce where the interrupt occurred (but to some arbitrary point). Functions that throw exceptions should be annotated as divergent.

The first hardware exception handling was implemented in the UNIVAC I from 1951. Arithmetic overflow executed two instructions at address 0 which could transfer control or fix the result.

Software exception handling has developed in the 1960s and 1970s. Subsequently, exceptions were adopted by many programming languages from the 1980s onward.

## IEEE 754 floating-point exceptions

(...)

The default IEEE 754 exception handling behaviour of resumption following pre-substitution of a default value avoids the risks inherent in changing flow of program control on numerical exceptions. For example, the 1996 Cluster spacecraft launch ended in a catastrophic explosion due in part to the Ada exception handling policy of aborting computation on arithmetic error. William Kahan claims the default IEEE 754 exception handling behavior would have prevented this.

## In programming languages

Main article: [Exception handling (programming)](https://en.wikipedia.org/wiki/Exception_handling_(programming))

In computer programming, several language mechanisms exist for exception handling. The term "exception" may be used to denote a *data structure storing information about an exceptional condition*. One mechanism to transfer control, aka to "raise an exception", is known as `throw`; the exception is said to be "thrown". The execution is then transferred to a `catch` block.

## In user interfaces

Front-end web development frameworks, such as React and Vue, have introduced error handling mechanisms where errors propagate up the user interface (UI) component hierarchy, in a way that is analogous to how errors propagate up the call stack in executing code.

Here the error boundary mechanism serves as an analogue to the typical try-catch mechanism. Thus a component can ensure that errors from its child components are caught and handled, and not propagated up to parent components.

## Links

https://en.wikipedia.org/wiki/Exception_handling
https://en.wikipedia.org/wiki/IEEE_754#Exception_handling
https://en.wikipedia.org/wiki/C99#IEEE_754_floating-point_support

https://en.wikipedia.org/wiki/Exception_handling_(programming)
https://en.wikipedia.org/wiki/Exception_handling_syntax
https://en.wikipedia.org/wiki/Precondition
https://en.wikipedia.org/wiki/Semipredicate_problem

https://en.wikipedia.org/wiki/Interrupt
https://en.wikipedia.org/wiki/Interrupt#Terminology
https://en.wikipedia.org/wiki/Interrupt_handler
https://en.wikipedia.org/wiki/Interrupt_vector_table


On the x86 computer architecture, a *triple fault* is a special kind of exception generated by the CPU when an exception occurs while the CPU is trying to invoke the *double fault* exception handler, which itself handles exceptions occurring while trying to invoke a *regular exception handler*.


## More

* Category: Exception
https://wiki.c2.com/?CategoryException

* Unchecked Exceptions - The Controversy (Java)
https://docs.oracle.com/javase/tutorial/essential/exceptions/runtime.html

* Does Java need Checked Exceptions?
https://web.archive.org/web/20020405175011/http://www.mindview.net/Etc/Discussions/CheckedExceptions

* `Exception Handling: The Case Against`, 1982, Andrew P. Black (thesis)    
ABSTRACT. Much recent research in the areas of programing language design and programing methodology has been devoted to proposing and defining new language features, and indeed whole new languages. This thesis represents a departure from that trend. It opposes a language feature, and one which has recently become fashionable: exception handling.   
https://web.cecs.pdx.edu/~black/publications/Black%20D.%20Phil%20Thesis.pdf

* `Exceptions in Java and Eiffel: Two Extremes in Exception Design and Application`, 2006, J. R. Kiniry, Advanced Topics in Exception Handling Techniques    
ABSTRACT. Exceptions are frequently a controversial language feature with both language designers and programmers. Exceptions are controversial because they complicate language semantics - and thus program design, testing, and verification - and some programmers find them annoying or difficult to use properly. By examining two programming languages that have very different, even opposing, exception mechanisms, a set of exception principles is introduced that summarize the key semantic and social issues surrounding exceptions.   
https://staffwww.dcs.shef.ac.uk/people/A.Simons/remodel/papers/ExceptionsInEiffelAndJava.pdf
