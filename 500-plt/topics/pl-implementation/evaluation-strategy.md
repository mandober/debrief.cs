# PLT :: Evaluation strategy

https://en.wikipedia.org/wiki/Evaluation_strategy

In a programming language, an **evaluation strategy** is a set of rules for evaluating expressions.

The term is often used to refer to the more specific notion of a *parameter-passing strategy* (call-by-name, etc.) that defines the kind of value that is passed to the function for each parameter (the *binding strategy*), and whether to evaluate the parameters of a function call, and if so in what order (the *evaluation order*), e.g. normal and applicative orders.

The notion of *reduction strategy* is distinct, although some authors conflate the two terms and the definition of each term is not widely agreed upon.

For example, in the *call-by-reference evaluation strategy*, executing a function call `f(a,b)` will first evaluate the arguments `a` and `b`, store the results in references or memory locations `ref_a` and `ref_b`, then evaluate the function's body with those references passed in. This gives the function the ability to look up the argument values, to modify them via assignment as if they were local variables, and to return values via the references.

Evaluation strategy is specified by a *PL specification*, and is not a function of any specific implementation ofthat language.

The *calling convention* defines implementation-specific parameter passing details.

Evaluation strategies:
- Eager evaluation
- Lazy evaluation
- Partial evaluation
- Remote evaluation
- Short-circuit evaluation

Contents
- 1. Table
- 2. Evaluation orders
  - 2.1 Strict evaluation
  - 2.2 Non-strict evaluation
  - 2.3 Comparison of applicative order and normal order evaluation
- 3. Strict binding strategies
  - 3.1 Call by value
    - 3.1.1 Implicit limitations
  - 3.2 Call by reference
  - 3.3 Call by sharing
  - 3.4 Call by copy-restore
- 4. Non-strict binding strategies
  - 4.1 Call by name
  - 4.2 Call by need
  - 4.3 Call by macro expansion
  - 4.4 Call by future
  - 4.5 Optimistic evaluation
- 5. See also
  - Call-by-push-value
  - Partial evaluation
  - Beta normal form
  - Lambda calculus
  - eval
