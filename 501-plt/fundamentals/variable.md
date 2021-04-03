# Variable

https://en.wikipedia.org/wiki/Variable_(computer_science)
https://en.wikipedia.org/wiki/Variable_(mathematics)
https://en.wikipedia.org/wiki/Category:Variable_(computer_science)

> In math, a variable is a symbol used as a placeholder for an expression.

Variables are usually denoted using a single lowercase letter. The most unoriginal still incredibly famous name for a variable is `𝓍`, followed by the three-way tie of `𝔂`, `𝓷` and `𝔃` for the second place. Nevertheless, the  only question thatbears any merit remains unresolved: which letter (of the latin alphabet) is used the least as variable name? (in math, there is no significant distinction between variable and varable name, some might say). Set my eduguess to `o`?


The mentioned expression a variable stands in for is most often a number, in which case we can say that a variable ranges over some number set. If we let `𝓍` range over the set of the natural numbers, we can denote this situation by writing `𝓍 ∈ ℕ`.


A variable always ranges over some defined set of values, called *range*; it represents all values in that set by standing in for any value.

Curiously, if a variable has a range, we may be inclined to think there's a domain lurking nearby and label variables a strange kind of function. Bingo-u, yes, we'd be on the right side of intuition, fo sho.

Using Haskell-style of type annotation, its type is `𝓍 :: () -> ℕ`.

Interestingly, since Haskell uses juxtaposition as function application, also trading parenthesized arguments for space-separated ones, we'd invoke this function simply by stating `𝓍`, feeling relieved we didn't have to explain further.

It's a strange kind of function because it is invoked by stating its name sans the empty parenthesis. So, like 𝓍 and not like 𝓍().



consider the whole thing a function that maps elements from a domain to a range (range ⊆ codomain) set.




The intention to substitute a variable by a concrete value from the range set is called *instantiation*; in such circumstances, a variable is said to be *instantiated* with a particular concrete value.

For example, if athe variable 𝓍 ranges over the set of the natural numbers, as in 𝓍 ∈ ℕ, its use in the function definition, ⨍(𝓍), means that the domain of the function is ℕ.


When a variable is used to stand in for numbers, it must be stated which number set the variable ranges over. In that sense, it could be concluded that variables also have a type; a variable, 𝓍, ranging over ℕ, i.e. 𝓍 ∈ ℕ, cannot be used (or re-used) to stand in for a value of ℝ, i.e. 𝓍 ∉ ℝ.


A qualified variable also ranges over a set: a universally qualified variable, such as ∀𝓍 ∈ ℕ.P(𝓍), means that no matter which value in ℕ is 𝓍 instantiated with, the predicate, P(𝓍), would still hold.


Making algebraic computations with variables as if they were explicit numbers allows one to solve a range of problems in a single computation. A typical example is the quadratic formula, which allows one to solve every quadratic equation-by simply substituting the numeric values of the coefficients of the given equation for the variables that represent them.

In mathematical logic, a variable is either a symbol representing an unspecified term of the theory (i.e., meta-variable), or a basic object of the theory-which is manipulated without referring to its possible intuitive interpretation.



Variable
Automatic variable
Class variable
CVAR
External variable
Global variable
Initialization
Instance variable
Local variable
Member variable
Metasyntactic variable
Non-local variable
Parameter
Register (keyword)
Relvar
Sigil
Singleton variable
Static variable
String interpolation
Temporary variable
Thread-local storage
Undefined variable
Uninitialized variable
Unreferenced variable
Variable lifetime
Variable shadowing
Volatile

# Free variables

https://wiki.haskell.org/Free_variable
https://wiki.haskell.org/Lambda_abstraction
