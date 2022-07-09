---
downloaded:       2021-12-03
page-url:         https://web.archive.org/web/20061009144142/http://progtools.comlab.ox.ac.uk/projects/termination/termination
page-title:       Programming Tools Group - Termination Analysis of Higher-Order Functional Programs
article-title:    Programming Tools Group - Termination Analysis of Higher-Order Functional Programs
---
# Programming Tools Group - Termination Analysis of Higher-Order Functional Programs

Termination analysis is a fundamental part of program verification, and is also used extensively in theorem proving. Automatic termination analysis seeks to verify termination of a program (without user assistance, or with minimal assistance).
Termination analysis is a fundamental part of program verification, and is also used extensively in theorem proving. Automatic termination analysis seeks to verify termination of a program (without user assistance, or with minimal assistance).

The *size-change termination* principle is a powerful criterion for deciding termination of pure first-order functional programs. More information on size-change termination can be found [here][1] (page by [Chin Soon Lee][2]).

## Higher-Order Programs

We have been extending the size-change termination analysis to higher-order purely functional languages, building on [Neil Jones][3]'s work on termination analysis of the lambda-calculus. This handles programs written in the purely functional subset of [OCaml][4], though other languages like Scheme could be handled without too much trouble. Lazy languages like [Haskell][5] can also be handled, by translating lazy programs into strict ones.

## Challenges

What's difficult about it?

-   Control- and Data-flow analysis of higher-order programs is rather tricky...
    
    This is the current focus of my work. The starting point is the idea of a *k-CFA* of a program, due to [Olin Shivers][6], but in many cases this is insufficient (in particular, termination analysis of lazy programs is difficult). We are investigating other techniques to approximate the environments that can occur in a computation, in particular the use of tree automata.
    
-   Finding "higher-order" termination
    
    The SCT principle proves termination by showing that along every self-call in the program, some (well-founded) parameter decreases. For example, the *map* function:
    
           map f xs = if null xs then \[\] else f (head xs) :: (tail xs)
    
    terminates because the *xs* parameter becomes smaller at each recursive call. To prove termination of more interesting higher-order programs, it is necessary to extend the notion of size to higher-order values as well.
    

## Resources

A [tech report][7] on the subject is available. There is also an [experimental implementation][8] in OCaml, with some rough edges.

## Contact

[Damien Sereni][9]

[1]: https://web.archive.org/web/20061009144142/http://www.mpi-sb.mpg.de/~soonlee/more.htm
[2]: https://web.archive.org/web/20061009144142/http://www.mpi-sb.mpg.de/~soonlee/
[3]: https://web.archive.org/web/20061009144142/http://www.diku.dk/~neil/
[4]: https://web.archive.org/web/20061009144142/http://caml.inria.fr/
[5]: https://web.archive.org/web/20061009144142/http://www.haskell.org/
[6]: https://web.archive.org/web/20061009144142/http://www.cc.gatech.edu/~shivers/
[7]: https://web.archive.org/web/20061009144142/http://web.comlab.ox.ac.uk/oucl/publications/tr/rr-04-20.html
[8]: https://web.archive.org/web/20061009144142/http://progtools.comlab.ox.ac.uk/projects/termination/hoterm.tar.gz
[9]: https://web.archive.org/web/20061009144142/http://progtools.comlab.ox.ac.uk/projects/termination/members/damien
