# Elements of functional programming

William H. Burge. Recursive Programming Techniques. Addison-Wesley, 1975.

## 1. Basic Notions and notations


To design a simple formal language for describing programs, we might start with notation and decide to be as close to math as possible, relying on the branch of mathematical logic called Combinatory Logic for help and inspiration. This surface, the most visible layer, is *syntax*, and it incorporates notation. However, notation is meaningless by itself, it is a way to denote *semantics* on a PL to a written formal form.

The most fundamental semantic element of syntax are *expressions*. We construct expressions from smaller expressions. The two most fundamental forms that enable everything else is the *operator-operand construction*, which denotes the application of a function to its argument, and an expression format to denote a function abstraction, similar to Church's notation in lambda calculus. (basically, we need two syntactic forms: one for function definition and another for function application).

With these two forms, any extra notation that may be introduced later won't add new structural features since any new piece of notation can be rewritten in terms of these two core constructions, or the constants constructed with them. *Constants* are found in almost every programming language, and they correspond to conditional expressions, lists of expressions, and self-referential definitions.

Adding extra language elements creates a practical and powerful programming language, or rather, a family of programming languages because the admitted features have more to do with combining functions in order to produce new functions, than with the nature of the primitive functions that are being combined themselves. A programming language for a particular range of applications can be obtained by adding an appropriate set of primitives to this basic structure.

The features of our example language will be introduced and described formally as a translation to lambda calculus. In the calculus of lambda conversion, the calculation of the result of applying a function is represented by successive transformations of an expression to the one with a simpler form. The method of evaluating an expression is able to represent partial recursive functions by using this notation as well.

Expressions are central to a PL because they have a property that is valuable for practical programming purposes; namely, the *value* (or meaning) of an expression depends exclusively on the values of its *subexpressions* and nothing else. This property allows programmers to tame complexity by splitting a program into simpler, independent, parts. In other words, it is possible to make the structure of the program match the structure of the problem that is being solved.

## Functions and types

A function is a *rule of correspondence* by which when one thing is given as an argument, another unique thing may be obtained, called the *value of the function at that argument*.

Another way of expressing this, is to say that a function f converts or transforms x to y, or that y is the result of the application of f to x.

The result of applying f to x will is written f(x) or f x. This composite expression is made of an operator "f" and an operand "x". The standard way of indicating the result of a function application is juxtapose the function next to the argument, `f x`. The resulting expression will be said to be *composed by application*.

Most functions can only be applied to a certain kind of object arguments, and will only produce objects of certain types. The set of objects to which a function may be applied is the *domain*, and the set of objects that can result from applying the function is the *range*.

The type of a function is written `A -> B`, indicating that when a function is applied to a member of the set A, a member of the set B is produced as a result. For instance, the fact that a function for squaring an integer produces an integer can be expressed `square ∈ (int -> int)`.


## 1.4 Data Structures

(William H. Burge. Recursive Programming Techniques. Addison-Wesley, 1975.)

This section describes the method which will be employed to define new data structures. The method specifies the *abstract syntax* of sets of data structures, as opposed to the *concrete syntax* which refers to the set of strings of characters which define a written representation.

Each structure description introduces functions for both constructing and accessing the component parts of members of the set described. It is a method of introducing new data types without being too precisely committed to the way they are represented inside the computer.

The functions which are introduced in a data definition are limited only by certain axioms that relate them.

A new structure will be defined using an English sentence of the form: "A pair has a first and a second". If `x` is a pair then `first x` denotes the first component of the pair, and `second x` denotes the second component of the pair.

The definition explicitly names the selecting functions, or *selectors*, for the parts of a structure but gives no name to the function for constructing pairs, which must be given separately. In the case of a pair it will be called `cpair`. This definition brings 3 functions, called `first`, `second` and `cpair`, into existence.

In order to mechanize programs which contain references to these functions they must be implemented by programs. The only required properties of programs:    
        first (cpair x y) = x     
        second(cpair x y) = y

from which it follows that if `z` is a pair then      
        cpair(first z)(second z) = z

All the functions that are introduced by definitions of data structures will be assumed to satisfy these kinds of axioms.


A set of data structures might be made up of *two or more sets having different formats*.


### List

A list can be defined as having one of two different formats:
1. it is either `null` and has no components
2. or nonnull, and has two components:
  - a `head` which is the initial element of the list
  - a `tail` which is the rest of the list

These definitions may be made more precise by specifying the nature of the component data structures.

An `A-B-pair` can be defined to be a pair whose `first` is an object of type `A` (or which belongs to set `A`) and whose `second` is an object of type `B`.

It is then sensible to write *integer-list-pair* to denote the set of pairs whose first is an integer and whose second is a list.

> An `A-list` either is `null` or has a `head` which is an `A` and a `tail` which is an `A-list`.

AList a = Null | Cons a (AList a)

This defines a list whose elements all belong to the set A. It is then sensible to write `integer-list` as the name of the set of lists whose elements are ints.


* When a data structure has more than one format, it uses *associated predicates* to distinguish between formats.

In the case of lists, the predicate `null`, when applied to a
- *null-list* returns True
- *non-null-list* returns False

* The functions `head` and `tail` are called **selectors**. The functions which manufacture structures from their components are called **constructors**.

* The constructor for non-null lists is called `prefix` (`cons`), and the null-list is written `()`, or in FP as `[]`.

The types of functions on lists; they are closely interrelated:

```hs
null  ∈  A* -> Bool
null :: [a] -> Bool
null []          = True
null (cons x xs) = False

head ∈ (nonnull A* -> A)
head :: Nonempty a -> a
head (cons x xs) = x

tail ∈ (nonnull A* -> A*)
tail :: Nonempty a -> [a]
tail (cons x xs) = xs

cons ∈ (A -> (A* -> A*)
cons :: a -> [a] -> [a]
cons (head zs) (tail zs) = zs

singleton ∈ A -> A*
singleton :: a -> [a]
singleton x = [x]
```

where x :: A, y :: A-list (y :: A*), and z :: non-null A-list


Since lists are so important, they have special syntax:
- `x : xs` means `cons x xs`
- `[a,b,c,d]` is an abbreviation for `a:(b:(c:(d:[]))`
- the head of a list is always written at the left
- list of length `k` is called a `k-list`
- list selectors for the first, second, third, etc. members of the list are called `first`, `second`, `third`, ...
- In general, we write `n`th to mean `h . tⁿ⁻¹`
- lists of length one, like `x:[]`, are written `u x`, where `u` is a function that transforms an object into a list of length 1 which contains the object.

### List structure

Another data structure that is often used is a *list structure*, whose list elements may themselves be lists.

An *A-list structure* is either:
- `atomic` and is an `A`
- or it is non-atomic and is an *(A-list structure)-list*

* The same operations can be used for lists and list structures. The `atomic` predicate is the only extra operation introduced by this last definition.

An example of the notation to be used for list structures is

(a, b), ((c, d), u e), ()

[ [a,b], [ [c,d],[e] ], [] ]

which denotes a list of length 3 whose first element is `(a, b)`, whose second element is `((c, d), u e)`, and whose third item is `()`.


Other data structures:

A type is either:
- simple and is an identifier
- or has a left and a right both of which are types

An AE (applicative expression) is
- simple and is an identifier
- or is a lambda expression and has
  - a bound variable which is an identifier and
  - a body which is an AE
- or is compound and
  - has an operator which is AE
  - and an operand which is AE
