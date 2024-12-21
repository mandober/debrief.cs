# First-class function

https://en.wikipedia.org/wiki/First-class_function

A programming language is said to have first-class functions if it treats functions as *first-class values*. This means the language supports passing functions as arguments to other functions, returning them from functions, assigning them to variables, storing them in data structures. In brief, functions can be used in the same contexts as primitive scalar values.

Some programming language theorists require support for *anonymous functions*, known as *function literals* as well.

In languages with first-class functions, the names of functions do not have any special status; they are treated like ordinary variables with a function type.

The term from the title of this article was coined by Christopher Strachey in the context of "functions as first-class citizens" in the mid-1960s.

First-class functions are a necessity in functional programming paradigm, where the use of higher-order functions is a standard practice. *Higher-order functions* are functions that take functions as arguments. An example of a higher-ordered function is the `map` function, which takes, as its arguments, a function and a list, and returns a new list by applying the function to each element. For a language to support map, it must support passing a function as an argument.

There are certain *implementation difficulties* in passing functions as arguments or returning them as results, especially in the presence of non-local variables introduced in *nested functions* and anonymous functions. These problems are known as the **funarg problems** ("function argument" problems).

In early imperative languages these problems were avoided by either not supporting functions as a return type (ALGOL 60, Pascal) or omitting nested functions and thus *non-local variables* (e.g. C, although GNU C does support nested functions and even closures).

Initially, Lisp had *dynamic scoping*, where non-local variables refer to the closest definition of that variable at the point where the function is executed, instead of where it was defined, which is what happens in *lexical scoping*. Values of non-local variables are dependent on a function call chain.

Proper support for lexically scoped, first-class functions was introduced in Scheme, and requires handling references to functions as *closures* instead as *function pointers*, but it, in turn, makes garbage collection a necessity. 
(closures require garbage collection? but GNU C has closures?!)

## Contents

- 1. Concepts
- 1.1. Higher-order functions: passing functions as arguments
- 1.2. Anonymous and nested functions
- 1.3. Non-local variables and closures
- 1.4. Higher-order functions: returning functions as results
- 1.5. Assigning functions to variables
- 1.6. Equality of functions
- 2. Type theory
- 3. Language support


## 1. Concepts

In this section, we compare how particular programming idioms are handled in a functional language with first-class functions (Haskell) compared to an imperative language where functions are second-class citizens (C).

### 1.1. Higher-order functions: passing functions as arguments

https://en.wikipedia.org/wiki/Higher-order_function

In languages with first-class functions, functions can be passed as arguments to other functions in the same way as other values (like scalars). In Haskell:

```hs
map :: (a -> b) -> [a] -> [b]
map f []     = []
map f (x:xs) = f x : map f xs
```

Languages where functions are not first-class often still allow one to write higher-order functions through the use of function pointers or delegates. In C:

```c
void map(int (*f)(int), int* xs, size_t n) {
  for (int i = 0; i < n; i++)
    xs[i] = f(xs[i]);
}
```

`int (*f)(int)` denotes a variable named `f` with a function type `int(int)`

While it's possible to pass a function (as a function pointer) into a function, C does not support returning functions from functions - it is not possible to express a function type as a return type (but GNU C has a workaround via a `typedef`).

### 1.2. Anonymous and nested functions

https://en.wikipedia.org/wiki/Anonymous_function
https://en.wikipedia.org/wiki/Nested_function

### 1.3. Non-local variables and closures
### 1.4. Higher-order functions: returning functions as results
### 1.5. Assigning functions to variables
### 1.6. Equality of functions




## 2. Type theory
## 3. Language support
