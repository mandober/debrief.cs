# Y combinator

The recursive function is computed as the *fixed point* of a non-recursive function. To compute the fixed point, we can use the *Y-combinator*, which is the non-recursive function that computes fixed points.

As a practical application of this theory, recursive functions expressed as fixed points allow the use of a *memoizing fixed-point combinator*. The combinator approach to recursion makes it possible to cache the internal calls to a recursive function automatically. For example, this caching turns the naive, exponential implementation of Fibonacci into the optimized, linear-time version.

The equation, `x = x^2 - 2`, in which `x` is defined in terms of itself, may be solved (besides using the quadratic formula) by finding the fixed points of the function `f` defined as `f(x) = x^2 - 2`. 

In the equation, x = x^2 - 2, `x` is defined in terms of itself, 
which is completely different from the function, f(x) = x^2 - 2, 
in which `x` is just a param, meaning it can be any argument (integer). 

In the function, `x` is not constarined at all, unlike the equation where `x` is very constrained as it may only be a value that satisfies both sides. However, the function and the equation share something in common: the values that are the function's fixed points are the solutions of the equation.

The function, `f(x) = x^2 - 2`, 
has a set of fixed points, `A`, 
such that if `a ∈ A` then `f(a) = a`.

```
x    = x^2 - 2
f(x) = x^2 - 2
f(x) = x
```

The solutions to the equation are the elements of the set X. The set X is made of the elements that are the *fixed points of the f function*:

Fix(f) = A = { -1, 2 }

(a ∈ A) -> f(a)=a


Any time we have a recursive definition of the form `x = f(x)`, the meaning of the value `x` is going to be defined in terms of fixed points.

The trick is to find a way to obtain fixed points when the equation has the form `f = F(f)`, in which `f` is a function.


## Y combinator

The Y combinator takes a functional as input, and it returns the (unique) fixed point of that functional.

The function `F(x)` has a param `x`, expected to be a function; this makes `F` a functional. A fixed point of `F` would be an argument `h` (a function), such that

F(x) = y
x <- h
F(h) = h



Y combo takes a functional like `F` and produces a fix point (i.e. a function), say, `h`.

This means that whenever `h` is the argument to the `F(g)` functional, the output will be `h`:

(λf.f)



F(g)=g

Y(F) = h
F(h) = h
---------
Y(F) = F(h) = F(Y(F))




---
http://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
