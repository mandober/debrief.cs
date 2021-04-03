# Assignment

## Refs

https://en.wikipedia.org/wiki/Assignment_(computer_science)

## TOC

- assignment
- destructive assignment, x = x + 4
- assignment as statement vs expression
- compound assignment
- modelling assignment in pure FP

## Assignment

An assignment is a par excellance imperative programming language construct that completely divorces imperative programming from math by allowing one to write abominations such as `x = 5; x = x + 3`, or even `x = x++`. Some would say that pure functional programming languages (pFPL) also allow writing things such as `x = x + 1` and they would be syntactically right, but semantically wrong because the latter is a recursive definition of x (there's no assignment in pFP).

The assignment is always a statement because, even if when it resambles an expression by returning the assigned value, it doesn't really evaluate to anything; it is a giant side-effect, often exemplified when discussing impure imperative computation for it deals with "word-at-the-time" paradigm of the underlying von Neumann machine (see John Backus paper *"Can Programming Be Liberated from the von Neumann Style?"*).


In 1977, the recipient of the Turing Award, John Backus has wrotten in his addressing:

    Imperative languages modelled according to the Von Neumann computer
    architecture, use variables to imitate the computer's storage cells,
    control statements elaborate jump and test instructions, and assignment
    statements imitate its fetching, storing, and arithmetic.

    The assignment statement is the von Neumann bottleneck of programming
    languages and keeps us thinking in a-word-at-a-time terms, in much the
    same way the computer's bottleneck does.

    Consider a typical program: at its center are a number of assignment
    statements containing some subscript variables. Each assignment statement
    produces a one-word result. The program must cause these statements to be
    executed many times, while altering subscript values, in order to make the
    desired overall change in the store, since it must be done one word at a
    time. The programmer is thus concerned with the flow of words through the
    assignment bottleneck as he designs the nest of control statements to 
    cause the necessary repetitions.



* A.M. Turing Award Laureates: John Backus    
https://amturing.acm.org/award_winners/backus_0703524.cfm

* Dr. John Backus, 1977 ACM Turing Award Recipient   
https://www.youtube.com/watch?v=yKXiQAqou04    
Interviewed about his creation of the first FORTRAN compiler and other notable events that changed his life. He talks openly about personal situations such as his abuse as a child and how he made the metal plate that was inserted in his skull. He continues to describe his research life and the receipt of the Turing Award.


In most imperative programming languages, the assignment statement (or expression) is a *fundamental construct*.

The most common notation for assignment uses the equals sign, `x = expr`, which originated in Superplan 1949-51, but was popularized by Fortran 1957 and C. The second most popular form is slightly less insulting `x := expr` that has originated in ALGOL 1958 and popularised by Pascal.

In some PLs the assignment is regarded as an operator, meaning that the assignment statement as a whole returns a value, while other PLs define the assignment as a statement, thus it cannot be used in an expression.

Assignments typically allow a variable to hold different values at different times during its life-span and scope.

Tipically, a variable starts its life with a *declaration*, that introduces a new name and type (on the LHS of equals) into the active scope, which is in most languages immediately followed by its *initialization* (on the RHS). These two constructs, often perfomed as parts of the same statement in most PLs, together form a (variable) *definition*. Some PLs allow a variable definition to be split into its constituent parts, although accessing an uninitialized variable will tipically result in undefined behavior. The segfault arises (e.g. in C) because a declared but uninitialized variable points to a completely arbitrary memory address. The sole act of referring to such memory is not unsafe per se - it is the access (trying to read or write) to the variable that is unsafe; being completely arbitrary, the assiciated memory address may be located on a memory segment that the program has no rights to consult, which results in segfault penalty. The reason C does things like this, instead of, initializing a variable safely (for example, by associating it to some safe default value) is sheer speed - C doesn't waste CPU cycles for initializations that the programmer didn't request explicitly. Both, the responsibility and the proof of correctness of the program, is thus shifted from the compiler to the programmer (except for the proof of correctness, which transitions into an imaginary concept when faced with a concept of uninitialized varibles; and vice versa - there's no un-init anything under the correctness' judgments).


in PLs that disallow it, a declared variable (LHS of equals or equivalent sign) must be immediately followed by its initialization value (on the RHS), which is referred to as a *definition* (declaration + initialization).

However, some PL, primarily FPLs, do not allow the kind of assignment that is destructive, as it might imply changes of non-local state.

The purpose is to enforce referential transparency, i.e. functions that do not depend on the state of some variable(s), but produce the same results for a given set of parametric inputs at any point in time. Modern programs in other languages also often use similar strategies, although less strict, and only in certain parts, in order to reduce complexity, normally in conjunction with complementing methodologies such as data structuring, structured programming and object orientation.



An assignment statement sets the _value_ stored at the _memory address_ denoted by a _variable name_ (an assignment copies a value into the variable).

Most commonly used notation is `x = expr`, followed by `x := expr`. In some languages the "equals" symbol is regarded as an _operator_ (so the assignment _expression_ has a value), while others define the assignment as a _statement_ (it cannot be used in an expression context).

_Re-assignment_ typically allows a variable to hold different values at different times during its _lifetime_ and _scope_. However, some languages disallow such mutation for the sake of _referential transparency_; an expression is referentially transparent if it can be replaced with its corresponding value without changing the program's behavior.
