# Name

What's a name and why it's hard to suppress a poetry outburst it causes? 

Variable
Identifier
Name of variable


The basic task in iterative PL is storing a value.

To accomplish this task we need to choose the type of storage, which is usually the main memory. To use the storage space it provides we have to know the protocol: the entire main memory is presented to consumers as an array of memory blocks, where each memory block has an index and it is capable of storing 1 byte of data.



 Then we need a way 


The storage that will hold this value is usually the main memory,

that is, the value will be stored at a location (address).

so we need a way to denote a location in memory.

 want to store a value (e.g. 42) at some memory location. But first we need a way to denote a location in memory.

The most precise and convenient way to refer to anything is by the name, but if we can't use the name (because isn't one or we don't know it), we could try referring to something by its qualities or its relation in the surrounding context.

Individual memory locations don't have a name, but they do have an index we can use to refer to an individual memory address by indexing into the main memory. Because the entire memory is presented as an array of memory blocks each with its own index and each capable of holding 1 byte, we could express our intent (storing a value at a memory address) possibly as: `Memory[7FFF0100] <- 120`. 



A variable is a named memory location.

Declaring a variable means giving a friendly name to a memory address.

Which exact memory address is named is not that interesting to developers writing code at this altitude (in higher PL).

The task to pick a memory address that will bear the given name is delegated to the interpreter (as in part of compiler/interpreter that interprets our source code).
