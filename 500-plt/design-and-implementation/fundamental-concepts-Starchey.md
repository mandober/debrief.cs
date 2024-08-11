# Fundamental Concepts in Programming Languages

`Fundamental Concepts in Programming Languages`, Christopher Strachey, 1967

## 2. Basic concepts

### 2.1. Assignment commands

One of the characteristic features of computers is the existence of a *store* into which it is possible to put *data* and later retrieve it. Furthermore, the act of putting data into a store erases the exasting contents; in other words, the process is one of *overwriting*. This leads to the *assignment command* which is a prominent feature of imperative programming languages.

Using the equals symbol (=) for assignment clashes with the mathematical notion of equality, so some PLs use a different symbol, like `:=` or `←`, yet many insist on using `=`, which may lead to mathematically absurd exp like `x = x + 1`, even though, operationally, it denotes the operation if incrementing the existing value named by `x` by 1, and then storing the result back in `x`. This is a classical example of a nebulous imperative assignment that kills any chance of *equational reasoning* by *subtituting equals for equals*. Moreover, the exact sequencing of operations becomes important.

Unforunatelly, this doesn't stop there, and the following assignment commands go all tits up, defying our ability to define what assignment actually means:

                  x := 3
                  y := x + 1
                  x := x + y
                  i := a > b → j, k
               A[i] := A[a > b → j, k]
    A[a > b → j, k] := A[i]
       a > b → j, k := i

The last one tries too hard to be cute. With any part being a side-effectful expression, the whole thing becomes ridiculous quickly; this even means that the two exp that should be the same, actually might not be, e.g. the exact results of `x := x + y` and `x := y + x` would depend on the order of evaluation. This is because the evaluation of these exp will trigger the side-effects possibly associated with `x` and `y`, that is, if we let `x` and `y` stand for arbitrarily complex exp (which many PLs do).

These examples show an increasing complexity of the expressions possible to write on the left side of an assignment. We are tempted to define them all generally as `ε₁ := ε₂`, where `ε` represents any expression, and then chance an explanation along the lines "evaluate the two expressions and then perform assignment". However, this clearly won't do, as the meaning of the same exp on the left side of assignment is different from its meaning on the right side.

Roughly speaking, an expression on the left side stands for an *address*, while one on the right for a *value* stored there. Thus, there are actually *two values* associated with an expression/identifier (a *name*, or an *identifier*, is just a simple case of expressions):
- **L-value** for address-like object appropriate on the left of assignment
- **R-value** for contents-like object appropriate on the right side of ass

#### L-values and R-values

An *L-value* represents an area of the store of the computer.

We call this a **location** rather than an *address* in order to avoid confusion with the normal store-addressing mechanism of the computer.

A location may not be exactly one machine-word in size: some objects are bigger, some smaller. Some locations are addressable (in which case their numerical machine address may be a good representation) but some are not. Before we can decide what sort of representation a general, non-addressable location should have, we should consider what properties we require of it.

The two essential features of a location are that it has a *content*, i.e. an associated R-value, and that it is generally possible to *change the content* by a suitable updating operation. These two operations are sufficient to characterise a **generalized location**, which are, consequently, sometimes known as *Load-Update Pairs* (LUPs).

### 2.3. Definitions

- declaration
- initialization
- definition
- assignment
- reassignment

In many PLs, we can introduce a new quantity and give it a value by an initialized definition like `let p = 3.5`. In some PLs, this is a 2-step process: first a new variable (name, identifier) is **declared**, possibly annotating it with the appropriate type, e.g. `int x`. This only introduces a new variable/name, without initializing it. Should we refer to `x` now, we'd either get an error (e.g. 'undefined identifier'), some arbitrary (junk) value, or a proper SEGFAULT (memory access violation). After the declariton, the variable is **initialized** by assigning a value to it, e.g. `x = 5`. The declaration and initialization may be done in a single step, e.g. `int x = 5`, which is called **definition**.

*Initialization* is only this initial association of a newly declared name to a value. If allowed, later re-assignments are called, well, *reassignments* or (destructive, in-place) *updates*.

In ALGOL-family of PLs the definition is achieved in two steps, `real p; p := 3.5;`. The first statement introduces a new name, `p`, the second initializes it to the value 3.5. The best way of looking at this, is that the *activation of the definition* causes a new, previously unused, location to be set up as the L-value of `p`, and that the R-value 3.5 is then assigned to this location.

