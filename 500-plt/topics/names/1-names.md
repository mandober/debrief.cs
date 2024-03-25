# Names

A name is an identifier that binds a value object. A name must resolve to an appropriate value object, otherwise an error is issued.

One of the simplest constucts in PLs is declaring a new name and binding it a base value, something like `x = 5`.

*Base values* are non-compound values, provided as primitives by a PL, which usually just exposes the machine primitive values: primarily integers or different sizes and signedness; floating point numbers of two sizes, 32 and 64-bit; characters, which are basically just integers interpreted as Unicode character points.

Some PL consider `x = 5` to be a *statement*, i.e. something that does not return a value, or, at least, no significant value - in which case the actual returned value is usually a value of a unit type, e.g. `undefined` in JS. (This presumes the TypeScript convention that `undefined` is a type which has a single value, also denoted `undefined`). In any case - whether literally nothing is returned or what is returned represents nothing - makes the *assignment* a statement. Since a statement returns no value, they are exectuted for their side effects - in case of assignment, the side effect is the change of a memory location.

Contrasted to statements are *expressions* which always return a value. PLs that consider the assignment an expression, may also allow chaining of assignment expressions, `x = y = 5`. This is interpreted as, first, declaring the name `y`, then assigning the value 5 to `y`, which results (returns) the value 5 back, which is then also assigned to a newly declared name `x`.

In fact, the form of the assignment may be different depending on whether the name is fresh (just declared) or whether it is actually overwriting a previous assignment. Declaring a fresh name and immediatly assigning a value to it, is called a *definition*. Some languages allow splitting a definition in two parts: declaration and initialization. A *declaration* then means only the introduction of a new name, without assigning anything to it. The assignment that happens later to a such declared name is called *initialization*.
