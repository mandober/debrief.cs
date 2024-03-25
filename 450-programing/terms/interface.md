# Interface

https://en.wikipedia.org/wiki/Interface_(computing)

## Terms

- Interface
- Interface types
  - Hardware interface
    - Small Computer System Interface (SCSI)
  - Software interface
    - Application Binary Interface (ABI)
    - Application Programming Interface (API)
  - User Interface (UI)



## Interface

In [computing], an interface is a *shared boundary* across which computer components exchange information.

Information exchange.   
The 3 principal parties between which the exchange takes place are:
- hardware (incl. all kinds of peripheral devices)
- software (incl. firware, drivers, shell, OS, apps)
- users (incl. humans, other computers, shy aliens, GAIs, foreign agents)

in fact, any combination of these, including exchanges within the same party, like hardware to hardware, software to software, users to users (?), as well as the exchange between software and hardware, software and users; except initially, the direct exchange between people and hardware is nowadays discouraged and unnecessary as it is more safely and comfortably handled with software acting as the proxy.

Some agents form a complete (bidirectional) interface (like touchscreen), while others are only semi-interfaces on their own, providing either input (like mouse) or output (monitor and printer), so they need to be complemented to make a full interface.

## Hardware interface

Hardware interfaces exist in many components, such as the various buses, storage devices, other I/O devices, etc. A hardware interface is described by the mechanical, electrical, and logical signals at the interface and the protocol for sequencing them (sometimes called signaling).

A standard interface, such as SCSI, decouples the design and introduction of computing hardware, such as I/O devices, from the design and introduction of other components of a computing system, thereby allowing users and manufacturers great flexibility in the implementation of computing systems.

Hardware interfaces can be *parallel* with several electrical connections carrying parts of the data simultaneously, or *serial* where data are sent one bit at a time.

## Software interfaces

A software interface may refer to a wide range of different types of interface at different levels of abstraction. Usually, all these desparate interfaces are managed by the kernel, with the OS assigning access to the hardware resources, to software and hardware, as needed. Processes running on the OS exchange data between themselves via various protocols (RPC) atop of data streams, filters and pipelines.

>A key principle of design is to prohibit access to all resources by default, allowing access only through well-defined entry points, i.e. interfaces.

Software interfaces provide access to computer resources (such as memory, CPU, storage, etc.) of the underlying computer system; direct access (i.e., not through well-designed interfaces) to such resources by software can have major ramifications-sometimes disastrous ones-for functionality and stability.

Interfaces between software components can provide constants, data types, types of procedures, exception specifications, and method signatures. Sometimes, public variables are also defined as part of an interface.

The interface of a software module A is deliberately defined separately from the implementation of that module. The latter contains the actual code of the procedures and methods described in the interface, as well as other "private" variables, procedures, etc. Another software module B, for example the client to A, that interacts with A is forced to do so only through the published interface. One practical advantage of this arrangement is that replacing the implementation of A with another implementation of the same interface should not cause B to fail - how A internally meets the requirements of the interface is not relevant to B, which is only concerned with the specifications of the interface.

### In object-oriented languages

Main articles:
- Protocol (object-oriented programming)
- Concept (generic programming)

In some object-oriented languages, especially those without full multiple inheritance, the term "interface" is used to define an *abstract type* that contains no data, but defines behaviours, specified as method type signatures.

A class may *implement an interface* by declaring such intention and providing all the methods the interface requires.

Furthermore, even in OO languages with single inheritance, a class is free to implement multiple interfaces, thus having *different types at the same time*.

This clashes with the pure type theory where each term belongs to only one type; albeit, the type theoretic concept of cumulativity already breaks that expectation alowing a term to belong to its usual type at the level n, plus to any type at the higher level than n in the universe:    
`∀ {𝓵 : Level} -> A : Type n -> A : Type (lsuc n)`

>An interface is thus a type definition.   
Anywhere an object can be exchanged (e.g. in a function call) the type of the object to be exchanged can be defined in terms of one of its implemented interfaces (or base-classes) rather than specifying the actual class.

>This means that any class that implements that interface can be passed in. 
For example, a dummy implementation may be used to allow development to progress before the final implementation is available. In another case, a fake or mock implementation may be substituted during testing. Such stub implementations are replaced by real code later in the development process.

Usually, an interface method contains no code (no impl) and thus cannot itself be called (it is abstract). First, the method (that is, the interface) must be implemented by a non-abstract code, and only then it can be called (only then it runs when invoked).

For example, an interface called `Stack` might define methods `push` and `pop`. The `Stack` may be implemented in different ways, e.g. as the `FastStack` or `GenericStack` - the former being fast since it is backed up with a fixed-size data structure, and the later being generic since its underlying data structure is resizable.

Though interfaces can contain many methods, they are allowed to contain one or none. *Marker interfaces*, like `Serializable,` contain no methods at all and serve to provide run-time information to generic processing using Reflection.
