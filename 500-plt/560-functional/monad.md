# Monad

In PLs
- handling exceptions, nulls, success and failure
- alternative to deeply nested code (pyramid of doom)
- separation of concerns
- code reuse


*Separation of concerns* is the programming principle encouraging programing where language's organizational units (class, struct, function, etc.) are responsible only for a single particular thing; just doing their own thing well,uninterested in and unaffected by the code outside.

*Honesty* is the attribute of truth-loving, straight-shooting language units, usually functions; an honest function is truthful about the things it needs to do its work. It declares what it requires (using its parameters as the manifest) and stick to it, never touching the code it didn't explicitly mentioned as needed. You can rely on an honest function because you know it ain't gonna instantiate some class out of the blue. You can reuse such a function and it will adapt quickly.

*Purity* is a functional step further: a pure function is an honest function without side-effects. Basically, these are functions as they are in math. In mathematics, a function is a relation between two sets; it takes elements of one set (called domain) as its input and maps them to elements of another (or possibly the same) set (called codomain). Pure functions always return the same output for a particular input; if you input 3 and get back 9, you will always get back 9 when the input is 3; this property enables *memoization* (caching of results) and referential transparency.

*Referential transparency* is a property of identifiers (variables) in functional languages, where mutation is forbidden, so a bound variable is certain to have the same exact value during its existence. As opposed to reasoning about a variable in dynamic languages, where it can value-, type- or shape-shift anytime and all the time; referencing/reasoning about an identifier in a dynamic language is far from transparent and much closer to surprisingly opaque.

*Global state* is the state of a system, comprised of global variables, the input, the output, and anything else that's not local to a language unit (function). In most languages (particularly imperative), the state depends on time - you can't reason about the state but only about the state at some particular point in time. The problems with the global state arise because no language entity owns it, but all language entities can access it, or worse yet, mutate it. It is particularly troublesome when different language entities start reading and writing the same global value, treading heavily on each other's calculations.




## Tirade

In functional programming, a monad is a *design pattern* that allows for *generic structuring* of programs while automating away boilerplate code needed by the program logic.

Monads achieve this by providing:
* their own type
* two functions:
  - `return` (`value`, `unit`)
  - `bind`

The former is used to wrap immediate values (of any basic type) within the monad, yielding a *monadic value*.

The latter is used to compose *monadic functions* i.e. functions that output *monadic values*.


The type of a monad represents a particular form of computation, an action such as "perform output". The type of a monad, `m`, is an action, `a`, `m : a`

For a monad `m`, a type `m a` represents having access to a value of type `a`, within the context of the monad `m`.


Research beginning in the 80's established that monads could bring seemingly disparate programming problems under a unified functional model.

Monads can address the problems like:
- handling potentially undefined values (Maybe/Option monad)
- keeping values within a well-formed list (List monad)

With a monad, a programmer can turn a complicated sequence of functions into a succinct pipeline that abstracts away auxiliary data management, control flow, and side-effects.

Both the concept of a monad and the term originally come from category theory: *monad is a functor with additional structure*. Category theory imposes requirements, called *the monad laws*, which a type running for a monad must be in compliance with.


---


and first explain what a category, a morphism, a functor/endofunctor and a natural transformation and a monoid are.


Monad functional structure, originated in the category theory, was introduced into functional programming languages in the 1990s, becoming more prominent with the popularity of the pure functional languages, such as Haskell.


## The State
The state of a system is composed of global variables, IO and anything that's not local to a particular function. This state is time-dependent; if various parts of program are able to change the state, then the configuration of the state varies with time.

The problem with state mutation is especially evident in concurrent programming, e.g. where two functions access and change the same global value. One function reads the global value and starts some processing involving that value. In the meantime, another function updates that global value. At that moment the first function is already dealing with a stale value, but so far the corruption is contained within it. It is when that function writes back the result, which it obtained based on old data, that the corruption infects the global state. Having mutable state gives rise to an entire domain of problems, from iterator invalidation to data races.

Managing the global state is problematic because it doesn't have a manager or owner; no language entity owns the state, but all language entities have access to it.

Modern programming languages, such as Rust, have introduced the concept of ownership, such that every value is owned by exactly one variable. A variable that owns a value/resource can borrow it to other parts of the program, even multiple times, as long as it is borrowed for reading only. In order to mutably borrow its value, there cannot be any outstanding read-only borrows and it can only do exclusive mutable borrows. Generally, a value can have either multiple readers or an exclusive writer.

Pure functional languages deal with the problem of state mutation by disallowing it completely. All identifiers in a pure FP language have the quality of *referential transparency*, which means once an identifier is bound to an expression, it cannot be rebound, therefore, it has the exact same value throughout the program. Referencing that identifier is always transparent.



Types have their own set of fundamental functions associated with themselves; e.g. integer types have the set of arithmetic (and other math) functions. The fundamental function associated with a string type is concatenation. A boolean type has the set of logic functions.

To qualify as a monad, a type must have a function, of particular form, which uses the monad's *pertinent value*.

To qualify as a monad, a type must have a `bind` function.



---

https://www.infoq.com/articles/Understanding-Monads-guide-for-perplexed
http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html

https://en.wikipedia.org/wiki/Monad_(functional_programming)
