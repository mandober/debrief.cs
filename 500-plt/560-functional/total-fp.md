# Total functional programming

paper by David A. Turner (creator of Miranda)
http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.109.1950&rep=rep1&type=pdf

The driving idea of FP is to make programming more closely related to math. A program in a FPL like Haskell consists of equations which are both computation rules and a basis for simple algebraic reasoning about the functions and data structures they define. The existing model of FP, although elegant and powerful, is compromised to a greater extent than is commonly recognised by the presence of *partial functions*. We consider a simple discipline of *total functional programming* designed to exclude the possibility of non-termination. Among other things this requires a type distinction between *data*, which is finite, and *codata*, which is potentially infinite.

## 1. Introduction

In a typical modern algebra text the concept of function is defined as:

>A function `f` with domain `A` and codomain `B` assigns to each element of `x` of `A` a unique element `f x` of `B`.

Note that the function isn't given unless we are told its domain and codomain. Domain and codomain of functions are either explicitly specified in inferable from the code and functions are defined by a set of equations, and they typically involve case analysis of the args by pattern-matching.

Thus we might define `fib`, a function to compute the nth member of the Fibonacci series as follows (assuming Peano `Nat` numbers):

```hs
fib :: Nat -> Nat
fib 0         = 0
fib 1         = 1
fib (n + 2) = fib (n + 1) + fib (n + 2)
```

The three equations uniquely define the assignment of values, `fib x` for each `x`. From these equations we can prove various theorems about fibonacci numbers, by using algebraic reasoning and induction.

Among the theorems we can deduce are the values of `fib x` for specific `x`. For example, `fib 20 = 6765`, by using the equations from left to right, as reduction rules.

>The above functional program is thus both a mathematical definition of `fib` and at the same time an algorithm for computing it.

One of the enduring myths about FPLs is that they are somehow non-algorithmic. On the contrary, the idea of FP is to present algorithms in a more transparent form, uncluttered by housekeeping details.

Unless we optimize it with e.g. memoization, the above is not an efficient algorithm as it takes time exponential in `n` to compute `fib n`. A more efficient function is a tail-recursive one:

```hs
fib2 :: Nat -> Nat
fib2 n = fibaux n 0 1

fibaux :: Nat -> Nat -> Nat -> Nat
fibaux 0       a b = a
fibaux (n + 1) a b = fibaux n b (a + b)
```

We would like to confirm that   
  `∀ n : Nat . fib2 n = fib n`    
  The key to this is to prove that for arbitrary `p`,   
Theorem   
  `∀ n : Nat . fibaux n (fib p) (fib (p + 1)) = fib (p + n)`    
Proof   
  by induction on `n`.   
  Straightforward using the program equations    
  for `fibaux` and `fib` and an induction step.    


The seemingly close fit between the code and mathematical reasoning accounts for a large part of the appeal of FP. But there is a serpent lurking in the garden (in fact a whole nest of them). Consider the following, perfectly legal, well-typed, program.

```hs
loop :: Int -> Int
loop n = 1 + loop n
```

From this we have `loop 0 = 1 + loop 0`. Subtracting `loop 0` from both sides and using `x − x = 0` and associativity we get `0 = 1` from which we can infer anything. What went wrong? Despite being of type `Int` (as the signature says), the value of `loop 0` is in fact `⊥` (undefined integer). Because we allow unrestricted recursion, we are programming with partial functions and not functions in the standard mathematical sense.

The thesis of this paper is that functional programming is a good idea, but we haven't got it quite right yet. What we have been doing is Partial Functional Programming. What we should be doing is Total Functional Programming.

## 2. Total functional programming

In the semantics of partial functional programming each type `T` contains an extra element `⊥` to denote errors and non-terminations. In total functional programming `⊥` does not exist. The data types are those of ordinary discrete mathematics. This has 3 main advantages:
- simpler proof theory
- simpler language design
- flexibility of implementation

### Simpler proof theory

One of the things we say about FP is that it is easy to prove things because there are no side effects. But in Haskell the rules are not those of standard mathematics. For example, if `e` is of type `Nat`, we cannot assume `e - e = 0` because `e` might have for its value `⊥`. Similarly we cannot rely on usual principle of induction for Nats, without taking precautions to deal with the case `n = ⊥`.

```js
P(0)    ∀ n . P(n) ⇒ P(S n)
----------------------------- Nat-Ind
        ∀ n . P(n)
```

These problems arise, in different ways, in both strict and lazy languages. In Total FP these problems go away because there is no `⊥` to worry about.

