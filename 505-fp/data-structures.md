# Functional Data Structures

(Recursive Programming Techniques. William H. Burge. 1975. second edition)

The method employed to define new data structures specifies the abstract syntax of sets of data structures, as opposed to the concrete syntax which refers to the set of strings of characters which define a written representation.

Each structure description introduces functions for both constructing and accessing the component parts of members of the set described.

It is a method of introducing new data types without being too precisely committed to the way they are represented inside the computer.

The functions which are introduced in a data definition are limited only by certain axioms that relate them.

A new structure will be defined using an English sentence of the form:
- A pair has a `first` and a `second`
- if `x` is a pair then
  - `first x` denotes the first of the pair
  - `second x` denotes the second of the pair

The definition explicitly names the selecting functions, or *selectors*, for the parts of a structure but gives no name to the function for constructing pairs, which must be given separately.

In the case of a pair it will be called `cpair`. This definition brings 3 functions called `first`, `second` and `cpair` into existence.

In order to mechanize programs which contain references to these functions they must be implemented by programs.

The only properties required of these programs, however, are that:
- `first (cpair x y) = x`
- `second(cpair x y) = y`

from which it follows that if `z` is a pair then
- `cpair(first z)(second z) = z`

All the functions that are introduced by definitions of data structures will be assumed to satisfy these kinds of axioms.

A data structure may be made up of two or more sets having different formats.

A list can be defined as having one of two different formats; it is either
- *null*, and has no components, or
- *nonnull* and has 2 components:
  - `head` (which is an element of the list)
  - `tail` (which is also a list)


These definitions may be made more precise by specifying the nature of the component data structures.

For example, an `A-B-pair` can be defined to be a pair whose `first` is an object of type `A` (or which belongs to the set `A`) and whose `second` is an object of type `B`, as follows:

> An `A-B-pair` has a `first` which is an `A`, and a `second` which is a `B`.

It is then sensible to write `integer-list-pair` to denote the set of pairs whose `first` is an integer and whose `second` is a list.

> An `A-list` is either `null` or has a `head` which is an `A` and a `tail` which is an `A-list`.


This defines a list whose elements all belong to the set A. It is then sensible to write `integer-list` as the name of the set of lists whose elements are integers.

When a data structure has more than one format, there are *associated predicates* that distinguish between different formats.

In the case of a list, there is one predicate which is called `null`
- when `null` is applied to a *null list* it returns the value `true`
- when `null` is applied to a *non-null list* it returns the value `false`.

* functions `head` and `tail` are called **selectors**.
* functions which manufacture structures from their components are called **constructors**.

* The constructor for *nonnull lists* is called `prefix`, and the *null list* is written `()` or `[]`

The types of the operations on lists are:
* null   ∈ A-list -> Bool
* head   ∈ (nonnull A-list -> A)
* tail   ∈ (nonnull A-list -> A-list)
* prefix ∈ (A -> (A-list -> A-list)

In Haskell, these types would be denoted as

```hs
data NonEmpty a = a :| [a]

null   :: [a] -> Bool
head   :: NonEmpty a -> a
tail   :: NonEmpty a -> [a]
prefix :: a -> [a] -> [a]
```

These functions are closely interrelated as follows:

```hs
null :: [a] -> Bool
null []     = True
null (x:xs) = False

head :: NonEmpty a -> a
head (x:xs) = x

tail :: NonEmpty a -> [a]
tail (x:xs) = xs

prefix :: a -> [a] -> [a]
prefix x xs = x:xs

prefix (head z) (tail z) = z
```


Another data structure that is often used is a *list structure*, whose list elements may themselves be lists. *A-list structure* is either:
- atomic and is an `A`
- or else it is not atomic and is an *(A-list structure)-list*

The same operations can be used for lists and list structures.

- singleton list: `u x = [x]`
- The `atomic` predicate is the only extra operation.

An example of the notation to be used for list structures is:
- `(a, b), ((c, d), u e), ()`

which denotes a list of length 3 whose first element is `(a, b)`, whose second
element is `((c, d), u e)`, and whose third item is `()`.


Examples of other data structures:
* A type `Either`
  - is simple and is an *identifier*,
  - or has a `left` and a `right` both of which are types.
* An AE (applicative expression) is:
  - *simple* and is an *identifier*
  - or is a lambda expression
    - and has a *bound variable* which is an identifier
    - and a body which is an AE
  - or is *compound* and
    - has an *operator*
    - and an operand both of which are AE's
