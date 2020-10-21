# Data type

https://en.wikipedia.org/wiki/Data_type

A **data type** is a set of intrinsic and associated attributes of data.

The primary consumer of types is the compiler (interpreter). A type describes the data to the compiler, informing it about the possible usage and behaviour of data. A type usually consists of multiple data attributes but the most important piece of information to a compiler is the size. The size informs a compiler about the appropriate amount of storage (registers and memory) it must procure for the compiled program. Since every type is associated with a certain size, by knowing the type a compiler infers the size of data; that is, the primitives have a fixed predifined size; although the compound types vary in size, they are all made out of primitive ones so their size is deterministic.

In math, types have been employed in order to resolve the inconsistencies (Russell's paradox) found in the set theories. It was Bernard Russell himself that employed types in his and Whitehead's attempt to stratify sets. Basically, to rid of his paradox, Russell classified sets into types such that a set of type 1 could only be contained in a set of type 2, which could only be a member of a set of type 3, and so on, ad infinitum.




The programming languages have inhertied types from the set theory.



The primitive types have a predefined, constant size. Everyone (humans, compilers and sparrows alike) knows their size: it is always one word (1 word = 4 bytes @86, 8 bytes @86_64 arhitecture). The size of a word (which is 64 bits nowadays) determines a range of things on a given computer: it is the size of the mother integer type, the size of machine pointers, the capacity of machine's registers, the quantum of width of system buses, and more. The third kind of primitive type is a floating point number, which has a different internal representation then integers (which use the two's compliment scheme) and its own set of registers, but share the size with integers/pointers.

These 3 primitives are practically universal, and some other primitives that are usually available (like a character and a Boolean) are implemented in terms of the integer. ASCII characters are numbers after all, as are the unicode code points; the latter require 1-4 bytes per codepoint in a variable encoding that is UTF-8, and they can hardly be considered a primitive type anyway.




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

---

# Data Type

At the lowest level, **data** is just a stream of bits without inherent structure, open to arbitrary interpretation. In an unconstrained access to data, a bit pattern representing an integer can be reinterpreted as it were representing a character.

**Data typing** is classification of data into data types, which define the ways the data is intended to be used. A type defines the meaning of the data and the operations that can be taken on such data. It may also define the way the data of that type should be stored.

A **data type** is a constraint placed upon the interpretation of data in a type system, describing representation, interpretation and structure of values stored in memory.



Classification of data into categories based on common properties forms the data types.

However, unlike its "parent" science math, which is generally free to organize the data however it sees fit, computer science is constrained by the physical limits of a computer.

The data types in CS are a compromise between what we want to represent and what is representable at all, on a finite device that is computer.

We must always keep in mind that computers basically only deal with what they can represent reliably and that is the two states, commonly interpreted as either one or zero.

Fortunately, the two distinct states is all that's needed to cleanly map the traditional Boolean logic with its True and False values, which introduces logic in computations i.e. ability to make decisions based on values, thus allowing a computer to evolve beyond a mere calculator.






binary numbers arising from the two states 
two states, commonly considered numbers 0 and 1.
numbers, and only two of them
represent two distinct states, usually considered as numbers 0 and 1.
The first (mathematical) concept to fall victim of this limitation is the concept of infinity (or infinities) and the attempt to cleanly map e.g. number types from math to CS falls short. 
of numbers from math to CS
immediate consequence of this is that the concept of infinity (infinities goes out the windows)
and the actual computer data types
that came to be as an intermix between 


A (data) type is a property of data
which tells the compiler/interpreter
how the programmer intends to use the data.

Most programming languages support common data types of real, integer and boolean.

A data type constrains the values that an expression, such as a variable or a function, might take.

This data type defines the operations that can be done on the data, the meaning of the data, and the way values of that type can be stored.

A type of value from which an expression may take its value.




A data type defines a range of values which the variable is capable of storing, and it also defines a set of operations that are permissible to be performed on variables of that type.
