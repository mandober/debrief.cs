# Recursion

* Repeated caclulation may be performed through the use of iterative looping constructs (like `for`, `while`, `do while`), found in imperative languages, and throught the use of recursion, found in almost every language.

* Performance wise, loops are far more efficient to recursion. However, reasoning about program's corretness is far more easier with recursion since mathematical proof are done with induction, which is recursion's relative.

* Functional languages typically lack iterative looping constructs and rely on recursion exclusively; nevertheless, recursion is typically only present at the surface sytax because the compiler will translate recursion into efficint iterative loops.

* Both ways of doing repetative computation are equivalent up to memory (stack) exhaustion, which may occur during recursion; that is, they both produce the same result, provided no issues with memory occur.

* The main problem with recursion regarding memory, is that recursion creates a new stack frame on each entry into the function. A recursive function calls itself repeatedly, quickly building up the number of stack frames, which are limited to some number by the system. If that number is reached, the stack overflow error is emitted and the program crashes.

* There are ways to mitigate the memory issue and the most efficient one is *tail-call optimization*, but it must be implemented in the compiler. The one that can be performed in code is a device called *trampoline*, which is just an extra function that guides the recursion, preventing the buildup of stack frames (it can be difficult to make it correctly handle the case when a function is the overall result, as opposed to another primitive, like a number).

* A recursive definition means defining a thing in terms of itselves. In PLs, with recursive functions, this typically means that a function is defined in terms of itself, and here "itself" is the function's identifier, i.e. the name the function is bound to. The identifier normally appears on the LHS of a definition, but in recursive functions, it also appears on the RHS. In the most bare example it may look like `let f = f`, or like `let f = 1 + f`; both definitions will cause the compiler to jump between the left and right side forver.

* In set theory, this occurs as the Russell's paradox, i.e. defining a mega-set that contains all sets; then the problem is whether the mega set includes itself. That is, the mega set is defined by the property its members must have: "a set that does not have itself as a member". Normally, all sets satisfy this membership requirement. The problem is the mega set itself - being a set, it should be a member (of itself), in which case it shouldn't be, for it doesn't satisfy the defining propery.

* In PLs, the termination of a recursive function must be controlled by a parameter and a condition on that parameter.

* A recursive function calls itself - but this can also be understood without self reference; if a function `f` calls some other function, `f'`, that just happend to be identical to f, then the callee could call another function, also identical to the previous two.
