# Names

- name
- label
- identifier
- identifier vs name
- variable
- language entities (variable, function, data structure, class, …)
- value
- value object
- binding, name binding


A **name** is an *identifier* used to identify *language entities*. We might as well said: a name, or an identifier, is used to identify language entities. The terms "name", "label" and "identifier" are mostly as synonyms.

**Language entities** are things like variables, functions, data structures, classes, objects, etc; any *language item* that has a name or that can be named.

However, there is a sense in which **names and identifiers** are not exactly the same: an identifier is somehow more primitive - in fact, it is an essential property of a language entity.

If we focus on variables, for example: a variable has a name, and that name identifies that variable, i.e. it acts as an identifier. But the name is not an essentail property of a variable, while an identifier is (well, you know what I mean). An identifier is like an immutable tag that uniquely identifies a variable, while a name is more of an ephemeral property. After all, names are arbitrary: a variable `x` could have been named `y` as well. Moreover, there are expressions that contain two vars with the same name that are nevertheless distinct. Perhaps, we can say that while a concrete name is not an essential property, it is still important that there is a name (some name, any name). It seems hard to separate the identifier of a variable from the name of that variable, yet intuitivelly they should differ.

>A *variable* is a language entity that *binds* a *value object*.


**Names** are usually associated with variables - variables have names. These names are alphanumeric or symbolic labels used to identify the language items (variables, functions, data structures and other values), which is the reason they are also called *identifiers*.

An **name** is usually allowed to consist of alphanumeric characters - the regex for valid identifiers is well-know, `[_\w][_\w\d]*`. In many PLs, an identifier must start with a letter (some PLs restrict the case of the letter) or underscore, which may be followed by letters, numbers and underscores. However, the **name of identifiers** is usually far less restricted, and symbolic names are allowed; e.g. `+`, `-`, `.`, etc.

Variables have names as do other language items, but identifiers also have names.

>So it can be said that identifers also have names.


Operationally, a *name* in the source code represents a memory address where a value is located. When the code is compiled, the names are gone and only memory addresses remain.


Of course, distinguishing between a name and an identifier is a problem - even though a *name* is maybe not an essential property of a var, it still can be used to *identify the variable*. In fact, how would we otherwise identify a variable if it lacked a name?


Variables (at least) may be identified in other ways, one of which is using the *deBruijn indices*, which replace names with natural numbers. DeBruijn indices are particularly used in *lambda calculus*:
- I,  `λx.x` is `λ. 0`
- K,  `λx.λy.x` is `λ. λ. 1`
- KI, `λx.λy.x` is `λ. λ. 0`
- S,  `λg.λf.λx.gx(fx)` is `λ. λ. λ. 2 0 (1 0)`



A name must *resolve* to an appropriate value object, otherwise an error is issued.

One of the simplest constucts in PLs is *declaring* a new name and binding to it a simple value of some base type like `Int`, e.g. `x = 5`.

*Base values* are non-compound values, provided as primitives by a PL, which usually just exposes the machine primitive values: primarily integers or different sizes and signedness; floating point numbers of two sizes, 32 and 64-bit; characters, which are basically just integers interpreted as Unicode character points.

Some PL consider `x = 5` to be a *statement*, i.e. something that does not return a value, or, at least, no significant value - in which case the actual returned value is usually a value of a unit type, e.g. `undefined` in JS. (This presumes the TypeScript convention that `undefined` is a type which has a single value, also denoted `undefined`). In any case - whether literally nothing is returned or what is returned represents nothing - makes the *assignment* a statement. Since a statement returns no value, they are exectuted for their side effects - in case of assignment, the side effect is the change of a memory location.

Contrasted to statements are *expressions* which always return a value. PLs that consider the assignment an expression, may also allow chaining of assignment expressions, `x = y = 5`. This is interpreted as, first, declaring the name `y`, then assigning the value 5 to `y`, which results (returns) the value 5 back, which is then also assigned to a newly declared name `x`.

In fact, the form of the assignment may be different depending on whether the name is fresh (just declared) or whether it is actually overwriting a previous assignment. Declaring a fresh name and immediatly assigning a value to it, is called a *definition*. Some languages allow splitting a definition in two parts: declaration and initialization. A *declaration* then means only the introduction of a new name, without assigning anything to it. The assignment that happens later to a such declared name is called *initialization*.
