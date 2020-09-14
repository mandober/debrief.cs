# Stack-oriented programming languages

https://en.wikipedia.org/wiki/Stack-oriented_programming

A stack-oriented programming language is one that relies on a *stack machine* model for passing parameters.

Stack-oriented PLs: WebAssembly, *Forth*, PostScript.

Stack-oriented languages operate on one or more stacks, each of which may serve a different purpose. Stack here is the manner of organizing and accessing memory for language's use and it entails LIFO discipline. PLs usually organize memory into the stack, which is manipulated using LIFO protocol, and the heap, which is a free storage that doesn't come with a default access protocols, so to speak, like stack does. Dealing with the heap becomes unwieldy very quickly and if a language can get away using only stack-based memory, that will significantly decrease the complexity of every language aspect. Less freedom but also less complexity.

Because there is never a need to ask where to put data or where to fetch the data from (always from the top of the stack), these languages are characterized by the *postfix notation* in which the operator or function comes first and the arguments follow (some use *Reverse Polish notation* where the arguments come first and the operator last).


For example, postfix notation would be written 2, 3, multiply instead of multiply, 2, 3 (prefix or Polish notation), or 2 multiply 3 (infix notation).
