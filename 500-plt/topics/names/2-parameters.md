# Parameters

It is not clear whether parameters and variables are always the same thing, or whether one includes the other. Here, we consider that parameters include variables, i.e. that parameters are somehow more general.

In a simple assignment `x = 5` - which is called a *definition*, since we are defining what `x` means - the name `x` is usually called a *variable*. A variable is generally something that varies, but the amount of permitted varying is often restricted by a scope.

The *scope* usually determines the part of the overall program's code from which a certain name is visible/accessible. But the scope should be considered very broadly as something that delineates the "area of influence" of a name, and is involved in determining whether we call a name a variable or a constant.

A *binding* is an association between a name and a value object, a *name-value pair*. A simple binding is the assignment, x = 5, where we associate the name `x` with the value 5. When the compiler later compliles the program, it will encounter the name `x` and will have no immediate idea what it stands for. A name, like `x`, will have to be *resolved*, which is the *lookup process*. Usually, the compiler will first make a pass recording the encountered names in its symbols table, which is basically a map of key-value (i.e. name-value) pairs. Later, it will try to resolve a name by looking it up in the symbols table. There it will find that `x` stands for the value 5; failing to resolve a name is a hard error.

>But what is the actual difference between variables and constants?

A *constant* should be a named value; that is, a name given to a certain value because it is easier to refer to that value by the name then it is by the literal value itself. The number `π` is an example of this. Even if we wanted, we couldn't possibly refer to it by value (since it is infinite). In fact, we can only refer to irrational values such as π by their name - even the name was given to their description (and not to their literal value).

A *literal value* is a value like 5, so something that is finite and relitively short. In fact, it could be said that "5" is also a name given to the abstract number five in its decimal representation. Like π, 5 is a **true constant**, i.e. a binding between a name and value never changes, no matter the scope. Whether the scope is a code block, or the current module, or the current program, or the current language, or the current whatever, 5 always stands for the same thing. As do the others Hindu-Arabic symbols, and the special numbers like `π`, `e`, etc. This is one aspect of what is a constant. Under a more relativistic interpretation, constants are allowed to change - we still call some name a constant even if it is not always the same. There may be program wide constants, or module-wide constants, or constants bound to even smaller scopes.

It is similar for variables. What is variable and what is a constant really depends on the scope in question. We consider the names tied to bigger scopes (universe, language, program, module) as constants, and the names tied to smalled scopes (module, function, code block, single expression) as variables.
