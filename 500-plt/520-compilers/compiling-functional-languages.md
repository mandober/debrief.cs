# Compiling functional programming languages

In the 1980's, one approach to *compiling FPLs* was to compile them down to a set of combinators such as `SKI`.

John Hughes' work on *supercombinators* has introduced a more optimized way of compilation brought about by tweaking the combinators to better fit them to the roperties of a particular program.

Lennart Augustsson's work on integrating supercombinators into the compilation process was the next big improvement. GHC has employed compilation technics stemming directly from this approach.

- Well, how did we get here? What have we lost on the way here? Let's explore alt.history?
