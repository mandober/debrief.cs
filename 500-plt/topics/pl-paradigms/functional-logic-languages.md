## Functional Logic Programming

(paper: `Functional Logic Programming` - Sergio Antoy and Michael Hanus, 2010)

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

Different formalisms lead to different classes of declarative languages. **Functional languages** are based on the notion of mathematical function. A *functional program* is a set of functions that operate on data structures and are defined by equations using case distinction and recursion. **Logic languages** are based on predicate logic. A *logic program* is a set of predicates defined by restricted forms of logic formulas, such as Horn clauses (implications).

Both kinds of languages have similar motivations but provide different features. *Functional laguages* provide efficient, demand-driven evaluation strategies that support infinite structures,; *logic languages* provide non-determinism and predicates with multiple input/output modes that offer code reuse.

Since all these features are useful for developing software, it is worthwhile to amalgamate them into a single language. **Functional logic languages** combine the features of both paradigms in a conservative manner. Programs that do not use the features of one paradigm behave as programs of the other paradigm. In addition to the convenience of using the features of both paradigms within a single language, the combination has additional advantages. For instance, the demand-driven evaluation of functional programming applied to non-deterministic operations of logic programming leads to more efficient search strategies. The effort to develop languages intended to meet this goal has produced a substantial amount of research spanning over two decades.

The concrete syntax of the examples is `Curry`, but the design of the code and most of our considerations about the programs are valid for any other functional logic language, e.g. `TOY`, based on *reduction* for functional evaluation and on *narrowing* for the instantiation of unbound logic variables.

A common trait of functional and logic languages is the distinction between data constructors and defined operations. This distinction is also essential for functional logic languages to support reasonably efficient execution mechanisms.

>Data constructors build the data underlying an application, whereas defined operations manipulate these data.

A further feature common to many functional and logic languages is the definition of operations by pattern matching.

Purely functional languages stipulate that rules must be constructor-based. The patterns in each defining rule consist only of ctors and formal params. This excludes rules like `(xs ++ ys) ++ zs = xs ++ (ys ++ zs)`; this equation describes a property (associativity) of the operator (++), rather than a constructive definition about its evaluation. The restriction to constructor-based rules is an important factor to support execution with efficient strategies. Execution in functional languages means reducing expressions containing defined operations to values (i.e. expressions without defined operations) by applying defining equations, referred to as **replacing equals by equals**.

The logic component of functional logic languages comes into play when computing with incomplete information. The problem is to evaluate an expression containing a subexpression `e`, where `e` is unknown, apart from some conditions that `e` must satisfy.

The problem is to evaluate an expression containing a subexpression `e`, such that the value of `e` is unknown, but it is known that `e` must satisfy certain conditions. In a computation, `e` is represented by a free variable and the conditions on `e` constrain the values that `e` may assume. 

For instance, consider the equation `zs ++ [2] =:= [1,2]` (`=:=` marks an equation that should be solved; it syntactically distinguishes such equations from equations that define operations). This equation states that we are interested only in the values for the variable `zs` that satisfy this relation (constraint). In this case, we have to *instantiate* `zs` with a list (here, the solution is obviously the list `[1]`). The combination of variable instantiation and term reduction is called narrowing, originally introduced in automated theorem proving and first proposed for programming in 
