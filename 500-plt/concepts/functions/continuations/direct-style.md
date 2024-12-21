# PL Features :: Continuations :: Direct style

**Direct style** is the name for the usual

referring to the usual mechanism of calling a function: the *caller* invokes a previously defined function, passing it some arguments. With that, the calling context reliquishes *control* which is then assumed by the called function.

The *calling convention* dictates the exact details regarding the calling and returning from functions, using a portion of memory, called the *call stack*, for tracking the process.

A calling convention dicates the use of the call stack, prescribing the details about the placement of the arguments, the function's local values, the address to where the function returns control and its ouput, etc.
