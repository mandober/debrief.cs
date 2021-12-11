# SICP: Lecture Notes

## Lecture Notes 1

Like geometry is not really about surveying, but fundamentally about axioms for dealing with a particular kind of knowledge, known as *declarative knowledge*, or "what is true" knowledge, so CS is not really about computers which are just its tool.

This is a common confusion becasue when a field is just getting started, it is easy to confuse the essence of the field with its tools because we usually understand the tools much less well in the infancy of an area. In hindsight, we realize that the important essence of what the Egyptians did was to formalize the notions of space and time which later led to axiomatic methods for dealing with declarative, or "What Is" kinds of knowledge. So, geometry is not really about measuring devices, but rather about declarative knowledge.

By analogy to geometry, Computer Science is not really about computers, its tool, but actually about the kind of knowledge that CS makes available to us.


CS deals with a different kind of knowledge, *imperative* or "how to" knowledge. It is trying to capture the notion of a process that causes information to evolve from one state to another, and we want to see how we can uses methods to capture that knowledge.

*Declarative knowledge* is knowledge that talks about what is true. It makes statements of fact that one can use to try to reason about things.

For example, here is a statement of truth about square roots. It provides a definition of a square root. As a consequence if someone were to hand you a possible value for the square root of some x, you could check it by using this definition. But it doesn't tell you anything about how to find the value of square root of x.

On the other hand, *imperative knowledge* talks about "how to" knowledge. It tends to describe a specific sequence of steps that characterize the evolution of a process by which one can deduce information, transforming one set of facts into a new set.


*Algorithm* is a specific piece of imperative knowledge. It describes a sequence of steps to follow to deduce some new information from a set of facts. It tells us "how to" do something. Compare this with the case of the declarative or "what is" version. It simply told us how to recognize a square root if we saw one, but nothing about how to find one.

We are primarily interested in "how to" knowledge - we want to be able to give the computer instructions to compute a value, and this means we need a way of capturing the "how to" knowledge. In particular, we want to describe a series of specific, mechanical steps to be followed in order to deduce a particular value associated with some problem, using a predefined set of operations. This "recipe" for describing "how to" knowledge we call a *procedure*.

When we want to get the computer to actually compute a value, that is, use the "how to" knowledge to find the value associated with a particular instantiation of the problem, we will *evaluate* an expression that applies that procedure to some values.

The actual sequence of steps within the computer that cause the "how to" knowledge to evolve is called a *process*. Much of our focus during the term will be in understanding how to control different kinds of processes by describing them with procedures.

Now we want to create tools that make it easy for us to capture procedures and describe processes, and for that we will need a *language*.

Whatever language we choose to use to describe computational processes, it must have several components.

Language for describing processes (how-to knowledge) must have:
- vocabulary
- *syntax*: rules for writing compound expressions
- *semantics*: rules for assigning meaning to constructs
- *procedures*: rules for capturing the process of evaluation


* First, it will have a *vocabulary* - a set of words on which we build our description. These will be the `basic elements of computation`, the `fundamental representations of information` and the `fundamental procedures` that we use to describe all other procedures.

* Second, it will have a *set of rules for legally connecting elements together* - that is, `how to build more complex parts of a procedure out of more basic ones`. This will be very similar to the **syntax** of a natural language.

* Third, it will have a *set of rules for deducing the meaning associated with elements of the description*. This will be very similar to the **semantics** of a natural language.

* Finally, we need standard ways of *combining expressions* in our language together into a `sequence of steps that actually describe the process of computation`.

We will see is that our language for describing procedures will have many of the same features as natural languages, and that we will build methods for constructing more complex procedures out of simpler pieces in a natural way.

Our real goal is to use this language of procedures and processes to help us control complexity in large systems - that is, to use the language and its elements to design particular procedures aimed at solving a specific problem.

In order to capture imperative knowledge, we are going to create languages that describe such processes. This means we will need to specify a set of primitive elements -- simple data and simple procedures, out of which we will capture complex procedures. We also need a set of rules for combining primitive things into more complex structures. And once we have those complex structures, we will want to be able to abstract them -- give them name so that we can treat them as primitives.

Using procedures to control compexity:
- set of primitive language elements (simple data and simple procedures)
- set of rules for combining the language elements
- set of rules for abstracting language elements (treat compounds as primitives)

This cycle of creating complex processes, then suppressing the details by abstracting them into black box units, is a powerful tool for designing, maintaining and extending computational systems.



(..)

