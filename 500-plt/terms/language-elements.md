# Language elements: fundamental

* functions
  - function definition
  - function application
  - parameters (variables)

LC, considered as a minimal PL, consists exculively of functions, no other *language entities* exist. However, if there's one thing the LC proved, it is that functions are quite capable and sufficient to handle any computation.

The functions in question are the pure, mathematical, functions, not only lacking the notion of side-effects but the capability to perform them. Still, even with this "restriction", people have managed to make LC perform quite spectacular computations.

Another issue with programming in LC is that it also lacks the language primitives. Almost every PL provides a set of base types which include at least the most fundamental primitives such as integers, floating-point numbers, characters, and the Boolean values. These are the most basic types that act as building blocks for construction of more complex datatypes. Language primitives include *language constructs* as well, e.g. conditionals for managing flow control. LC has none of those too. Everything is, and must be, managed with functions.

Additional issue with LC as a language concerns semantics: LC also leaves out the specification of an evaluation strategy. Over the years, numerous evaluation strategies have been developed for LC.

Taking all that into account, LC becomes more of a specification than a programming language. Even that specification is minimal and concerned only with the way in which functions are defined and applied. This means that a notion of programming in LC means doing everything yourself from scratch. In general, you need to come up with representation for all lanaguge elements you want to have: you need to define Booleans, numbers, conditionals, etc. The good news is that people have successfuly managed to come up with quite ingenous encodings. An encoding is a set of custom functions that define some language elements. For example, the famous Churh encoding includes the definitions for numerous language elements including Boolean value snad operators (Church Booleans), natural numbers (Church numerals) and arithmetic operations, data structures (Church pair, Church list, etc.) and operations on them, and many more. Church encoding, as the name that encompasses all the indivudual Church encodings, can act as a rich "standard library".
