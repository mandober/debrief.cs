# Exception handling

https://en.wikipedia.org/wiki/Exception_handling

**Exception handling** is the process of responding to the occurrence of exceptions.

**Exceptions** are anomalous or exceptional conditions that require special processing and occur during the execution of a program (during run-time). They are considered as faults so fatal that recovery is not possible so a program's execution is best aborted as it is not safe or sensible to continue (CPU died, EMP attack, ice-bucket challenge gone wrong).

In general, an exception breaks the normal flow of execution and executes a pre-registered *exception handler*, so they should be triggered only as the last resort, in case of extreme emergency and not just because a user has provided errouneous input. Completely killing the program even in trivial cases of non-compliance hardly makes for a pleasent user experience (even if it was his fault; again).

The details of implementation of exception handlers depend on the kind of exception (hardware or software exception), but usually they are supported by a specialized programming language construct (e.g. `throw` statement), hardware mechanisms like interrupts, or OS inter-process communication (IPC) facilities, such as signals.

Exceptions are usually triggered from within functions, for a variaty of resons, some of which are recoverable
