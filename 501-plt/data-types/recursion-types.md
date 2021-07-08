# Recursion types

There a several types of recursion wrt functions.

*Linear recursion*: only one recursive application of the function occurs in the expression for any leg. The advantage of a linear recursion versus a nonlinear one is that a linear recursion can be compiled into a loop in a straightforward manner.

*Backward recursion*: for each case the recursive applications are embedded within another expression. Operationally, significant work is done after the recursive call returns.

A common technique for converting a *backward linear recursive* definition like `reverse` into a tail recursive definition is to use the accumulator to build up the desired result incrementally.

*Forward recursion*: the outside expression (in the rec case) are recursive applications of the function. Operationally, significant work is done as the recursive calls are being made (e.g. in the arg of a recursive call).

*Tail recursion*: if recursion is both *forward and linear*. In a tail recursion the last action performed before the return is a *recursive call*.


```hs
-- non-linear recursion
fin 0 = 1
fin 1 = 1
fib n = fib (n - 2) + fib (n - 1)

-- backward linear recursion
rev :: [a] -> [a]
rev []     = []
rev (x:xs) = rev xs ++ [x]

-- forward tail recursion
foldl :: (b -> a -> b) -> b -> [a] -> b
foldl f z []     = z
foldl f z (x:xs) = foldl f (f z x) xs
```
