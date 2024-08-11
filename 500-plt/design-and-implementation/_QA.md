# PLT :: Q and A

## Relation between constants, literals and values

- constants : literals : values
- static (literal, hardcoded) vs dynamic (computed) constant

True or false:
- All literals are values.
- All constants are values.

- All constants are literals.
- All values are literals.

- All literals are constants.
- All values are constants: what about functions - lambdas are definitely values in some PLs, but are lambdas considered literals?

Literals:
- literal Boolean constants: 'true' and 'false'
- literal integers: -1, 0, 1, 0xff, 0b1111, 0o33
- literal floats: 3.14, 0.233e3, 0.233-E3
- literal characters: 'a', 'b', '\n', '\t'
- literal strings: composed by concatenating literal characters

A language constant is the simplest syntactic form of the language.

Constants are literals and they are atomic (non-compound) terms. 

Constants themselves are values (grouped by type), and they are the basic building blocks of compound values (records, objects, structs, etc.). 

- array literal [1,2,3]
- object literal `{a=1, b=3}`

If string is considered a (compound) constant, then a literal array/object is also a constant?
