# Variable

https://en.wikipedia.org/wiki/Variable_(computer_science)

A **variable** is an abstraction of the concept of a container that contains some quantity of data, which consistutes its **value**. 
In a way, `variable : value ≈ set : element`.

A variable is identified by its **symbolic name** also called an **identifier** or a **label**. That a variable always has a name, is its most important property becasue it provides indirection. Instead of referring to "this value" we can instead speak of "this container" and of "whatever value it contains". Such level of indirection allow us to refer to the same entity (container) even though thevalue it holds changes over time. 

Descriptiveness that the names provide is another benefit. Instead of hard-coding some value, we can use a variable instead. This also means that such value gets to have a *single source of truth*, making potential changes managable and reasoning about the code easier.


---


One could say that a CPU registry is a variable since it may hold different values over time, and a particular register can be identified and referenced in assembly languages.


Compilers have to replace variables' symbolic names with actual memory addresses. While a variable's name, type, and address often remain fixed, the data stored in the address may be changed during program execution.


name, symbolic name, identifier, label

Generally, a variable must always have a name, but it may not always have a known or even determinable value, since some languages permit the *declaration* without the immediate *initialization* of a variable. Languges where this is legal are usully typed, meaning the type of the variable is determinable and known to the compiler. Generally, a compiler needs to determine the exact size the variable takes once assigned a value (and knowing the type is the primary and most reliable source of this information, sometimes even more exact then the value itself).

We can say that a variable refers to a value or that a variable is associated with a value.

A declared but uninitialized, variable has a known default value, according to its type. Other languages will just associate it with a memory address.

In general, people are ill suited for handling numbers, it was never a thing we handled effortlessly. However, dealing with names comes very easy and natural. When a thing is inherently numeric, people quickly create a service that maps between numbers and names, such as DNS or alphabetic phone numbers. Almost all aspects of human to computer interaction are applicable for such a service.


storage address (identified by a memory address) paired with an associated *symbolic name*, which contains some known or unknown quantity of information referred to as a **value**.

The variable name is the usual way to reference the stored value, in addition to referring to the variable itself, depending on the context.

This separation of name and content allows the name to be used independently of the exact information it represents. The identifier in computer source code can be bound to a value during run time, and the value of the variable may thus change during the course of program execution.

Variables in programming may not directly correspond to the concept of variables in mathematics. The latter is abstract, having no reference to a physical object such as storage address. The value of a computing variable is not necessarily part of an equation or formula as in mathematics. Variables in computer programming are frequently given long names to make them relatively descriptive of their use, whereas variables in mathematics often have terse, one- or two-character names for brevity in transcription and manipulation.

A variable's storage address may be referenced by several different identifiers, a situation known as aliasing. Assigning a value to the variable using one of the identifiers will change the value that can be accessed through the other identifiers.

Compilers have to replace variables' symbolic names with the actual addresses of the data. While a variable's name, type, and address often remain fixed, the data stored in the address may be changed during program execution.
