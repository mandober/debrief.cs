# S-Expression

https://en.wikipedia.org/wiki/S-expression


**S-expressions**, or sexpr (aka "symbolic expression"), are a notation for nested list-structured data, invented for and popularized by the programming language Lisp, which uses them for source code as well as data (BTW, this property is called *homoiconicity*).

In the syntax of Lisp, an sexpr is classically defined as either:
- an atom
- an expression of the form `(x . y)` where `x` and `y` are sexpr

The second, recursive part of the definition represents an ordered pair, which means that s-expressions are binary trees.

The definition of an atom varies per context. In the original definition by John McCarthy, it was assumed that there existed "an infinite set of distinguishable atomic symbols" represented as "strings of capital Latin letters and digits with single embedded blanks" (i.e., character string and numeric literals). Most modern sexpr notations in addition use an abbreviated notation to represent lists in s-expressions, so that `(x y z)` stands for 
`(x . (y . (z . NIL)))` where `NIL` is the special end-of-list object, alternatively written `()` (the only representation in Scheme).

In the Lisp family of programming languages, sexpr are used to represent both source code and data. There are other uses of sexpr, most notably it is used as text representation of WebAssembly.

The details of the syntax and supported data types vary in the different languages, but the most common feature among these languages is the use of S-expressions and prefix notation.

## Datatypes and syntax

Common sexpr datatypes:
* Lists and pairs: `(1 () (2 . 3) (4))`
* Symbols: `with-hyphen`, `?@!$`, `a\ symbol\ with\ spaces`
* Strings: `"Hello, world!"`
* Integers: `-9876543210`
* Floats: `-0.0`, `6.28318`, `6.023e23`
* The character `#` is often used to prefix extensions to the syntax; e.g. `#x10` for hex, `#\C` for characters, `#f` for false boolean value.
