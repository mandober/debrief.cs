# Invariance and Monovariance Principle

https://brilliant.org/discussions/thread/invariance-and-monovariance-principle/

https://brilliant.org/discussions/thread/invariance-and-monovariance-principle-2/


An **invariant** is a property whose value stays constant when transformations are applied to the object of interest. If the desired result has a different value for that property, then we can never arrive at that result. A **monovariant** is a property whose value only changes in one direction. It will either always increase or always decrease.

When we have an invariant, we can easily show that a final state cannot be achieved if the value of the property differs from the initial state. However, it doesn't tell us that every state which has the same property value can be achieved. Instead, we will need to construct a series of transformations which explicitly show why those states can be reached.

When we have a decreasing (resp. increasing) monovariant, we can easily show that a final state cannot be achieved if the value of the property is higher (resp. lower) than that in the initial state. Once again, it doesn’t necessarily tell us which states can be achieved and we will still need an explicit construction.

Examples
1. Grayson writes the numbers 1 to 1000 on a blackboard. He then randomly chooses two numbers a and b from the list to erase, and replaces them with the number a − b. If he continues this process until he is left with a single number on the board, is it possible for him to be left with the single number 657?

Solution: There are a lot of numbers on the board to start, so we can't realistically try a sequence of operations to see what number we end up with. Since we're replacing a and b with a − b, it is clear that *the sum of the numbers will always decrease*. However, while this is a valid monovariant, it is not sufficient for us to conclude that we can't reach 657, nor does it explain how we can reach 657.

However, this can motivate us to look at the sum of the numbers that are on the board. At the start, this sum is 500,500. When Grayson chooses two numbers a and b to erase, and adds a − b to the list, the new total will be

```js
∑ [0..n] = (n ⨯ (n + 1)) ⨯ 1/2
∑ [0..n] = (n(n + 1)) * 0.5
∑ [0..n] = n² + n * 0.5
∑ [0..n] = n² + 0.5n

∑ [1..1_000] = 1_000 ∗ 1_001 / 2 = 500_500

500_500 − a − b + (a − b) =
500_500 − a − b + a − b =
500_500 − 2b
// even - even = even
```

This suggests that we should look at the sum of the numbers on the board `mod 2`. The sum starts out as `0 (mod 2)` and always remains `0 (mod 2)` when we perform an operation. Hence, this quantity is an invariant! Since *the sum of the numbers on the board will always be even*, we cannot get to a position where there is a single odd number written on the board.


## Links

* Solutions to the Problems Using Invariants or Monovariants
https://www.math.uwaterloo.ca/~snew/Contests/ProblemSessions/Problems2016/Lesson0soln.pdf

* I.M.O. Winter Training Camp 2008: Invariants and Monovariant
http://web.mit.edu/yufeiz/www/wc08/invariants.pdf

* Types of combinatorial problems (by Ho Jun Wei)
https://hcmop.wordpress.com/2012/03/29/types-of-combinatorial-problems-by-ho-jun-wei/
