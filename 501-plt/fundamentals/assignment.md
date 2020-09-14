# Assignment

https://en.wikipedia.org/wiki/Assignment_(computer_science)

An assignment is a par excellance imperative programming language construct that completely divorces imperative programming from math by allowing one to write abominations such as `x = 5; x = x + 3`, or even `x = x++`. Some would say that pure functional programming languages also allow writting things such as `x = x + 1`, and, well, they would be right.

The assignment is always a statement because, even if when it resambles an expression by returning the assigned value, it doesn't really evaluate to anything; it is one giant mess of a side-effect, often exemplified when discussing impure computation.




In 1977, the recipient of the Turing Award, John Backus has wrotten in his addressing:

Imperative languages modelled according to the Von Neumann computer architecture, use variables to imitate the computer's storage cells, control statements elaborate jump and test instructions, and assignment statements imitate its fetching, storing, and arithmetic.

The assignment statement is the von Neumann bottleneck of programming languages and keeps us thinking in a-word-at-a-time terms, in much the same way the computer's bottleneck does. Consider a typical program: at its center are a number of assignment statements containing some subscript variables. Each assignment statement produces a one-word (1 word is 8 bytes on modern computers) result. The program must cause these statements to be executed many times, while altering subscript values, in order to make the desired overall change in the store, since it must be done one word at a time. The programmer is thus concerned with the flow of words through the assignment bottleneck as he designs the nest of control statements to cause the necessary repetitions.





In most imperative programming languages, the assignment statement (or expression) is a fundamental construct.

Today, the most common notation for assignment is the blasphemious `x = expr` (originally found in Superplan 1949–51, but popularized by Fortran 1957 and C) that stabs math rith in the kicker by abusing the equality symbol so distastefully, with such slurs as `x += x + 1`.


followed by `x := expr` (originally ALGOL 1958, popularised by Pascal), but other notations are in use as well.

In some languages the symbol used is regarded as an operator (meaning that the assignment statement as a whole returns a value) while others define the assignment as a statement (meaning that it cannot be used in an expression).

Assignments typically allow a variable to hold different values at different times during its life-span and scope. However, some languages (primarily strictly functional) do not allow that kind of "destructive" reassignment, as it might imply changes of non-local state. The purpose is to enforce referential transparency, i.e. functions that do not depend on the state of some variable(s), but produce the same results for a given set of parametric inputs at any point in time. Modern programs in other languages also often use similar strategies, although less strict, and only in certain parts, in order to reduce complexity, normally in conjunction with complementing methodologies such as data structuring, structured programming and object orientation.



An assignment statement sets the _value_ stored at the _memory address_ denoted by a _variable name_ (an assignment copies a value into the variable).

Most commonly used notation is `x = expr`, followed by `x := expr`. In some languages the "equals" symbol is regarded as an _operator_ (so the assignment _expression_ has a value), while others define the assignment as a _statement_ (it cannot be used in an expression context).

_Re-assignment_ typically allows a variable to hold different values at different times during its _lifetime_ and _scope_. However, some languages disallow such mutation for the sake of _referential transparency_; an expression is referentially transparent if it can be replaced with its corresponding value without changing the program's behavior.