### Simpler language design

In Partial FP, a fundamental language design choice is forced on us early:

>Should functional application be strict in the argument?

That is, is it a rule of the language that `∀ f . f ⊥ = ⊥`. 
SML says yes to this, as does Scheme, while Miranda and Haskell embrace nonstrictness and thus lazy evaluation as the norm, leading to a far-reaching differences in programming style.

There are more decisions to make due to `⊥`:

>Should the product space `A × B` be lifted or non-lifted?

In Haskell, the product is lifted, while in Miranda it is not. This affects the behaviour of pattern-matching.

In Miranda this pattern match is irrefutable, `f (x, y) = …`; that is, the match cannot fail, because at type `A × B` we have `(⊥, ⊥) = ⊥` (the first ⊥ is of A, the second of B, the third of A × B).

In Haskell, the product type has an extra `⊥` below `(⊥, ⊥)`, and therefore, for it, the pattern `(x, y)` doesn't match `⊥` (unless we mark it with a lazy-pattern-match annotation, `~`).

```hs
spm :: (a, b) -> Int
spm (x, y) = 5

spm (1, 2)                  -- 5
spm (1, undefined)          -- 5
spm (undefined, undefined)  -- 5
spm undefined               -- exception!

lpm :: (a, b) -> Int
lpm ~(x, y) = 5

lpm (1, 2)                  -- 5
lpm (1, undefined)          -- 5
lpm (undefined, undefined)  -- 5
lpm undefined               -- 5
```

These seemingly trivial decisions can interact in unexpected ways and cause innocent looking programs which work in one system to fail in another (even moving between two languages which are both lazy).


>Should the conjunction operator consider all cases?

Take for example the `&&` operation on Bool, defined by

```hs
(&&) :: Bool -> Bool -> Bool
True  && True  = True
True  && False = False
False && True  = False
False && False = False

-- but what about these cases
⊥     && q     = …?
p     && ⊥     = …?
```

Considering the possible values for these (which are constrained by monotonicity) gives us a total of 4 different possible versions of (&&):
1. doubly strict `&&`
2. left-strict `&&`
3. right-strict `&&`
4. doubly non-strict (parallel) `&&`

Most PLs opt for (2), the left to right version, but this is somewhat arbitrary and breaks the symmetry which AND has in logic. In TFP these semantic choices go away. There is only one possible definition of the product type `A × B`; only one `&&` operation exists, defined by its actions on `True` and `False` alone. We no longer have a split between strict and non-strict languages.

>In TFP, every exp of a well-typed program has a proper value, and the choice between normal and applicative order evaluation cannot affect the result.


### Flexibility of implementation

In TFP, reduction is *strongly Church-Rosser*. Note the distinction between:

1. *Church-Rosser property*: 
  If a redex can be reduced in two different ways, and 
  they both produce normal forms, these NFs will be the same.

With the Church-Rosser property, normal forms are unique, but they need not exist; and when they do exist, not every reduction sequence will reach 'em.

More precisely, the Church-Rosser property 
(aka the Diamond property) 
of a reduction relation `->>` states 
that if   `A ->> M  ⋀  A ->> W` 
then there exists `B` 
such that `M ->> B  ⋀  W ->> B`

```
    A
   / \                A ----------> M
  /   \               │             │
 /     \              │             │
M       W             │             │
 \     /              |             |
  \   /               ↓             ↓
   \ /                W ----------> B
    B
```


2. *Strong Church-Rosser property*: 
  Every reduction sequence leads to a **unique** normal form.

With strong Church-Rosser property, normal forms are unique, plus we have strong normalization: normal forms always exist, and redexes may be evaluated in any order.

⚜

The choice of evaluation order becomes a matter for the implementor - it cannot affect the semantics of the language. This gives much greater freedom to implementors to choose the efficient strategy, perhaps, to improve space complexity or to achive better parallelization. 

An alternative name for TFP, inspired by the Strong Church-Rosser property, is *Strong Functional Programming*, by contrast with the conventional Weak FP.


### Disadvantages

There are two obvious disadvantages of Total Functional Programming
1. The language is no longer Turing complete!
2. If all programs terminate, how do we write, e.g. an operating system?

We will return to the first point later, but the resolution of the second point is *codata*! We'll need codata, as well as data (but unlike in weak FP, the two will be kept separate: we'll have *finite data* and *infinite codata*, but no partial data - tertium non datur).

