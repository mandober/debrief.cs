# SICP: 1.1 The Elements of Programming

Programming languages are used to instruct computers, but they are also a framework for organizing ideas, and means to build complex concepts from the simpler. To support this, a PL must have these 3 properties:

1. **Primitive expressions**, which represent the simplest entities the language is concerned with.
2. **Means of combination**, by which compound elements are built from simpler ones.
3. **Means of abstraction**, by which compound elements can be named and manipulated as units.

There are 2 kinds of entities in programming procedures and data. **Data** is the information we want to process and **procedures** are instructions on how to do it. A PL must be able to describe *primitive data* and *primitive procedures* and have methods for composing and abstracting them.


## 1.1.1 Expressions

One kind of *primitive expression* is a *number*; more precisely, the expression consisting of the numerals that represent the number in base 10.

*Expressions* representing numbers may be combined with an expression representing a *primitive procedure* (such as +) to form a *compound expression* that represents the application of the procedure to those numbers.

```scheme
512
; 512

(+ 137 349)
; 486

(+ 21 35 12 7)
; 75

(+ (* 3 5) (- 10 6))
; 19

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))
; 57
```

Expressions such as these, formed by delimiting a list of expressions within parentheses in order to denote *procedure application*, are called **combinations**.

The leftmost element in the list is called the **operator**, and the other elements are called **operands**.

The *value of a combination* is obtained by *applying the procedure* specified by the *operator* to the *arguments* that are the *values of the operands*.

The convention of placing the operator to the left of the operands is known as **prefix notation**. No ambiguity can arise, because the operator is always the leftmost element and the entire combination is delimited by the parentheses. Also prefix notation extends natuarally to allow *nested combinations*, that is, combinations whose elements are themselves combinations.

The *interpreter* always operates in the same basic cycle:
- it *reads* an expression from the terminal
- *evaluates* the expression
- *prints* the result

This mode of operation is called a **read-eval-print loop**. It is not necessary to explicitly instruct the interpreter to print the value of the expression; Lisp obeys the convention that *every expression has a value*.


## 1.1.2 Naming and the Environment

An important aspect of a PL is the support it provides for *naming computational objects*.

> The name identifies a variable whose value is the object.


In Scheme, the keyword `define` is used to name things.

(define <name> <value>)




```scheme
(define size 2)
; nil
size
; 2
(define pi 3.14159)
; nil
(define radius 10)
; nil
(* pi (* radius radius))
  314.159
(define circumference (* 2 pi radius))
; nil
circumference
; 62.8318
```

The *definition* above causes the interpreter to associate the value 2 with the name `size`. The interpreter's response to evaluating definitions (since every excpression has a value) is highly implementation-dependent (responding with `nil` is common).

Once the name `size` has been associated with the number 2, we can refer to the value 2 by the name.

`define` is the *simplest means of abstraction* for it allows us to use *simple names* to refer to the results of *compound operations*.

The possibility of binding values (objects) to names implies that the interpreter must have some data structure in memory to keep track of the *name-object pairs*. This memory is called the **environment**, more precisely, the **global environment**


## 1.1.3 Evaluating Combinations

In **evaluating combinations**, the procedure is:
1. Evaluate the subexpressions of the combination.
2. Apply the procedure that is the value of the leftmost subexpression (the operator) to the arguments that are the values of the other subexpressions (the operands).

The first step dictates that in order to accomplish the evaluation process for a combination, we must first perform the evaluation process on each element of the combination. Thus, the evaluation rule is *recursive*; that is, it includes, as one of its steps, the need to invoke the rule itself.

The evaluation can be represented as a tree structure where each combination is represented by a node with branches corresponding to the operator, and the operands of the combination stemming from it. The leaves (terminal nodes) represent either operators or numbers. Viewing evaluation in terms of the tree, we can imagine that the values of the operands *percolate upward*, starting from the terminal nodes and then combining at higher and higher levels. This form of evaluation rule is an example of a general kind of process known as **tree accumulation**.

