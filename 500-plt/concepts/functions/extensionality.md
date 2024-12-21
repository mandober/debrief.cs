# TPL :: Topics :: Functions :: Extensionality

https://en.wikipedia.org/wiki/Extensionality

## Extensionality in logic

In logic, **extensionality**, or **extensional equality**, refers to the principle that judges two objects as equal if they have the *same external properties*.

Extensionality is contrasted by **intensionality**, or **intensional equality**, which refers to the principle that judges two objects as equal if they have the *same internal definition*.

## Extensionality in set theory

*Axiom of Extensionality* states that two sets are equal if they have the same elements.

In mathematics formalized in set theory, it is common to identify *relations* and *functions* with their extension as stated above, so that it is impossible for two relations or functions with the same extension to be distinguished.

Other mathematical objects are also constructed in such a way that the intuitive notion of "equality" agrees with set-level extensional equality; thus, equal *ordered pairs* have equal elements, and elements of a set which are related by an equivalence relation belong to the same equivalence class.

## Extensionality wrt functions

In set theory, relations and functions are also sets, so they are also compared for equality like sets are.

The principle of extensionality pertaining to functions states that two *functions are equal iff they agree on all inputs*.

The extensional equality of functions is generally impossible to verify, so it is not something that can be implemented in a PL.

*The intensional definition of equality pertaining to functions* does not help either: it states that two functions are equal if they have the same definition.

This, primarily, requires the reflective capabilities of a language so it would allow inspecting any function's definition. (Curiosly, JS has `toString` method on functions that does return the user-defined functions as authored. However, since the same method does not return anything sensible for builtin functions, comparing the two functions by their definition is impossible). Besides privacy (breaking of encapsulation) and other concerns, statically typed languges are not capable of presenting function definitions for user inspection. Finally, even if the language would allow us to inspect the definitions of arbitrary functions, determining whether two definitions are the same can still be a daunting task.

The extensional definition of function equality is commonly used in math with set theory at its foundation, but there are usually additional issues to consider besides set equality, i.e. functions-as-sets equality. Namely, even if it is given that two functions are extensionality equal, they must also agree in their domin and codomain. So, two functions must not only agree on all values, but must also have the same codomain, in order to be equal (the usual definition of function in math means that equal functions must have equal domain).

## Extensionality in type theory

Type-theoretical foundations of mathematics are generally not extensional in this sense, and *setoids* are commonly used to maintain a difference between intensional equality and a more general *equivalence relation* (which generally has poor constructibility or decidability properties).

## Extensionality in lambda calculus

The *intensional interpretation of equality* is that the reduction of a lambda term to normal form is the value of the lambda term. This interpretation considers the identity of a lambda expression to be its structure. Two lambda terms are equal if they are alpha convertible.

The *extensional definition of function equality* is that two functions are equal if they perform the same mapping: `f = g ⟺ ∀x. fx = gx`.


>A nice way to describe these two different notions of equality is that *extensional equality describes equality of functions*, where as *intensional equality describes equality of function implementations*.

The extensional definition of equality is not equivalent to the intensional definition. This inequivalence is created by considering lambda terms as values. In typed lambda calculus this problem is circumvented, because built-in types may be added to carry values that are in a canonical form and have both extensional and intensional equality.

There are many examples of lambda terms not being equal according to the intensional definition of equality, yet being equal according to the extensional definition. This is a significant problem, as it means that the intensional value of a lambda-term may change under extensionally valid transformations. A solution to this problem is to introduce an omega-rule.

**ω-rule**: if, for all lambda-expressions `t` 
we have `f t =β= g t`, then `f =β= g`.

The omega-rule implies the eta-rule, since `f t` =β= `(λx.f x)t` by a beta-reduction on the right side.



**η-reduction** expresses the idea of *extensionality*,[^25] which in the context of functions says that two functions are the same iff they give the same result for all arguments.

