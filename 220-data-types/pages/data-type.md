# Data type

https://en.wikipedia.org/wiki/Data_type

>Not to be confused with Data structure

In computer science and computer programming, 
a **data type**, or simply **type**, is 
a collection of values, 
usually specified as a set of possible values, 
a set of operations on those values, 
and a representation of those values as *machine types*.

A **data type specification** 
constrains the possible values 
that an expression might take.

A data type specification just means 
that an expression has a type specified.

Expressions, which include values, have a type.
(statements, declarations, etc. do not have a type).

On *literal data*, it tells the compiler or interpreter how the programmer intends to use the data; e.g. a literal integer `1` can have many valid types (u8, i8, i16, u16, i32, u32, i64, u64, f32, f64, etc.), so by specifying the type as e.g. i64, the programmer tells the compiler they intend to use it as the unsigned 64-bit integer.

Most programming languages support data types based or derived from the machine integers and floating-point numbers. Like machine integers which back then up, a PL offers integer types of varying sizes and signedness. And similarly for the floating-point numbers, although there are usually just two types based on them: f32 or float (binary32), and f64 or double (binary64). All other types, like character and Boolean type, are based on integers (are basically integers).

## Contents

- 1. Concept
- 2. Definition
- 3. Classification
- 4. Machine data types
- 5. Boolean type
- 6. Numeric types
- 7. Enumerations
- 8. String and text types
- 9. Union types
- 10. Algebraic data types
- 11. Data structures
- 12. Abstract data types
- 13. Pointers and references
- 14. Function types
- 15. Type constructors
- 16. Quantified types
- 17. Refinement types
- 18. Dependent types
- 19. Intersection types
- 20. Meta types
- 21. Convenience types

## Concept

A data type may be specified for many reasons: similarity, convenience, or to focus the attention. It is frequently a matter of good organization that aids the understanding of complex definitions.

Almost all programming languages explicitly include the notion of data type, though the possible data types are often restricted by considerations of simplicity, computability, or regularity.

An explicit data type declaration typically allows the compiler to choose an efficient *machine representation*, but the conceptual organization offered by data types should not be discounted.

Different languages may have similar types but with different semantics. For example, in Python, `int` represents an *arbitrary-precision integer* which supports the traditional arithetic operations. However, in Java, the type `int` represents the set of 32-bit integers with arithmetic operations that wrap on overflow. In Rust, the 32-bit integer type, `i32`, panics on overflow in debug mode.

Most PLs allow the programmer to define additional, custom or user data types, usually by combining other types and then defining a set of operations which manipulate the new data type. For example, a programmer might create a new data type for rational numbers by combining the signed integer type (as ℤ) for nominator with the unsigned integer type (as ℕᐩ) for denominator.

Data types are entities in a *type system*, which classifies, specifies restrictions and rules for how the types are defined and used. In a type system, a data type represents a constraint (a set of rules) placed upon values. It describes the representation, interpretation and structure of objects (values) stored in computer memory.

A type system uses the information that each data type carries in itself to check correctness of programs; to check whether the values behave in accordance with the behavior specified by their type.

A compiler uses the typing information to make many decision about a value: the type tells it the size of a value so it can decide whether and how to optimize its storage, the choice of the operation it needs to use to manipulate such value correctly (type-based dispatching), etc.

Most data types from mathematics and statistics have comparable types in computer programming, at least as approximations.

## Definition

Parnas, Shore & Weiss (1976) have identified 5 definitions of a "type", based on the various typing aspects, that were used in the literature:

* Syntactic
A type is a purely syntactic label associated with a variable when it is declared. Although useful for advanced type systems such as substructural type systems, such definitions provide no intuitive meaning of types.

* Representation
A type is defined in terms of a composition of more primitive types, often machine types.

* Representation and behaviour
A type is defined as its representation and a set of operations to manipulate it.

* Value space
A type is a set of possible values a variable ranges over. 
Such definitions make it possible to speak about sums and products of types.

* Value space and behaviour
A type is a set of values which a variable ranges over (can possess) and a set of functions that one can apply to these values.

The definition in terms of a representation is often seen in imperative languages (ALGOL, Pascal), while the definition in terms of a value space and behaviour was used in higher-level languages (Simula, CLU).

*Type + behavior* aligns more closely with object-oriented model, whereas a structured programming model would tend to not include code, instead preferring to deal with types as if they were passive data structures.

## Classification

Data types are classified accoring to various classification systems that are based on different criteria, prioritizing different factors, principles and properties.

Some categories have managed to garner, more-less, standardized meaning. For example, **primitive or builtin data types** almost always denotes a set of types built into the implementation of a language and based on the machine-primitive types. Systems programming languages will typically try harder to support primitive types that closely match the machine types (of the underlying or common computer architecture). Then all other types are called non-primitive. On the other hand, higher-level languages (especially dynamic, DSL, scripting languages) will instead offer a set of primitive types that are more convenient to work with.




*User-defined data types* are non-primitive types. For example, Java's numeric types are primitive, while classes are user-defined.

A value of an *atomic type* is a single data item that cannot be broken into component parts. A value of a *composite type* or *aggregate type* is a collection of data items that can be accessed individually. For example, an integer is generally considered atomic, although it consists of a sequence of bits, while an array of integers is certainly composite.

*Basic data types* or *fundamental data types* are defined axiomatically from fundamental notions or by enumeration of their elements. *Generated data types* or *derived data types* are specified, and partly defined, in terms of other data types. 

All basic types are atomic. For example, integers are a basic type defined in mathematics, while an array of integers is the result of applying an array type generator to the integer type.

The terminology varies - in the literature, primitive, builtin, basic, atomic, and fundamental may be used interchangeably.


## Machine data types

## Boolean type

## Numeric types

## Enumerations

## String and text types

**Strings** are a sequence of characters used to store words or plain text, most often textual markup languages representing formatted text.

**Characters** may be a letter of some alphabet, a digit, a blank space, a punctuation mark, etc. Characters are drawn from a character set such as ASCII.

*Character and string types* can have different subtypes according to the *character encoding*. The original 7-bit wide ASCII was found to be limited, and superseded by 8, 16 and 32-bit sets, which can encode a wide variety of non-Latin alphabets (such as Hebrew and Chinese) and other symbols. 

Strings may be of either *variable-length strings* or *fixed-length strings*, and some programming languages have both types. They may also be subtyped by their maximum size.

Since most character sets include the digits, it is possible to have a numeric string, such as "1234". These numeric strings are usually considered distinct from numeric values such as 1234, although some languages automatically convert between them.

## Union types
## Algebraic data types
## Data structures
## Abstract data types
## Pointers and references
## Function types
## Type constructors
## Quantified types
## Refinement types
## Dependent types
## Intersection types
## Meta types
## Convenience types
