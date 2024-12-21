# Abstraction

"All problems in computer science can be solved by another layer of abstraction… Except for the problem of too many layers of abstraction."   
-- Butler Lampson

Operationally, it's ridiculous how many times this principle was spot on. Whenever you find yourself at an impass, recall this golden rule.

Abstraction in computer science is just its extension from phylosophy and logic and, in general, human understanding of the world. Abstraction is one of the key methodologies (also steps or stages) in resoning, along with analysis, synthesis, composition, derivation [I forgot something, I can feel it].

Analysis kicks in first. Faced with an awesome phenomena of any kind (event, situation, idea, structure, object - in general, with a problem or task, to keep it software related), with something of enourmous complexity and intricacy (that is, tricky af), we cannot even begin to comprehend it in its entirety. For example, if tasked to create an operating system from scratch, many programmers would probably feel overwhelmed, not knowing where to direct their confusion and awe, let alone from which side to attack such problem.

However, in software, as in life, as the fear subsides, people tend to do what they have done since the caves so well - break it on down, yo. We put our abstract-thinking cap on and analyze the shit out of that monstrosity, breaking in on further down into smaller and smaller pieces, until the pieces become easily digestable chunks understood almost effortlessly; as if obvious.

Then comes the process of synthesis.










- analysis
- synthesis
- abstraction
- composition
- derivation



"The acts of the mind, wherein it exerts its power over simple ideas, are chiefly these three: 1) Combining several simple ideas into a compound one, and thus all complex ideas are made 2) The second is bringing two ideas, whether simple or complex, together, and setting them by one another so as to take a view of them at once, without uniting them into one, by which it gets all its ideas of relations. 3) The third is separating them from all other ideas that accompany them in their real existence: this is called *abstraction*, and thus all its general ideas are made."
-- John Locke in "An Essay Concerning Human Understanding", 1690


"Abstraction is the elimination of the irrelevant and the amplification of the essential." -- Robert C. Martin



*Abstraction* is a process of focusing on the main problem by ignoring lower-level details.

In high level programming, we deals with two particular kinds of abstraction: procedural abstraction and data abstraction. 
*Procedural abstraction* a model of what we want a subprogram to do (but not how to do it). It provides mechanisms for calling well defined procedures or operations as entities. Abstraction can be thinks in terms of layers model where each layer perform some meaningful task. Each layer hide the implementation details of its below layer.


## Abstraction in programming languages
Functional Logic Programming
Sergio Antoy and Michael Hanus, 2010

>The evolution of programming languages is the stepwise introduction of abstractions hiding the underlying computer hardware and the details of program execution.

- *Assembly languages* introduce mnemonic instructions and symbolic labels for hiding machine codes and addresses
- *Fortran* introduces arrays and expressions in standard mathematical notation for hiding registers.
- *Algol-like languages* introduce structured statements for hiding gotos and jump labels
- *Object-oriented languages* introduce visibility levels and encapsulation for hiding the representation of data and the management of memory.
- *Declarative languages* hide the order of evaluation by removing assignment and other control statements.

Along these lines, *declarative languages*, the most prominent representatives of which are functional and logic languages, hide the order of evaluation by removing assignment and other control statements.

A *declarative program* is a set of logical statements describing properties of the application domain. The *execution of a declarative program* is the computation of the values of an expression with respect to these properties.

>Thus, the programming effort shifts from encoding the steps for computing a result, to structuring the application data and the relationships between the application components.

Declarative languages are similar to formal specification languages, but with a significant difference - they are executable. The language that describes the properties of the application domain is restricted to ensure the existence of an efficient evaluation strategy.

Different formalisms lead to different classes of declarative languages. **Functional languages** are based on the notion of mathematical function. A *functional program* is a set of functions that operate on data structures and are defined by equations using case distinction and recursion. **Logic languages** are based on predicate logic. A *logic program* is a set of predicates defined by restricted forms of logic formulas, such as Horn clauses (implications). Both kinds of languages have similar motivations but provide different features. *Functional laguages* provide efficient, demand-driven evaluation strategies that support infinite structures,; *logic languages* provide non-determinism and predicates with multiple input/output modes that offer code reuse.



## Levels of abstractions

- manual labor (no abstraction)
- physical layer
- logical layer
- semantics
- pragmatics

* physical layer
  electricity, current, voltage
  capacitors
  diode
  transistors
* instructions layer
  microprocessor instructions
  instruction set architecture (ISA)
  machine instructions
    - number of instructions:
      - CISC complex instruction set computer
      - RISC reduced instruction set computer
    shared per CPU arch 2: x86, arm, powerpc
    shared per CPU model (in the same arch)
    shared per CPU generation (in the same arch): x86, x86_64
    shared per CPU word: 8, 16, 32, 64 bits
    x86 (16-bit, 32-bit) -> x86_64 (32-bit, 64-bit) -> x64 (64-bit)
* logical layer
  bit
  bitstring
  opcode
  data and instructions
  word
  types
* language layers
  machine language
  assembly language (bijection to machine lang)
  higher-level langs

Electronic components
https://en.wikipedia.org/wiki/Electronic_component

Digital electronics
https://en.wikipedia.org/wiki/Digital_electronics

Basic computer components
https://en.wikipedia.org/wiki/Computer_hardware
