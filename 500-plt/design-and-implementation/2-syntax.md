# Syntax and grammar

The first step in implementing a programming language is to define its syntax.

The **syntax** of a language is defined by a **grammar**, which is a set of rules that describes how to form *valid syntactic forms* or **well-formed expressions** in the language.

Like any formal language, a PL consists of the same components
- alphabet, `Σ`: a finite set of symbols (characters)
- strings: an infinite collection of words built by concatenation of symbols
- words or tokens: legal or well-formed strings

## Abstract and concrete syntax

There are two kinds of syntax:
- abstract syntax
- concrete syntax

The **abstract syntax** of a programming language is a data structure that represents the structure of expressions in the language, commonly in the form of an abstract syntax tree (AST) since expressions form a tree.

The **concrete syntax** is the *textual representation* of language expressions. It is a string of characters that represent a program.

The first thing then to do is convert the textual representation of a language into an AST using a parser (which can optionally contain a lexer and tokenizer).


## Grammar

- grammar
- defining a grammar
- BNF, Backus-Naur form

A grammar may be defined using various notations, but the BNF (Backus-Naur form), with its many variations and conventions, is the most popular.

The grammar governing the valid syntactic forms of the SUPL, may be defined using BNF notation by listing the language **terms**:

```hs
t :=                              -- terms:
   | true                         -- constant true
   | false                        -- constant false
   | if t₁ then t₂ else t₂        -- conditional
   | 0                            -- constant zero
   | succ t                       -- successor
   | pred t                       -- predecessor
   | iszero t                     -- a predicate
```

The first line declares that we are defining the set of terms, using the *metavariable* `t` to range over terms. Each line that follows gives one alternative *syntactic form for terms*. At every point where the symbol `t` appears, we may substitute any term.

The prefix "meta" comes from *metamathematics*, the subfield of logic whose subject matter is the mathematical properties of *formal systems* (formal languages which include programming languages). **Metatheory** is the collection of true statements that can be made about some particular formal system, and, by extension, the study of such statements.

In simple langugaes, such as the one defined with the grammar above, as well as untyped lambda calculus, there is no difference between the categories **term** and **expression**, so they are used interchangeably.

Languages with additional syntactic categories such as types, differentiate between these two categories and use the word "expression" for various *syntactic phrases*, such as *term expression*, *type expression*, or even *kind expression*. The word "term" is used there for the more specialized sense of *syntactic phrases representing computations* (i.e. phrases that can be substituted for the metavariable).

Terms can be considered **atomic syntactic forms**, while **expressions** are syntactic forms build by recursively composing terms as prescribed by the language grammar.

A *program* in the present language is just a *term* built from the *forms* given by the *grammar* above.

Parentheses are used to resolve ambiguities in the grammar. They are not mentioned in the *grammar of terms* above, which defines only their abstract syntax - this grammar doesn't have any ambiguities since each sequence of *tokens* can be parsed as a term in at most one way.

The result of evaluating expressions are terms of a particularly simple form: for SUPL, they are always either boolean constants or numbers (iterations of succ/pred on 0). Such terms are called **values**, and they will play a special role in the formalization of the *evaluation order* of terms.

The SUPL gramar above allows the **formation** of some dubious looking terms, like `succ true` or `if 0 then 0 else 0`. The introduction of a *type system* prevents the formation of such nonsensical programs. A strong type system can make sure all programs are **correct by construction**. The advantage of types is that they discover such mistakes at the compile-time - for now, we can only check that expressions are **well-formed** by doing checks at run-time (which have a certain cost, unlike CT checks).

## Syntax

There are several equivalent ways of defining the syntax of a language.

### Defining a grammar using BNF notation

**BNF notation** is a popular and very compact way to define a grammar.

### Defining a grammar by induction on terms

However, BNF is just a compact notation for an **inductive definition** of a grammar. *Defining a grammar by induction on terms* means defining the smallest set of terms `T` such that some set of clauses is satisfied.

The first clause usually just states the language constants. The subsequent clauses are conditionals that state the rules by which we can judge that certain compound expressions are in `T`, i.e. they state how to gradually define the smallest set of terms that satisfies certain **closure properties**. The qualifier *"smallest"* states that `T` has no other elements apart from those required by the clauses.

The SUPL grammar defined by induction on terms:
1. `{true, false, 0} ⊆ T`
2. if `t ∈ T` then `{succ t, pred t, iszero t} ⊆ T`
3. if `t₁ ∈ T`, `t₂ ∈ T`, and `t₃ ∈ T`, then `if t₁ then t₂ else t₃ ∈ T`

Formally, we are defining `T` as a **set of trees**, not as a set of strings.

### Defining a grammar via inference rules

Another way to define a grammar is with a set of **rules of inference**. An inference rule is either an **axiom**, having no conditions, or a rule comprised of *premises* stated above the *inference line* with the *conclusion* below it. The inference rules commonly use the natural deduction style of presentation.

The SUPL as inference rules:

```hs
---------    ----------      ------
true ∈ T      false ∈ T      0 ∈ T

     t ∈ T             t ∈ T             t ∈ T
-----------       ----------      ------------
succ t ∈ T        pred t ∈ T      iszero t ∈ T

t1 ∈ T    t2 ∈ T    t3 ∈ T
---------------------------
if t1 then t2 else t3 ∈ T
```

To be pedantic, what we are calling "inference rules" are actually **rule schemas**, since their premises and conclusions may include metavariables.

Formally, each rule schema represents an infinite set of *concete rules* that can be obtained by replacing each metavariable consistently by all phrases from the appropriate *syntactic category*, i.e. in the rules above, replacing each `t` by every possible term.

### Generative definition of grammar

Another definition of the same grammar in a different, more concrete style, that gives an explicit procedure for generating the elements of `T`:

For each natural number `i`, define a set `Sᵢ`:
- S₀ = ∅
- Sᵢ﹢ᵢ = {true, false, 0}
       ⋃ { succ t, pred t, iszero t | t ∈ Sᵢ }
        ⋃ { if t1 then t2 else t3 | t1, t2, t3 ∈ Sᵢ }
- Finally, `S = ⋃{i} Sᵢ`

The generative definition of grammar shows how to construct the set of terms as **the limit of a sequence**.


### Sumary of grammar definitions

The definitions we have seen characterize the same set of terms from different directions: the first two definitions characterize the set of terms as the smallest set satisfying certain **closure properties**. The last definition shows how to construct that set as the limit of a sequence.
