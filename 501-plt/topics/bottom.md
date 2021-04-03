# Bottom

https://wiki.haskell.org/Bottom

* The symbol for bottom is `⊥`, in Unicode 0x22A5, in HTML `&perp;`, in LaTeX `\bot`, in ASCII `_|_`.

The bottom, denoted by the falsum symbol, `⊥`, represents both a bottom type and a bottom term (akin to the unit type), although a more common denotation for a bottom term is `undefined` (which is Haskell's reserved keyword).

The bottom repr the most undefined type, but it also refers to a computation that never completes, including diverging functions, and those that fail due to an error.

In fact, in Haskell, there is no way to distinguish between the diferent circumstances that produced the bottom type. There is no way to tell the exact reason why the computations have resulted in the bottom type - this means one cannot say whether a function "bottomed out" due to an never-ending loop, due to an error, or due to evaluating the undefined keyword. In a word, all bottoms are the same.

## Definedness ordering

In Haskell, there is relation of definedness between types, that has a specific ordering. Definedness of types of expressions can be ordered with `⊥` as the least element.

The definedness relation is denoted using a special set of symbols `{⊑ ⊏ ⊐ ⊒ ⋣ ⋢}`; their meaning corresponds to the more familiar set, `{<= < >= >}`. For example `a ⊏ b` is read as "a is less defined then b".

An example of definedness ordering: `⊥ ⊏ [⊥] ⊏ [3, ⊥]`

In the definedness ordering the things that are more-defined-then carry more information; e.g. the list [3,⊥] is more defined then the list [⊥] because we know more about the former (the first element) then the latter, about which we don't know anything except that it's a list. Nevertheless, the list [⊥] is more defined then just ⊥, which we know absolutely nothing about.

> Fully defined terms and expressions are equal WRT their definedness ordering.

This means, e.g. `3 ⋢ 4 ∧ 4 ⋢ 3`, that is, `3 = 4` concerning only the definedness relation. Defined terms/expressions are equal wrt their definedness ordering, they are equally well defined.


## Type inhabitation

The bottom is a member of each and every Haskell type, past, present or future, builtin or custom types. The only exceptions are the unlifted types, whose type ctors are marked with a hash symbol (magic hash), e.g. `#Int`; those are the unlifted, mostly unboxed types, e.g. #Int is the proper, machine integer, while `Int` is a lifted Haskell type that wraps a proper integer.


Even of the trivial unit type, and by extension, of any type equivalent to unit, i.e. a type that has a nullary single data ctor, like `data Unit = Unit`.

The bottom type is needed due to the **halting problem** (determining whether a computation is gonna halt or not is undecidable).

Note: some languages with dependent type systems, such as *Epigram*, can statically enforce termination, based on the type for particular programs, such as those using induction.

```hs
-- bottom is expressed by undefined
bottom = undefined

-- or by a function that errors
bottom = error "Non-terminating computation!"

-- Prelude.undefined
undefined = error "Prelude.undefined"

-- in Gofer, bottom is defines as
bottom = undefined | False

-- the type of bottom is arbitrary
-- defaulting to the most general type
undefined :: a
```

Since bottom is an inhabitant of every type (thus it is a value of any type), it can be used wherever a value of some particular type is needed, which may be useful sometimes:

```hs
-- as a @TODO annotation
foo = undefined

-- dispatching to a type class instance, when giving a term is not approapriate
print (sizeOf (undefined :: Int))

-- probing laziness: undefined shouldn't be eval'd here:
print (head (1 : undefined))
```