>The relationship between a name and its L-value cannot be altered by assignment, and it is this fact which makes the L-value important.

However in many Pls, one name can have several different L-values in different parts of the program. This is the concept of **scope** (sometimes called *lexicographical scope*) which is controlled by the *block structure* which allows us to determine at any point which L-value is relevant.

Some irresponsible PLs allow **aliasing**, i.e. the possibility to have several names with the same L-value. This may be done by using a special form like CPL's `let q ≃ p`, or C-like form `let q = &p`, where `&` is the 'address-of' operator. This has the effect of giving the name of the same L-value as `p` (which must already exist). This feature is generally used when the right side of the definition is a more complicated expression than a simple name. Thus if `M` is a matrix, the definition `let x ≃ M[2,2]` gives `x` the same L-value as one of the elements of the matrix. It is then said that `x` is **sharing**, i.e. `x` is being **aliased** with `M[2,2]`, and an assignment to `x` will have the same effect as one to `M[2,2]`.

It is worth noting that the expression on the right of this form of definition is evaluated in the L-mode to get an L-value *at the time the definition is obeyed*. It is this L-value which is associated with `x`. Thus if we have

    let i = 2
    let x ≃ M[i,i]
    i := 3

the L-value of `x` will remain that of `M[2,2]`.

`M[i,i]` is an example of an **anonymous quantity**, i.e. an expression, rather than a simple name, which has both an L-value and an R-value. There are other expressions, such as `a + b`, which only have R-values. In both cases the expression has no name, although it does have either one value or two.

### 2.4. Names

The terms *identifier* and *name* are used interchangibly (as they should). The term *reference* is also used by several languages to mean (approximately) an L-value.

The important feature of a **name** is that it has no internal structure (in the context in which we are using it as a name). Names are thus *atomic objects*, and the only thing we know about them is that given two names it is always possible to determine whether they are equal (if they are the same name).

### 2.5. Numerals

The term *number* should be used for the abstract object, and the term *numeral* for its written representation.

Numerals, in general, have an internal structure and are therefore not atomic (in the sense names are). An interpretation more in keeping with our general approach is to regard numerals as R-value expressions written according to special rules. Local rules for special forms of expression can be regarded as a sort of 'micro-syntax' and form an important feature of PL, especially in a preliminary "lexical pass" of compilers that need to quickly distinguish between names, numerals, strings, and similar objects which are represented in the input stream by strings of symbols in spite of being atomic inside the language. With this interpretation, the only numerals which are also names are the single digits and these are, of course, constants with the appropriate R-value.

## 3. Conceptual constructs

### 3.1. Expressions and commands

*Commands* are always present in programming and it is their inclusion which makes PLs quite different from the rest of mathematics.

### 3.2. Expressions and evaluation

#### 3.2.1. Values

>The characteristic feature of an *expression* is that it has a *value*.

We have seen that, in general, in a PL, an expression may have two values, an L-value and R-value. In this section, however, we are considering expressions in the absence of assignments, and in such setting L-values are not required. Like in the rest of mathematics, we are only concerned with R-values.

One of the most useful properties of expressions is what Quine named **referential transparency**. In essence, it means that the value of an expression is only determined by the values of its subexpressions. Nothing else matters; any other features of the subexpression, such as its internal structure, the number and nature of its components, the order in which they are evaluated, are irrelevant to the value of the main expression. Everyone is familiar with this property of expressions in mathematics and often make use of it unconsciously.

>Referential transparency is what enables equational reasoning by substituting equals for equals.

#### 3.2.2. Environments

In order to find the value of an expression, we (only) need to know the value of its components.

Thus to find the value of `a * 5 + b / a`, we need to know the values of `a` and `b`. Thus, we speak of **evaluating an expression in an environment** (or sometimes *relative to an environment*) which provides the values of free variables. Ways in which such an environment may be provided is using where-clause, let-binding or λ-expressions (or a combination thereof).

```hs
exp1 = a + 3 / a * 2
  where
  a = 5 * 3

exp2 = let a = 5 * 3
        in a + 3 / a * 2

exp3 = (\ a -> a + 3 / a * 2) (5 * 3)
```
