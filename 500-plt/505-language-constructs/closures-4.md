# Closure

https://en.wikipedia.org/wiki/Closure_(computer_programming)



A closure is a subroutine (commonly a function) capable of capturing the values of variables it is referencing in the outer environments.

the values of those references variables are their values at the time of capture.

. for example

f x = (\y -> x + y)

f returns a closure, because the variable x, which is bound outside of the lambda abstraction is used inside its definition.


An interesting side note: the context in which x was bound shouldn't even exist anymore, and wouldn't, had the lambda abstraction not closed around x.

A closure is the opposite of a combinator, in a sense.





https://en.wikipedia.org/wiki/Kuratowski_closure_axioms
https://en.wikipedia.org/wiki/Closure_operator
https://en.wikipedia.org/wiki/Closure_(mathematics)
https://en.wikipedia.org/wiki/Closure_(computer_programming)



Epimenides, Gödel, Turing - an Eternal Gölden Twist 2020 Eric Hehner