The repeated application of the first step brings us to the point where we need to evaluate, not combinations, but primitive expressions such as numerals, built-in operators, or other names.

In **evaluating primitives**, the procedure is:
1. the values of numerals are the numbers that they name
2. the values of built-in operators are the machine instruction sequences that carry out the corresponding operations
3. the values of other names are the objects associated with those names in the environment.

We may regard the second rule as a special case of the third by stipulating that symbols such as + are also included in the global environment, and are associated with the sequences of machine instructions that are their "values".

> The key point is the role of the environment in determining the meaning of the symbols in expressions. The general notion of environment is to provide a context in which evaluation takes place.

These evaluation rules do not handle definitions - such exceptions to the general evaluation rule are called **special forms**.

Each special form has its own evaluation rule. The various kinds of expressions (each with its associated evaluation rule) constitute the *syntax* of the programming language. In comparison with most languages, Lisp has a very simple syntax; that is, the evaluation rule for expressions can be described by a simple *general rule* together with *specialized rules* for a small number of *special forms*.


## 1.1.4 Compound Procedures

Elements that must appear in any powerful PL:
- Numbers and arithmetic operations are primitive data and procedures.
- Nesting of combinations provides a means of combining operations.
- Definitions that associate names with values provide a limited means of abstraction.

**Procedure definition** is a more powerful abstraction technique (then a name definition) by which a compound operation can be given a name and then referred to as a unit.

```scheme
(define (square x) (* x x))
; nil
```

This is a *compound procedure*, which has been given the name `square`. The procedure represents the operation of multiplying something by itself. The thing to be multiplied is given a *local name*, `x`, which plays the same role that a pronoun (it, that) plays in a natural language.

> Evaluating the definition creates this compound procedure and associates it with the name.


The general form of a procedure definition:

(define (<name> <parameters>) <body>)



The <name> is a symbol to be associated with the procedure definition in the environment. The <parameters> are the names used within the body of the procedure to refer to the corresponding arguments of the procedure. The <body> is an expression that will yield the value of the procedure application when the formal parameters are replaced by the actual arguments to which the procedure is applied. The <name> and the <parameters> are grouped within parentheses, just as they would be in an actual call to the procedure being defined.

Compound procedures are used in exactly the same way as primitive procedures; it would be hard to tell them apart from procedures built in the interpreter.


## 1.1.5 The Substitution Model for Procedure Application

To evaluate a combination whose operator names a compound procedure, the interpreter follows the same process as for combinations whose operators name primitive procedures. That is, the interpreter evaluates the elements of the combination and applies the procedure (which is the value of the operator of the combination) to the arguments (which are the values of the operands of the combination).

For compound procedures, the application process is as follows:
1. To apply a compound procedure to arguments, evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.

The process of applying a proc to the args is called the **substitution model for procedure application**. It can be taken as a model that determines the "meaning" of procedure application, but it not the only model. In fact, with the introduction of mutable data it breaks down and must be replaced by a more complicated model.


### Applicative order versus normal order

In the **applicative order** evaluation, the interpreter first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments. *"Evaluate the arguments and then apply"*.

In the **normal-order** evaluation, the interpreter would not evaluate the operands until their values were needed. Instead it would first substitute operand expressions for parameters until it obtained an expression involving only primitive operators, and would then perform the evaluation. 
*"Fully expand and then reduce."*

It can be shown that, for procedure applications that can be modeled using substitution, and yield legitimate values, normal-order and applicative-order evaluation produce the same results.


## 1.1.6 Conditional Expressions and Predicates


### Case analysis

*Case analysis* is another special form in Lisp, and it is introduced by the symbol `cond`.



The general form of a conditional expression:

(cond (<p1> <e1>)
      (<p2> <e2>)
      ...
      (<pn> <en>))



