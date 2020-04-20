# Call stack


https://en.wikipedia.org/wiki/Call_stack

https://en.wikipedia.org/wiki/Reentrancy_(computing)
https://en.wikipedia.org/wiki/Recursion_(computer_science)
https://en.wikipedia.org/wiki/Thread_safety


**Stacks** are (arbitrary) regions of primary memory associated with a particular access discipline, known as the LIFO (last in first out) protocol.

Stacks are primarily used as **call stacks**, which are sections of memory with stack-based access discipline that help manage the calls and execution of subroutines. It may be said that a stack that is exclusively used to manage return addresses is a proper call stack, while a regular stack, the one that each thread has, is used to store additional subroutine-related data as well.

Nevetheless, the stack (as in "the stack and the heap") is a term for arbitrary regions of memory that are *usually* accessed in the LIFO manner. This doesn't prevent the CPU to access the undelying memory however it sees fit.


---

A call stack is used for several related purposes, mainly to keep track of the point to which each active subroutine should return control to, after it completes executing. Pushing subroutines' entries to the call stack is called *winding* and removal of entries is called *unwinding* (the stack).

An active subroutine is the currently executing subroutine. When it completes, the control over execution should be given back to its caller. To accomplish this, the address following the instruction that calls the subroutine, known as the **return address**, is pushed onto the top of the call stack with each call.

The primary purpose of a call stack is to store *return addresses*. When a subroutine is called, the location of the instruction at which the calling routine can later resume needs to be saved somewhere. Using a stack to save that return address has advantages over alternative calling conventions.

One advantage is that each thread gets to have its own stack, making subroutines *thread-safe*. When the stack is not shared among threads (but each thread has its own), then they can do different things simultaneously.

Another benefit comes in the form of *reentrancy*, which is needed for *recursion* support. When a function calls itself recursively, a return address needs to be stored for each activation of the function, so that it can later be used to return from the function activation. Stack structures provide this capability automatically.


---


Depending on the language, operating-system, and machine environment, a call stack may serve additional purposes, including for example:

### Local data storage
https://en.wikipedia.org/wiki/Stack-based_memory_allocation

A subroutine frequently needs memory space for storing the values of local variables, the variables that are known only within the active subroutine and do not retain values after it returns. It is often convenient to allocate space for this use by simply moving the top of the stack by enough to provide the space. This is very fast when compared to dynamic memory allocation, which uses the heap space. Note that each separate activation of a subroutine gets its own separate space in the stack for locals.

### Parameter passing
Subroutines often require that values for parameters be supplied to them by the code which calls them, and it is not uncommon that space for these parameters may be laid out in the call stack. Generally if there are only a few small parameters, processor registers will be used to pass the values, but if there are more parameters than can be handled this way, memory space will be needed. The call stack works well as a place for these parameters, especially since each call to a subroutine, which will have differing values for parameters, will be given separate space on the call stack for those values.

### Evaluation stack
Operands for arithmetic or logical operations are most often placed into registers and operated on there. However, in some situations the operands may be stacked up to an arbitrary depth, which means something more than registers must be used (this is the case of register spilling). The stack of such operands, rather like that in an RPN calculator, is called an evaluation stack, and may occupy space in the call stack.

### Pointer to current instance
Some object-oriented languages (e.g., C++), store the this pointer along with function arguments in the call stack when invoking methods. The this pointer points to the object instance associated with the method to be invoked.

### Enclosing subroutine context
Some programming languages (e.g., Pascal and Ada) support declaration of nested subroutines, which are allowed to access the context of their enclosing routines, i.e., the parameters and local variables within the scope of the outer routines. Such static nesting can repeat - a function declared within a function declared within a function... The implementation must provide a means by which a called function at any given static nesting level can reference the enclosing frame at each enclosing nesting level. Commonly this reference is implemented by a pointer to the frame of the most recently activated instance of the enclosing function, called a "downstack link" or "static link", to distinguish it from the "dynamic link" that refers to the immediate caller (which need not be the static parent function).

Instead of a static link, the references to the enclosing static frames may be collected into an array of pointers known as a display which is indexed to locate a desired frame. The depth of a routine's lexical nesting is a known constant, so the size of a routine's display is fixed. Also, the number of containing scopes to traverse is known, the index into the display is also fixed. Usually a routine's display is located in its own stack frame, but the Burroughs B6500 implemented such a display in hardware which supported up to 32 levels of static nesting.

The display entries denoting containing scopes are obtained from the appropriate prefix of the caller's display. An inner routine which recurses creates separate call frames for each invocation. In this case, all of the inner routine's static links point to the same outer routine context.

### Other return state
Beside the return address, in some environments there may be other machine or software states that need to be restored when a subroutine returns. This might include things like privilege level, exception-handling information, arithmetic modes, and so on. If needed, this may be stored in the call stack just as the return address is.

The typical call stack is used for the return address, locals, and parameters (known as a call frame). In some environments there may be more or fewer functions assigned to the call stack. In the Forth programming language, for example, ordinarily only the return address, counted loop parameters and indexes, and possibly local variables are stored on the call stack (which in that environment is named the return stack), although any data can be temporarily placed there using special return-stack handling code so long as the needs of calls and returns are respected; parameters are ordinarily stored on a separate data stack or parameter stack, typically called the stack in Forth terminology even though there is a call stack since it is usually accessed more explicitly. Some Forths also have a third stack for floating-point parameters.



## Stack-based memory allocation

https://en.wikipedia.org/wiki/Stack-based_memory_allocation

At a minimum, a thread's stack is used to store the location of function calls in order to allow return statements to return to the correct location.