There already exists a powerful theory of Total Functional Programming which has been extensively studied: the **constructive type theory of Per Martin Lof** (of which there are several different versions). It includes
- dependent types, i.e. types indexed over values (types can depend on values)
- second-order types
- propositions-as-types, an isomorphism between types and propositions, that enables programs to express proof information

The MLTT was developed as a foundational language for constructive mathematics. And it is possible to program in it, see:   
[Nordst90]: "Programming in Martin-Lof's Type Theory: An Introduction", B. Nordstrom, K. Petersson, J. M. Smith, 1990

I am interested in finding something simpler...

## Elementary Total Functional Programming

- Elementary Total Functional Programming (ETFP)
- Elementary Structural Functional Programming (ESFP)

Elementary discipline of total functional programming is much more modest than constructive type theory. Elementary here means
1. Type structure no more complicated than Hindley-Milner, or one of its simpler variants. So we have types like `Nat → Nat`, and polymorphic types like `∀α. α → α`, but nothing beyond that.
2. Programs and proofs will be kept separate, as in conventional programming. What we are looking for is essentially a strongly terminating subset of Miranda or Haskell (or for that matter SML, since the difference between strict and lazy goes away in a strong functional language).

Rules for elementary TFP
- we must be able to define data types
- some types (Nat and List) - will be built in with convenience syntax
- functions are defined by equations using pattern matching over data types
- guard syntax: `if` and `otherwise`, we assume the presence of type `Bool`

There are 3 essential restrictions to maintain **totality**:
1. All case analysis must be complete (case exhaustion)

Where a function is defined by pattern matching, every constructor of the argument type must be covered and in a set of guarded alternatives, the terminating `otherwise` case must be present.

In the same spirit, *any built in function must be total*. This may involves some non-standard decisions.

2. Type recursion must be covariant.

That is, type recursion through the lhs of `→` is not permitted. For example,

```hs
data Silly = Very (Silly -> X) -- not allowed
```

Here `X` is an arbitrary type. *Contravariant* types like `Silly` allow `⊥` to sneak back in, and are therefore banned. We show how the damage arises:

```hs
bad :: Silly -> X
bad (Very f) = f (Very f)

foo :: X
foo = bad (Very bad)
```

We have obtained a value, `foo`, of type `X`, with no normal form - using the equation for `bad` to rewrite `foo` gets back the same term. The construction will work for any `X`, for example `Nat`. So we have an expression of type `Nat` which does not reduce to a numeral, the same as `loop 0` from before.

The restrictions on recursion which we introduce next (rule 3) will not prevent this, since the definitions of `bad` and `foo` above are not recursive. A modification of the above scheme gives a *fixpoint operator*, equivalent to having general recursion.

Finally, it should be clear that we also need some restriction on recursive function definitions. Allowing unrestricted general recursion would bring back `⊥`. To avoid non-termination, we must restrict ourselves to *well-founded recursion*. How should we do this? If we were to allow arbitrary well-founded recursion, we would have to submit a **proof that each recursive call descends on some well-founded ordering**, which the compiler would have to check. We might also have to supply a proof that the ordering in question really is well-founded, if it is not a standard one.

This contradicts our requirement for an elementary language, in which programs and proofs can be kept separate. We need a purely syntactic criterion, by which the compiler can enforce well-foundedness.

3. Each recursive function call must be on a syntactic subcomponent of its formal parameter.

This form of recursion, often called *structural recursion*, sits naturally with function definition by pattern matching.

In the case of a function of multiple arguments we also permit "nested" structural recursion as in Ackermann's function

```hs
ack :: Nat -> Nat -> Nat
ack 0       n       = n + 1
ack (m + 1) 0       = ack m 1
ack (m + 1) (n + 1) = ack m (ack (m + 1) n)
```

the extension to multiple args adds no power, because what it does can be desugared using higher order functions, but is syntactically convenient.

The rule to allow recursion only by syntactic descent on data constructors effectively restricts us to *primitive recursion*, which is guaranteed to terminate.

The stand that primitive recursion is too weak (e.g. that Ackermann function cannot be expressed using primitive recursive) is false; it is actually a first order result, and it doesn't apply to a language with higher-order functions.

NOTE: we are working in a higher-order language, so what we actually have are the *primitive recursive functionals of finite type*, as studied by Godel in his `System T`. These are known to include every recursive function whose totality can be proved in a first order logic (starting from the usual axioms for the elementary data types, e.g. Peano axioms for Nat). So Ackermann is there, and much, much else. Indeed, we have more than system T, because we can define data structures with functional components, giving us infinitarily branching trees. Depending on the exact rules for typechecking polymorphic functions, it is possible to enlarge the set of definable functions to all those which can be proved total in second-order arithmetic. Thus, it seems the restriction to primitive recursion does not deprive us of any functions that we need, but we may have to code things in an unfamiliar way. It is an open question whether it gives us all the algorithms we need - this is a different issue, as it relates to complexity and not just computability.

