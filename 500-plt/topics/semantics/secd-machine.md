# SECD machine

https://en.wikipedia.org/wiki/SECD_machine


* A Rational Deconstruction of Landin's SECD Machine
https://www.brics.dk/RS/03/33/

* Welcome to SECD Mania
http://skelet.ludost.net/sec/
SECD is an extremly simple virtual machine for functional programming. This package provides a collection of different SECD implementations. All they follow the book: Peter Henderson, `Functional Programming: Application and Implementation`, 1980, Prentice Hall

The last machines from the package are formed as a language implementation, called pure_LISP. It is supplied with documentation:
- Reference manual
  http://skelet.ludost.net/sec/reference.html
- Tutorial
  http://skelet.ludost.net/sec/tutor.html
- SECD reference
  http://skelet.ludost.net/sec/secd.html


## Historical facts about SECD

* In 1941 Alonzo Church invented a mathematical notation called the lambda-calculus. `The Calculi of Lambda Conversion`, A. Church, Princeton University Press, 1941. The lambda-calculus was a mathematical system which modelled the computational view of functions. (There is also a set theoretic view of functions which turns out to be no use for computation - the reason why is left as an exercise for the mathematically gifted). Church had no intention of actually evaluating lambda-calculus expressions on a computer - which is hardly surprising given the date of his work. Nonetheless the lambda-calculus is the computational model of all functional programming languages. A functional programming language is just a lambda-calculus expression written in a different syntax - just as any imperative program is a Von Neumann machine program written in a different syntax.

* John McCarthy invented the language LISP in 1960. `Recursive functions of symbolic expressions and their computation by machine, Part I`, J. McCarthy, Communications Of The ACM, Vol. 3, No. 4, 1960. LISP is an acronym for "LISt Processing"; LISP was designed to make writing list processing programs easier. LISP was the world's first functional programming language.

* In 1964 Peter Landin invented the SECD machine. `The Mechanical evaluation of Expressions`, P.J. Landin, The Computer Journal Vol. 6 pp308-320, 1964. The SECD machine is an "abstract machine" (i.e. it is a program rather than a piece of hardware). Landin used the SECD machine to evaluate lambda-calculus expressions. He also showed how programs written in ALGOL could be translated into the lambda-calculus. The SECD machine has since been frequently used to produce prototype implementations of functional languages. For example Peter Henderson used it to implement his lazy dialect of LISP (LISPKIT LISP) and his specification language "me-too".

* In 1975 Gordon Plotkin published a paper that examines the relation between the Lambda Calculus and the SECD machine. The paper includes a proof that the semantics defined by the SECD machine is equivalent to a recursively defined function which implements applicative order evaluation of lambda terms. Plotkin, Gordon D., `Call-By-Name, Call-By-Value, and the Lambda Calculus`, Theoretical Computer Science, Vol 1, pp. 125-159, North-Holland, 1975.

* In 1976 lazy evaluation, one of the most important and powerful concepts of modern functional programming, was independently invented by Peter Henderson & James Morris and by Dan Friedman & David Wise. `A Lazy Evaluator`, P. Henderson and J.H. Morris, In: Conference Record of the Third ACM symposium on Principles of Programming Languages January, 1976. `Cons should not evaluate its arguments`, D.P. Friedman and D.S. Wise, In: Automata Languages and Programming Third International Colloquium Eds. S. Michaelson and R. Milner Edinburgh University Press, 1976.
