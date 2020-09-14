# Data type

https://en.wikipedia.org/wiki/Data_type

A **data type** is a property of data that informs the compiler of the size and intended use for the data.

Most programming languages support primitive data types, such as integers, floats, characters and Booleans.

A data type constrains the values that an expression, such as a variable or a function, might take. This data type defines the operations that can be done on the data, the meaning of the data, and the way values of that type can be stored. A data type provides a set of values from which an expression (i.e. variable, function, etc.) may take its values.

Parnas, Shore & Weiss (1976) identified 5 definitions of the term "type":
- *Syntactic*: a type is a purely syntactic label associated with a variable when it is declared, without any semantic meaning.
- *Representation*: a type is defined in terms of its composition of more primitive types.
- *Representation + behaviour*: representation + a set of operators manipulating these representations.
- *Value space*: a type is a set of values that a variable ranges over.
- *Value space + behaviour*: value space + a set of functions that one can apply to these values.

The definition in terms of a representation was often done in imperative languages, while the definition in terms of a value space and behaviour was used in higher-level languages (such as Simula and CLU).

> Any type that does not specify an implementation is an abstract data type.

For instance, a stack ADT may be implemented as an array or as a linked list. Abstract data types are handled by the functions (code) that are agnostic about their underlying representation. Programming that is agnostic about concrete data types is called *generic programming*. Arrays and records can also contain underlying types, but are considered concrete whenever they specify how their contents/elements is to be laid out in memory.