consists of the symbol `cond` followed by parenthesized pairs of expressions called **clauses**.

- (<p> <e>) clause
- <p> predicate
- <e> consequent expression

There may actually be more then one consequent expression, in which case they are are evaluated in sequence, and the value of the last expression is returned as the final value of `cond`.

The interpreter returns the value of the corresponding consequent expression of the first predicate that evals to true. If none do, the value of the `cond` is *undefined*.


```scheme
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))
```

`else` is a special symbol that can be used in place of the last predicate. In fact, any expression that always evaluates to true could be used as the <p> there.

### If

The special form `if`is a restricted type of conditional used when there are exactly two cases in the case analysis.


The general form of an `if` expression is

(if <predicate> <consequent> <alternative>)



The interpreter starts by evaluating the <predicate>; if it evaluates to true, the interpreter then evaluates the <consequent> and returns its value. Else, it evaluates the <alternative> and returns its value.

In an `if` expression (unlike cond) the <consequent> and <alternative> have to be a *single expressions*.


### Logical Composition Operations

In addition to *primitive predicates* (such as <, =, and >), there are *logical composition operations*, which enable us to construct *compound predicates*.

The 3 most frequent are:
1. (and <e1> ... <en>)
2. (or  <e1> ... <en>)
3. (not <e>)


**and**  special form   
The interpreter evaluates the expressions <e> one at a time, in left-to-right order. If any <e> evaluates to false, the value of the `and` expression is false, and the rest of the <e>'s are not evaluated. If all <e>'s evaluate to true values, the value of the `and` expression is the value of the last one.

**or**  special form   
The interpreter evaluates the expressions <e> one at a time, in left-to-right order. If any <e> evaluates to a true value, that value is returned as the value of the `or` expression, and the rest of the <e>'s are not evaluated. If all <e>'s evaluate to false, the value of the `or` expression is false.

**not** procedure    
The value of a `not` expression is true when the expression <e> evaluates to false, and false otherwise. Not is an ordinary procedure.

> `and` and `or` are special forms, not procedures, because the subexpressions are not necessarily all evaluated. Not is an ordinary procedure.


The model of evaluation allows for combinations whose operators are compound expressions:

```scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```


## 1.1.7 Square Roots by Newton's Method

Procedures are much like ordinary mathematical functions. They specify a value that is determined by one or more parameters, but there is an important difference between mathematical functions and computer procedures: procedures must be effective.

Mathematical square-root function:

$$\sqrt{r} = x : x \ge 0 \land x^2 = r$$

This describes a perfectly legitimate mathematical function. We could use it to recognize whether one number is the square root of another, or to derive facts about square roots in general. On the other hand, the definition does not describe a procedure. It tells us almost nothing about how to actually find the square root of a given number.

The contrast between *function* and *procedure* is a reflection of the general distinction between describing properties of things and describing how to do things, or, as it is sometimes referred to, the distinction between *declarative knowledge* and *imperative knowledge*.

In mathematics we are usually concerned with declarative, *what is*, descriptions, whereas in computer science we are usually concerned with imperative, *how to*, descriptions.

Declarative and imperative descriptions are intimately related like math and CS. For instance, to say that the answer produced by a program is "correct" is to make a declarative statement about the program. There is a large amount of research aimed at establishing techniques for proving that programs are correct, and much of the technical difficulty of this subject has to do with negotiating the transition between imperative statements (from which programs are constructed) and declarative statements (which have a truth value).

In a related vein, an important area in programming language design is the exploration of the declarative languages (e.g. SQL), in which one actually programs in terms of declarative statements and the interpreter knows how to translate this given "what is" knowledge into "how to" knowledge automatically.


MIT Scheme distinguishes between integers and decimal values, and dividing two integers produces a rational number rather than a decimal. For example, 
`10/6 = 5/3`, while `10.0/6.0 = 1.6666666666666667`.


Newton's Method:

```scheme

```
