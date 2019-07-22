# Formal semantics

**Formal semantics** describes concepts and provides us with technics to build mathematical models of programming languages upon which we can conduct various analysis, using them as a focal point in reasoning about programs' behaviour.

The semantics of PL is often divided into 3 sections:

1. **Operational semantics** describes the meaning of a PL by specifying how it executes on a VM. Evaluation and execution relations are specified by syntax driven rules. It was advocated by Gordon Plotkin as *structural operational semantics*.

2. **Denotational semantics** is a technique for defining the meaning of PL with mathematical concepts of *complete partial orders*, *continuous functions* and *least fixed points*. Also known as the *mathematical semantics*, it was pioneered by Christopher Strachey and provided with a mathematical foundation by Dana Scott.

3. **Axiomatic semantics** puts emphasis on the proof of correctness by issuing rules, intended to constrain a PL construct, within the program logic. For example, placing conditions that assert a PL construct is behaving as expected. The principle form of this approach, called Hoare logic, is named after its creator, C.A.R. Hoare.
