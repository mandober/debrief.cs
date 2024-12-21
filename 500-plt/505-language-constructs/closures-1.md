# Closures





In programming languages, a *closure*, aka *lexical closure* or *function closure*, is a technique for implementing *lexically scoped name binding* in a language with *first-class functions*.

>Operationally, a **closure** is a *record* storing a function, together with an environment.

The function may be stored as a reference to a function, such as a function pointer.



The *environment* is a mapping associating each *free variable* of the function (variables that are used locally, but defined in an enclosing scope) with the value (or reference) to which the *name* was bound when the closure was created.

These names usually refer to values, mutable variables, or functions, but can also be other entities such as constants, types, classes, or labels.

Unlike a plain function, a closure allows the function to access those *captured variables* through the closure's copies of their values or references, even when the function is invoked outside their scope.


Closures often appear as normal functions, requiring nothing special to be done to capture the values of free variables referenced in its body. When this is the case such functions are implicit closures. However, some languages require users to explicitly annotate variables whose value is to be captured by the closure; so even if the function mentions some free variables, only those whose names are explicitly listed are captured.

For example, in PHP, there is a special `use` clause in the head of functions intended for the user to list the names of variables they want to capture. (What happens with free vars that are referenced but not in the list?). C++ also has some strange, array-looking syntax for both lambda functions and closures (which appear as lambdas).

Closures, functions, lambdas, anonymous functions are often rolled in one and the same language construct. Closures need not be realized as functions, but they almost always are - it is a very natural pairing. But even a code block can be made into a closure if it captures the free variables it references in the same way.

Some languages differentiate between the copy and move semantics regarding the captured variables. The "copy" semantics duplicates the values, acting like a pass-by-value, while the "move" semantics takes the values from the captured variable, which in Rust also includes transferring the ownership of the value.

It is often said that a closure can reference variables from the scope it was created in even after it escapes that scope, but this is only because it records the values of those variables immediately, when it is created, when all those variables are in its lexical scope. To do this, a closure uses some kind of a record data type (associative array, map, dict, hashmap).

C doesn't support closures, but GNU C does:

```c
typedef int(*retty)(int);

retty adder(int x) {
  int add(int y) {
    return x + y;
  }
  return add;
}

// note the call syntax
printf("%d\n", adder(3)(5)); // 8

// Thanks to partial application, by fixing
// the first arg, we can make new functions
int succ(int y){
  return adder(1)(y);
}

printf("%d\n", succ(1)); // 2
```

C also doesn't (syntacically) support specifying a function type as the return type of functions, but we can use a `typedef` as a workaround and define a type alias. GNU C supports nesting functions as well.
