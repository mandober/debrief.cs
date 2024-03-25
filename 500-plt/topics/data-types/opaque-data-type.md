# Opaque data type

https://en.wikipedia.org/wiki/Opaque_data_type

An **opaque data type** is a data type whose concrete data structure is not defined in an interface. This enforces information hiding, since its values can only be manipulated by calling subroutines (exposed API) that have access to the missing information.

The *concrete representation* of the type is hidden from its users, and the *visible implementation* is incomplete.

A data type whose representation is visible is called *transparent data type*. Opaque data types are frequently used to implement *abstract data types*.

Typical examples of opaque data types include *handles for resources* provided by an operating system to application software. For example, the POSIX standard for threads defines an API based on a number of opaque types that represent threads or synchronization primitives like mutexes or condition variables.

An *opaque pointer* is a special case of an opaque data type, a data type that is declared to be a pointer to a record or data structure of some unspecified data type. For example, the standard library that forms part of the specification of C provides functions for file input-output that return or take values of type "pointer to FILE" that represent file streams (see C file input/output), but the concrete implementation of the type FILE is not specified.

## Uses in various languages

Some languages, such as *C*, allow the declaration of opaque records (structs), whose size and fields are hidden from the client. The only thing that the client can do with an object of such a type is to take its memory address, to produce an opaque pointer. If the information provided by the interface (API) is sufficient to determine the type's size, then clients can declare variables, fields, and arrays of that type, assign their values, and possibly compare them for equality. This is usually the case for opaque pointers.

In some languages, such as *Java*, the only kind of opaque type provided is the opaque pointer. Indeed, in Java (and several other languages) records are always handled through pointers.

Some languages allow *partially opaque types*, e.g. a record which has some public fields, known and accessible to all clients, and some hidden fields which are not revealed in the interface. Such types play a fundamental role in object-oriented programming. The information which is missing in the interface may be declared in its implementation, or in another "friends-only" interface. This second option allows the hidden information to be shared by two or more modules.