Summary of programming situation:
* *Expressive power* - we can write any function which can be proved total in the first order theory of the (relevant) data types. (fact, due to Goedel)
* *Efficiency* - it is a readily observed that three quarters or more of the algorithms we ordinarily write are already primitive recursive. Many of the others can be reexpressed as primitive recursive, with same computational complexity, by introducing an intermediate data structure. (My Conjecture: with more practice we will find this is always true)

I believe it would not be at all difficult to learn to program in this discipline, but you do have to make some changes to your programming style. And it is sometimes quite inconvenient - for example Euclid's algorithm for gcd is difficult to express in a natural way).

There is a sledge-hammer approach that can be used to rewrite as primitive recursive any algorithm for which we can compute a prinitive recursive upper bound on its complexity. We add an additional parameter, which is a natural number initialised to the complexity bound, and count down on that argument while recursing. This wins no prizes for elegance, but it is an existence proof.

The problem of writing a *decision procedure to recognise structural recursion in a typed lambda calculus with case-expressions and recursive, sum and product types* is solved in the thesis of Andreas Abel [Abel 1999]. Adapting it to cope with a richer type system and a more equational style of function definition would be non-trivial but probably no harder than things that FPL compilers already do.

## Proofs

Proving things about programs written in this discipline is very straightforward. Equational reasoning, starting from the program equations as axioms about the functions they define.

For each data type we have a **principle of structural induction**, which can be read off from the type definition.

For example, `data Nat = Zero | Suc Nat`, gives us, for any property `P` over a Nat `n`:

```js
P(Zero)
∀n.P(n) ⇒ P(Suc n)
-------------------
∀n.P(n)
```

We have no `⊥` and no domain theory to worry about. We are in standard (set theoretic) mathematics.

## Codata

An operating system can be considered as a function from a stream of requests to a stream of responses. To program things like this functionally we need infinite lists - or something equivalent to infinite lists.

In making everything well-founded and terminating we have seemingly removed the possibility of defining infinite data structures. To get them back we introduce **codata type definitions**:

```hs
codata Colist a = Conil | a <> Colist a
--data   List a =   Nil | a :    List a
```

>Codata definitions are equations over types that produce final algebras, instead of the initial algebras we get for data definitions.

So the type `Colist` contains all the infinite lists (co-lists) as well as finite ones (lists); to get the infinite lists alone we would omit the `Conil` alternative. The infix `<>` is the co-constructor for co-lists.

The rule for *primitive corecursion on codata* is the dual to that for primitive recursion on data. Instead of descending on the argument, we **ascend on the result**:

```hs
f :: something -> Colist Nat
f args = RHS(f args')
```

where the leading operator of the context `RHS(..)` must be a co-constructor, with the corecursive call to `f` as one of its arguments. There is no constraint on the form of `args'`.

Notice that corecursion creates (potentially infinite) codata, whereas ordinary recursion analyses (necessarily finite) data. Ordinary recursion is not legal over codata, because it might not terminate. Conversely, corecursion is not legal if the result type is data, because it is finite.

Now we can define infinite structures, such as

```hs
ones :: Colist Nat
ones = 1 <> ones

fibs :: Colist Nat
fibs = f 0 1
  where
  f a b = a <> f b (a + b)
```

Note that all our *infinite structures are total*.

As in the case of primitive recursion over data, the rule for *coprimitive corecursion over codata* requires us to rewrite some of our algorithms, to adhere to the discipline of total functional programming. This is sometimes quite hard - for example rewriting the well known sieve of Eratosthenes program in this discipline involves coding in some bound on the distance from one prime to the next.

There is a (very nice) principle of coinduction, which we use to prove infinite structures equal. It can be read off from the definition of the codata type. We discuss this in the next subsection.

Does the introduction of codata destroy strong normalisability? No! But you have to have the right definition of normal form. Every expression whose principle operator is a coconstructor is in normal form.

To get confluence as well as strong normalisability requires a little more care. Each corecursive definition is translated into a closed term and an explicit unwind operation introduced - see [Telford and Turner 1997] for details. The scheme in [Wadler et al. 1998] for translating lazy definitions into a strict language is related.

