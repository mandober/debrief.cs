# SICP: Topics

1. Building Abstractions with Procedures

- computational process
- abstraction
- Lisp
- Scheme



## Building Abstractions

Computational processes manipulate the abstraction called data. The evolution of a process is directed by a pattern of instructions called a program. Programs that control computational processes are composed from *symbolic expressions* in a programming language that prescribes the tasks we want a processes to perform. A computational process executes programs in a deterministic way, precisely and accurately.

Well-designed computational systems are designed in a modular manner, so that the parts can be manipulated separately.


## Lisp
Lisp was conceived by John McCarthy and is based on his paper "Recursive Functions of Symbolic Expressions and Their Computation by Machine" (McCarthy 1960).

The Lisp 1 Programmer's Manual appeared in 1960, and the Lisp 1.5 Programmer's Manual (McCarthy 1965) was published in 1962. The early history of Lisp is described in McCarthy 1978.

Lisp is the second oldest language in widespread use today (only Fortran is older).

Lisp is by now a family of dialects, which, while sharing most of the original features, may differ from one another in significant ways.

The two dialects in which most major Lisp programs of the 1970s were written are *MacLisp* (Moon 1978; Pitman 1983), developed at the MIT Project MAC, and *Interlisp* (Teitelman 1974), developed at Bolt Beranek and Newman Inc. and the Xerox Palo Alto Research Center.

*Portable Standard Lisp* (Hearn 1969; Griss 1981) was a Lisp dialect designed to be easily portable between different machines.

MacLisp spawned a number of subdialects, such as *Franz Lisp*, which was developed at the University of California at Berkeley, and Zetalisp (Moon 1981), which was based on a special-purpose processor designed at the MIT Artificial Intelligence Laboratory to run Lisp very efficiently.

The Lisp dialect used in this book, called *Scheme* (Steele 1975), was invented in 1975 by Guy Lewis Steele Jr. and Gerald Jay Sussman of the MIT Artificial Intelligence Laboratory and later reimplemented for instructional use at MIT. Scheme became an IEEE standard in 1990 (IEEE 1990).

The *Common Lisp* dialect (Steele 1982, Steele 1990) was developed by the Lisp community to combine features from the earlier Lisp dialects to make an industrial standard for Lisp. Common Lisp became an ANSI standard in 1994 (ANSI 1994).

Although Lisp has not yet overcome its old reputation as hopelessly inefficient, Lisp is now used in many applications where efficiency is not the central concern. For example, Lisp has become a language of choice for shell languages and for extension languages for editors and computer-aided design systems.

Lisp possesses unique features that make it an excellent medium for studying important programming constructs and data structures and for relating them to the linguistic features that support them.

The most significant of these features is the fact that Lisp descriptions of processes, called *procedures*, can themselves be represented and manipulated as Lisp data. The importance of this is that there are powerful program-design techniques that rely on the ability to blur the traditional distinction between "passive" data and "active" processes.

Lisp's flexibility in handling procedures as data makes it one of the most convenient languages in existence for exploring these techniques. The ability to represent procedures as data also makes Lisp an excellent language for writing programs that must manipulate other programs as data, such as the interpreters and compilers that support computer languages.
