# Lambda Calculus: debrief

* Lambda calculus, LC, λ-calculus, λάμβδα λογισμός, λ, $$\lambda$$
* **Abstraction**
  - `λM.N`, 
  - e.g. `λa.λb.ab`, `λg`
  - analogous to defining a function
  - with function parameters and function body expr to be returned
  - This defines a function which takes an argument x and returns a term M.
  - Functions in lambda calculus have no name.
* **Application**: `MN`
  - denoted by juxtaposition
  - LEFT-associative, `abcd` is `((ab)c)d`
  - analogous to a function call
  - This binds the argument N to the term M
- A term is a defined function.
- A term may contain variables.
- A variable may represent any term.
- A term may contain free variables and bound variables
- *Bound variable* is param to be bound to an arg; x is bound in λx.xy
  - analogous to a formal parameter of a function
- *Free variable* is unbound (outside) variable; y is free in λx.xy

Lambda expressions
- **Variables**
- **Application**: $$mn$$ means apply expr m to expr n, $$m(n)$$
- **Abstractions**: $$\lambda x.e$$, represent the anonymous function which evaluates to (returns) the value $$e$$ when given formal parameter $$x$$.
