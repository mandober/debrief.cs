# Identifier

## Identifiers

https://en.wikipedia.org/wiki/Identifier

An **identifier** is a *name* that identifies 
(that is, labels the identity of) 
either a unique object or a unique class of objects, 
where the "object" or class may be a notion, 
physical countable object (or class thereof), 
or physical noncountable substance (or class thereof). 

The abbreviation ID often refers to
- identity
- identification - the process of identifying
- an identifier, that is, an instance of identification

* An identifier may be a word, number, letter, symbol, or a combination thereof.

The concepts of *name* and *identifier* are denotatively equal, and the terms are thus denotatively synonymous; but they are not always connotatively synonymous, because code names and ID numbers are often connotatively distinguished from names in the sense of traditional natural language naming.

## Identifiers in CS

https://en.wikipedia.org/wiki/Identifier_(computer_languages)

In PLs, **identifiers** are tokens which name language entities (constants, variables, types, functions, modules, classes, etc.).

Which character sequences are allowed in an identifier depends on the *lexical grammar* of the PL.

The most common (but general) rule for identifiers
- must start with an alphabetic character (including underscore)
- optinally followed by alphanumeric characters


Digit as the initial char in an identifier is disallowed in order to simplify lexing: as soon as the number is seen, lexer knows a numeric literal is coming; otherwise, additional analisys would be needed to determine if the token is an identifier or an numneric literal.

Many modern languages have extended the notion of alphabetic (and alphanumeric) characters to support Unicode. However, a common restriction is not to permit whitespace characters and language operators, so the tokenization remains *context-free*.

For example, forbidding `+` in identifiers due to its use as a binary operation means that `a+b` and `a + b` (and anything similar) can be tokenized the same, as addition; otherwise, `+b` could be an identifier.

Allowing whitespace in identifiers is particularly problematic, but some PLs allow it, such as ALGOL 68 and some ALGOL variants. In ALGOL this is possible through *stropping* because keywords are syntactically differentiated, so there is no risk of collision or ambiguity, spaces are eliminated during the line reconstruction phase, and the source was processed via scannerless parsing, so lexing could be *context-sensitive*.

In compiled PLs, identifiers are often only compile time entities. That is, at runtime the compiled program contains references to memory addresses and offsets rather than the textual identifier tokens (managed by the compiler).

In PLs that support *reflection*, such as interactive evaluation of source code (using an interpreter or an incremental compiler), identifiers are also runtime entities, sometimes even as first-class objects that can be freely manipulated and evaluated. In Lisp, these are called symbols.

There are some exceptions, but generally, PLs do not assign any semantic meaning to an identifier based on the actual character sequence used.
- Perl's sigils are var prefixes that set some of its properties
- In Ruby, vars starting with a capital letter are immutable
- In Go, vars starting with a capital letter are public




## Stropping

https://en.wikipedia.org/wiki/Stropping_(syntax)

**Stropping** is a method of explicitly marking letter sequences as having a special property (being a keyword, having a certain type) in order to avoid name clashes. Stropping allows the same letter sequence to be used both as a keyword and as an identifier, simplifying parsing. For example, allowing an identifier to have the name of a keyword by decorating one of them in some way; e.g. a keyword prefixed with the sigil is an identifier, `$if`.

Stropping is not used in most modern languages, instead, keywords are reserved and forbiden to be used as identifiers.