η-reduction converts between `λx.fx` and `f` (if `x` isn't free in `f`).

>λx.fx ≡ f

η-reduction can be viewed as being the same as the concept of *local completeness* in natural deduction, via the Curry-Howard isomorphism.

## What's the motivation for η rules?

[^25]: https://mail.haskell.org/pipermail/haskell-cafe/2010-December/087783.html

**Eta conversion** corresponds to extensionality, i.e. there is nothing more to a function than what it does to its argument.

Suppose `fx = gx` for all `x`.   
Then using eta conversion   
`f = λx.fx = λx.gx = g`

Without η-conversion this would be impossible to prove.

It would be possible for two functions to be distinct (well, not provably so) even if they do the same thing to every argument - for example if they had different performance characteristics. Eta is "controversial" rule of lambda calculus and some languages omit it (e.g. Coq does not use it). It may make things more difficult for the compiler.

## Motivation for η rules by Conor McBride

The motivation for various conversion rules depends quite a lot on one's circumstances. If the primary concern is run-time computation, then beta-rules (elimination construct consumes constructor) and definitional expansion, sometimes called δ-rules (if you have definition), should do all the work you need. (I'm just wondering how to describe such a need. How about this property reminiscent of some results by Herman Geuvers).

Let `=` be the conversion relation, with whatever rules you've chucked in, and let `-->` be *beta-delta reduction*, with` -->*` its reflexive-transitive closure. Suppose a closed term inhabiting a data type is convertible with a constructor form

   t = C s₁ .. sₙ

then we should hope that

   t -->* C r₁ .. rₙ   with  rᵢ = sᵢ, for i in 1..n


That is: you should not need to do anything clever (computing backwards, η-conversion) to get the head-normal form from a term which is kind enough to have one. If this property holds, then the compiler need only deliver the beta-delta behaviour of your code. Hurrah!

So why would we ever want eta-rules? Adding eta to an *evaluator* is tedious, expensive, and usually not needed in order to deliver values. However, we might want to reason about programs, perhaps for purposes of optimization. Dependent type theories have programs in types, and so require some notion of when it is safe to consider open terms equal in order to say when types match: it's interesting to see how far one can chuck eta into equality without losing decidability of conversion, messing up the "Geuvers property", aka breaking *type-preservation*.

It's a minefield, so tread carefully. There are all sorts of bad interactions:
- *subtyping*:
  if `->` subtyping is too weak, `\x -> f x` can have more types than `f`
- *strictness*: 
  if `p = (fst p, snd p)` then `(case p of (x, y) -> True) = True`, 
  which breaks the Geuvers property on open terms),
- *reduction*:
   there is no good way to orientate the *unit type eta-rule*,
  `u = ()`, in a system of untyped reduction rules.


But the news is not all bad. It is possible to add some eta-rules without breaking the Geuvers property (for functions it's ok; for pairs and unit it's ok if you make their patterns irrefutable).

You can then decide the beta-eta theory by postprocessing beta-normal forms with type-directed eta-expansion (or some equivalent type-directed trick).

Epigram 2 has *η-rule for functions, pairs, and logical propositions* (seen as types with proofs as their indistinguishable inhabitants). I've spent a lot of time banging my head off these issues: my head has a lot of dents, but so have the issues.

So, indeed, eta-rules make conversion more extensional, which is unimportant for closed computation, but useful for reasoning and for comparing open terms.

It's a fascinating, maddening game trying to add extensionality to conversion while keeping it decidable and ensuring that open computation is not too strict to deliver values.


### η-rules motivation by Stefan
Another way to look at it is that β-rule is the application of an eliminator (e.g. function application) to its corresponding constructor (the lambda expression), whereas *η-rules correspond to the application of a constructor to its corresponding eliminator*. For example,

  λ y . (x y)                =>  x
  if x then True else False  =>  x
  (π₁ x, π₂ x)               =>  x

IOW there's no need for a motivation: those rules just appear naturally.

- `λx.fx ≡ f`                      η-conversion for abs
- `p ≡ ⟨π₁ p, π₂ p⟩`               η-conversion for pairs
- `if x then True else False ≡ x`  η-conversion for booleans (x is a Bool)


---



## Refs

https://mail.haskell.org/pipermail/haskell-cafe/2010-December/087850.html

https://en.wikipedia.org/wiki/Deductive_lambda_calculus
https://en.wikipedia.org/wiki/Lambda_lifting
https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/%CE%A9-consistent_theory
https://en.wikipedia.org/wiki/Let_expression
