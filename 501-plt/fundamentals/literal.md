# Literal

https://en.wikipedia.org/wiki/Literal_(computer_programming)

[Character literal](https://en.wikipedia.org/wiki/Character_literal)
[Function literal](https://en.wikipedia.org/wiki/Function_literal)
[Here document](https://en.wikipedia.org/wiki/Here_document)
[Integer literal](https://en.wikipedia.org/wiki/Integer_literal)
[String literal](https://en.wikipedia.org/wiki/String_literal)


A value may be introduced either directly, as a literal, or as a result of an expression. A **literal** is a value that is directly specified in source code.

Usually, almost all primitive type values of a language have literal epresentation that makes their use comfortable. If a language had no literals, getting at them could still be possible in cases of dynamically typed languages. JS is famous for this, inspiring a slew of experimental languages that try to retrieve all JS literals via other means (e.g. BrainFuck).


one could say that otherwise we wouldn't be able to use them, at least not comfortably. This uncomfortable use of language primitives has become famous in JS, which provides language constructs that we can use to retrieve pretty much all values (otherwise conveninetly available as literals).



a notation for representing a fixed value in source code.

A literal is a directly specified value, usually belongiong to a primitive language type, 

represented  one of primitive types of a language, whose value is directly specified in source code.


All programming languages have notations for atomic values such as integers, floating-point numbers, and strings, and usually for booleans and characters; some also have notations for elements of enumerated types and compound values such as arrays, records, and objects.

An anonymous function is a literal for the function type.

In contrast to literals, variables or constants are symbols that can take on one of a class of fixed values, the constant being constrained not to change.

Literals are often used to initialize variables.

In lexical analysis, literals of a given type are generally a token type, with a grammar rule, like "a string of digits" for an integer literal. Some literals are specific keywords, like true for the boolean literal "true".

In some object-oriented languages (like ECMAScript), objects can also be represented by literals. Methods of this object can be specified in the object literal using function literals. The JSON data interchange format is based on a subset of the JavaScript object literal syntax, with some additional restrictions (among them requiring all keys to be quoted, and disallowing functions and everything else except data literals). Because of this, almost every valid JSON document (except for some subtleties with escaping) is also valid JavaScript code, a fact exploited in the JSONP technique.



---


A few languages provide a method of specifying that a literal is to be processed without any language-specific interpretation. This avoids the need for escaping, and yields more legible strings.


Literal affixes

While sigils are applied to names (identifiers), similar prefixes and suffixes can be applied to literals, notably integer literals and string literals, specifying either how the literal should be evaluated, or what data type it is. For example, 0x10ULL evaluates to the value 16 as an unsigned long long integer in C++: the 0x prefix indicates hexadecimal, while the suffix ULL indicates unsigned long long. Similarly, prefixes are often used to indicate a raw string, such as r"C:\Windows" in Python, which represents the string with value C:\Windows as an escaped string this would be written as "C:\\Windows".

As this affects the semantics (value) of a literal, rather than the syntax or semantics of an identifier (name), this is neither stropping (identifier syntax) nor a sigil (identifier semantics), but it is syntactically similar.


---
