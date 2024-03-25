# Inductive programming

**Inductive programming** (IP), also known as *program synthesis*, *automatic programming*, *example-based learning* or *program generation*, is a computing paradigm concerned with the synthesis of programs aided by a few examples and some form of background knowledge.

Inductive functional programming (IFP) is a subfield of IP that explores the
idea of generating modular functional programs and enabling the reuse of already invented functions.

Inductive programming lies at the intersection of several CS disciplines, including machine learning, AI and algorithm design.

*Deductive programming* is another approach to automatic programming in which one starts with a full specification of the target program, and attempts to generalize it into a program. Somewhat opposed is IP, which has an additional constraint in that the starting specification is incomplete because it is represented by a small number of examples. We can informally define inductive programming to be the process of generating programs from the given set of examples using a limited amount of background information. We refer to this problem as the program synthesis problem. The small number of examples can clearly create problems - if the given examples are not representative enough, the generated program will probably disappoint.

The main reason behind IP is the desire to offer non-technical people a means to "write" scripts (e.g. to automate some common task) just by feeding a couple of use case examples to an IP "translator" that will spit back a complete script to pull such task off. This would make interactions with slightly more complex applications a lot easier.

Perhaps a familiar example that realizes some of these ideas is the Excel's feature called FlashFill that tries to unreveal the general pattern behind a small set of examples, generating the rest of list entries.

Informally, function invention mimics the way we write programs: instead of writing a long, unbroken piece of code, we instead tend to divide the code into conceptually similar chunks, often writing reusable auxiliary functions, always trying to make programs as modular as possible.

It seems that code reuse, in the form of referwncing a previously defined function from within the definition of new function undergoing generation is a very complex task. Determining what functionality is available turns out to be much more complex a task to a clean room approach.

There are two main approaches to inductive programming
- analytical approach
- generate-and-test approach (GAT)


## Refs

* Learning functional programs with function invention and reuse
  by Andrei Diaconu 2020




* Synthesizing data structure transformations from input-output examples
https://www.cs.utexas.edu/~swarat/pubs/pldi15.pdf

* Synthesizing Data Structure Transformations from Input-Output Examples
https://zhu45.org/posts/2021/Jan/28/synthesizing-data-structure-transformations-from-input-output-examples/

* AI helps you reading Science
https://www.aminer.org/pub/573696df6e3b12023e5de23c/synthesizing-data-structure-transformations-from-input-output-examples

* Synthesizing
https://pldi15.sigplan.org/details/pldi2015-papers/27/Synthesizing-Data-Structure-Transformations-from-Input-Output-Examples

* Feedback-Driven Semi-Supervised Synthesis of Program Transformations
https://www.microsoft.com/en-us/research/uploads/prod/2020/08/OOPSLA_2020___Semi_Supervised_Program_Synthesis_for_Edit_Suggestion.pdf

* Recursive Program Synthesis
https://www.semanticscholar.org/paper/Recursive-Program-Synthesis-Albarghouthi-Gulwani/426a2eb44a8f947edf9a92288e80fd0d6b515de2

* Author's blog
https://blog.acolyer.org/2020/01/17/synthesizing-data-structure-transformations/

* λ² is a tool for synthesizing functional programs from input-output examples.
https://github.com/jfeser/L2

* Generalized Data Structure Synthesis
https://homes.cs.washington.edu/~mernst/pubs/generalized-synthesis-icse2018.pdf

* scinapse
https://www.scinapse.io/papers/2093535699

* Gauss: Program Synthesis by Reasoning over Graphs
https://rbavishi.github.io/docs/oopsla2021-gauss.pdf

* CMSC 32001 Spring 2017: `Topics in Programming Languages: Program Synthesis`
https://www.classes.cs.uchicago.edu/archive/2017/spring/32001-1/

* CS reading list
https://www.cs.cornell.edu/~ellisk/reading.html

* Program Synthesis
https://www.microsoft.com/en-us/research/wp-content/uploads/2017/10/program_synthesis_now.pdf

* Types and Programming Languages
https://www.cis.upenn.edu/~bcpierce/tapl/

* Synthesis of Recursive ADT Transformations from Reusable Templates
https://www.ccs.neu.edu/home/blerner/papers/tacas2017_synth.pdf

* DeepCoder: An Approach to Write Programs
https://www.ripublication.com/ijems_spl/ijemsv7n1_02.pdf

* John Feser
https://scholar.google.com/citations?user=ff2r-x0AAAAJ&hl=en

* New Applications of Software Synthesis:
Verification of Configuration Files and Firewall Repair
https://www.cs.yale.edu/homes/piskac/papers/2018PiskacNewDirections.pdf

* Guiding Program Synthesis by Learning to Generate Examples
https://openreview.net/forum?id=BJl07ySKvS

* Program Synthesis with Equivalence Reduction
https://par.nsf.gov/servlets/purl/10100598

* Program Synthesis with Pragmatic Communication
https://proceedings.neurips.cc//paper/2020/file/99c83c904d0d64fbef50d919a5c66a80-Paper.pdf

* Learning Abstractions for Program Synthesis
https://web.eecs.umich.edu/~xwangsd/pubs/cav18.pdf

* Interactive Program Synthesis by Augmented Examples
https://web.eecs.umich.edu/~xwangsd/pubs/uist20.pdf

* Program Synthesis Using Deduction-Guided Reinforcement Learning
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7363208/