## Coinduction

First we give the definition of *bisimilarity* (on colists). We can characterise the bisimilarity relation (`≈` or, as here `~`) as follows:

`x ~ y  -->  head x = head y  ⋀  tail x ~ tail y`

Actually this statement is itself a corecursive definition! To avoid infinite regress, we say that anything obeying this statement is a bisimulation, and by bisimilarity we mean the largest such relation. For a fuller discussion see [Pitts 1994]. Assuming the understanding of how to avoid logical regress, we say that

>In general, two pieces of codata are bisimilar if
- their finite parts are equal, and
- their infinite parts are bisimilar

The **principle of coinduction** states that bisimilar objects are equal.

One way to understand this principle is to take it as the **definition of equality on infinite objects**.

We can package the definition of bisimilarity and the principle that bisimilar objects are equal, in this method of proof:
>In proving the equality of two infinite structures, we may assume (coinductive hypothesis) the equality of recursive substructures of the same form.

For colists: to prove

`g x₁ … xₙ = h x₁ … xₙ`

it is sufficient to show

`g x₁ … xₙ = e <> g a₁ … aₙ`    
`h x₁ … xₙ = e <> h a₁ … aₙ`

There is a similar rule for each codata type.

### An example of a proof by coinduction

The following theorem about the standard functions `map` and `iterate` is from[Bird and Wadler 1988]. We have changed the name of `map` to `comap` because for us it is a different function when it acts on colists.

```hs
iterate f x = x <> iterate f (f x)
comap f (x <> xs) = f x <> comap f xs
--map f (x :  xs) = f x :    map f xs

Theorem:
  iterate f (f x) = comap f (iterate f x)

Proof by coinduction:
  iterate f (f x)
  = f x <> iterate f (f (f x))          {iterate}
  = f x <> comap f (iterate f (f x))    {hypothesis}
  = comap f (x <> iterate f (f x))      {comap}
  = comap f (iterate f x)               {iterate}
  QED
```

The proof given in Bird and Wadler uses the "take-lemma", and it is longer than this one, requiring an auxiliary construction, involving the application of the `take` function to both sides of the equation, and an induction on the length of the `take`.

The absence of a base case in this form of induction is at first sight puzzling. It is important to note that

>Coinduction is valid only for the proof of equations over infinite structures, not of arbitrary properties of the data structure as with ordinary induction.

The "strong coinduction" principle illustrated here seems to give shorter proofs of equations over infinite lists than either of the proof methods for this which have been developed in the theory of weak functional programming - namely partial object induction [Turner 1982] and the take-lemma [Bird and Wadler 1988].

The framework seems simpler than previous accounts of coinduction - see for example [Pitts 1994], because we are not working with domain theory and partial objects, but with the simpler world of total objects.

Moral: Getting rid of partial objects seems an unmitigated blessing - not only when reasoning about finite data, but perhaps even more so in the case of infinite data.

```hs
(-) :: ℕ → ℕ → ℕ
n   - 0   = n
0   - m   = 0
S n - S m = n - m

(\) :: ℕ → ℕ → ℕ
n   \ 0   = 0
0   \ m   = 0
S n \ S m = S (n - m)
```






## References

[GodelK58] 1958 On a hitherto unutilized extension of the finitary standpoint - Kurt Godel
[McBrid03] 2003 First Order Unification by Structural Recursion - Conor McBride
[Nordst90] 1990 Programming in Martin-Lof's Type Theory: An Introduction - B. Nordstrom, K. Petersson, J. M. Smith
[AnAbel99] 1999 A Semantic Analysis of Structural Recursion - Andreas Abel
[ArkAll96] 1996 Walther Recursion - Kostas Arkoudas, David McAllester 
[BirWad88] 1998 Introduction to Functional Programming - R. S. Bird, P. Wadler
[PittsA94] 1994 A Co-induction Principle for Recursively Defined Domains - A. M. Pitts
[Runcim89] 1989 What about the Natural Numbers - Colin Runciman
[Wadler98] 1998 How to add laziness to a strict language without even being odd - Philip Wadler, Walid Taha, David McQueen
[TelTur00] 2000 Ensuring Termination in ESFP - David Turner, A. J. Telford
[TelTur97] 1997 Ensuring Streams Flow" - David Turner, A. J. Telford
[Turner95] 1995 Elementary Strong Functional Programming - David Turner
[Turner86] 1986 Turner "An Overview of Miranda - David Turner
[Turner82] 1982 Functional Programming and Proofs of Program Correctness - David Turner
