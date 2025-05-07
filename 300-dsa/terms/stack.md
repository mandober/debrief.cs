# Stack

Stack is one of the simplest abstract data types; it is a linear collection of elements with a recognizable characteristic: it enforced the *last in, first out* (LIFO) *access discipline*, so only the top element is accessible.

The primary example where the stack is used is in the implementation of the *call stack*.

Another typical task that uses a stack is building an evaluator of arithmetic expressions: operands are pushed onto the stack until an operator is encountered, at which time they are popped (either two, or as many as possible, depending on the operator semantics) to be operated on. This use of stack is particularly friendly when the arithmetic expressions use the *reverse Polish notation*, in which the operators appear in postfix position, e.g. `(2 5 +)`. Here, operand 2 is first pushed onto the stack, followed by 5; when the `+` operator is encountered, 5 is first popped of the stack, then 2, then `2 + 5` is evaluated, and the result is pushed onto the stack.

As an abstract data type, stavk is characterized by its access discipline (LIFO) and associated operations which, at the minimum, include:
- `push`: putting an element onto the stack
- `pop`: removing an element from the stack
- `isEmpty`: predicate which test the stack

Some additional methods include
- `peek`: getting the value of the top element without removing it
- `swap`: swapping positions of the last two elements

Only the last pushed element, called `top`, is accessible. This also implies that there is only one place where a new element can be placed, and one place from where to get an element. For this reason, when dealing with a stack, the location is always implicit: it is enought to state `push(3)` without explicitly stating where to put the number 3, and similarly for `pop`. The popped element is temporarily held in memory while more elements are fetched and then operated on.

If it is possible (allowed) to have multiple stacks at the same time, then we also need to extend all operations to take a target stack.

Stack as an abstract data structure is qualifed by its operations, but to actually implement a stack, we need to decide on a number of concrete things, like the structure to use as the underlying memory storage. We also need operations for creating a new stack, disposing a stack, which in some languages means deciding on the way to alocate memory.
- `StackNew`
- `StackDrop`, `StackFree`


A program can manipulate a stack according to its prescribed access discipline, but there is nothing preventing it to access it directly and manipulate the underlying memory however it it pleases. A stack is still just a region of memory that may be accessed like any other memory. The access to the stack should adhere to its discipline, but this is not enforced in any way, neither for a call stack, that is essential for execution of programs, not for stack data structures.

The biggest issue with stack is knowing whether it is empty or not, that is, knowing if an element may be popped. Popping an empty stack is known as the *stack underflow* fault. On the other hand, since any stack implementation uses a finite amount of memory, it is possible to overwhelm the stack's capacity, a fault called *stack overflow*.

It is necessary to specify the correct behavior of a stack, which may be done using an algebraic specification of what correct sequences of operations and return values are.
- `push(n) → pop() => n`

```
stack_capacity = 100
empty → pop() => UNDERFLOW fault
push(n) → pop() => n
empty → push(1) → pop() => 1
empty → push(1) → push(2) → pop() => 2
empty → push(1)...push(99) → push (100) → OVERFLOW fault
```

Another way to specify correct behavior is to describe a canonical implementation on an abstract machine which gives correct answers for all correct sequences of operations (no popping an empty stack, no pushing beyond capacity).

A concrete implementation needs to decide about the way to allocate memory for the stack and its elements. Also, what to do when popping an empty stack: nothing or throw an error? And similarly for pushing on a full stack: is it really necessary to abort the program or can it continue?