As we build up our language, looking at the syntax and semantics of expressions in that language, we will also see that these expressions very nicely break up into three different components. 1) We have *primitives* - our most basic `atomic units`, on top of which everything else is constructed. 2) We have ways of gluing things together - our means of *combination* - how to `combine` smaller pieces to get bigger constructs. 3) And finally we have a means of *abstraction* - treating `bigger pieces as primitives` so that they can be combined into bigger constructs, while `suppressing the internal details of the pieces`.

### Primitives

Primitives are the basic elements. These are the simplest elements on top of which we will build all our other computational constructs.

The simplest of these are the **self-evaluating expressions** i.e. things whose value is the object or expression itself. These include numbers, strings and Booleans.Numbers are obvious, but include integers, real numbers, and scientific notation numbers. Strings are sequences of characters, including numbers and special characters, all delimited by double quotes. These represent symbolic, as opposed to numeric, data. Booleans represent the logical values of true and false. These represent logical, as opposed to symbolic or numeric, data.

Of course we want more than just primitive objects, we need ways of manipulating those objects. For example, for numbers we have a set of **built-in, or predefined, procedures**. Thus, the symbol + is a name for the primitive procedure or operation of addition, and similarly for other arithmetic operations, including comparison operations. Strings have an associated set of operations, for comparing strings or extracting parts of strings. And Booleans have an associated set of logical operations. Think of these as abstractions: they are machinery that performs the operations described by a set of known rules.

The built-in procedures have a name and these names are themselves expressions. In the case of +, the value or meaning associated with this built-in symbol is the actual procedure, the internal mechanism for performing addition. In fact our rule for evaluating the expression, +, is to treat it as a symbol, and look up the value associated with it in a big table somewhere.

Given numbers and procedures, we want to use them together and this leads to means of *combination* - the way of constructing larger expressions out of simpler ones.

In Scheme, the standard *means of combination* consists of an expression that will *apply a procedure* to a *set of arguments* in order to *create a new value*, and it has a very particular form: `(p arg1 arg2 ...)`

So there is the syntax for a combination - an open parenthesis, an expression whose value is a procedure, some other set of values, and a close parenthesis.

The semantics of a combination: to **evaluate a combination**, we evaluate all the sub-expressions, in any order, using the rules we are developing. We then apply the value of the first expression to the values of the other expressions. What does apply mean? For simple built-in procedures, it just means take the underlying hardware implementation and do the appropriate thing to the values, e.g. add them, multiply them, etc.

This idea of *combinations can be nested* arbitrarily. We can use a combination whose parts are themselves combinations, so long as the resulting value can legally be used in that spot. To evaluate combinations of arbitrary depth, we just *recursively apply these rules*, first getting the values of the sub-expressions, then applying the procedure to the arguments, and further reducing the expression.


## Abstractions - Name Binding

So far we have basic primitives (numbers and simple built-in procedures), and we have means of combination - ways of combining all those pieces together to get more complicated expressions. But at this stage all we can do is write out long arithmetic expressions; we have no way of abstracting expressions. We would like to be able to give some expression a name, so that we could just refer to that name (as an abstraction) and not have to write out the complete expression each time we want to use it.


Defining a new name is an expression that is a **special form**, meaning it does not follow the normal rules of evaluation for a combination.

```scheme
(define score 23)
```

A definition expression associates a value with a name, and to do that it uses a different rule to evaluate this special form:
- the first expression is the keyword `define` which marks this special form
- we don't evaluate the second expr, it is a name (identifier)
- we evaluate the third subexpression into a value, then take the name and pair it with the deduced value
- we place this pairing in a special structure called an *environment*.
- Because our goal is to associate a name with a value, we don't actually care about the returned value by the oveall `define` expression; most Scheme implementations use a particular, "undefined", value as return value, possibly also showing some information about what binding was just created.

For example, `(define score 23)` will associate the value `23` to the name `score`. From then on, to retrieve this value we just evaluate `score`, which will make Scheme do a lookup in the environment to find this pairing.

This is exactly the same as with the built-in primitives. If we give the name `+` to Scheme, it looks up the association of that symbol, which in this case is the built in addition procedure, and that procedure is actually returned as the value.

In this way, we can bury complexity behind the names, and create new primitive elements in our language.

Rules of evaluation in Scheme:
- *self-evaluating* (value, literal): returned value is the expression itself
- *name*: look up its associated value in the env, then return it
- *special form*: perform a special kind of evaluation
- *combination*: eval subexpr in any order, then apply the operator (first expr) to the args (other expr) and return the result
- *compound* expr: recursively eval it
