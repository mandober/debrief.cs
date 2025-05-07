# Abstract data structure

*Abstract data structure* (ADT) or an *abstract data type* is an abstraction of a data store with a set of properties and supported methods.

All the things we can possibly infer about an abstract data structure is through our intraction with its methods; nothing else is permitted, no other ways of probing it. Concrete implementations of ADTs usually almost always reveal some details. For example, a concrete implementation in an OO language already suggest that the ADT is defined as a class, which comes with a revealing assumption that it supports inheritence. In lower level languages, knowing the manner in which memory may be allocated is also revealing. The implementations details should be kept hidden to prevent the users depend on some aspect of how they are realized.

This is all to say that an ADT is exclusively characterized by its operations and nothing else. All that may be inferred about an ADT by interacting with it thorugh the operations it explicitly supports, is what characterizes that ADT and nothing else.
