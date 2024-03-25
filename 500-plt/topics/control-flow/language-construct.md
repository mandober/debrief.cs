# PL Features :: Control Flow :: Language Constructs

A language construct is a syntactically allowable part of a program that may be formed from one or more lexical tokens in accordance with the rules of the programming language.

The term "language construct" is often used as a synonym for control structure. Control flow statements (like conditionals and loops, etc.) are language constructs, not functions; e.g. `while (true) {…}` is a language construct, but `add(10)` is a function call.

Another related meaning is that language construct are special forms (in Lisp or Scheme sense) that the compiler has intimate knowledge of, and, which cannot be implemented as user-defined functions (of course, defining a function and having it rely on the very same language construct it is trying to replace, does not qualify). This can be the lacmus test as to whether something is a language construct in the strict sense, or just a function from the standard library.

One would also think that a language construct can berecognized because it alsways includes one or more of the language keywords - although this is indeed often the case, it doesn't have to be; for example, Haskell has the `if-then-else` conditional expression as one of the rare language constructs (and all 3 words are keywords), despite the fact that the users can easily define this and similar branching conditionals as functions (that don't rely on the `if-then-else` conditional itself).
