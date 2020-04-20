# Side Effects

https://en.wikipedia.org/wiki/Side_effect_(computer_science)

Albeit pure, pFPLs can still perform computations that have side effects, such as input-output, destructive updates, concurrency, exceptions, etc.

> The key in modelling stateful computation in purely functional terms is to pass around the state as an extra argument from function to function.

This is possible because expressions in a pFPL are referentially transparent, making variables immutable, always having the value with which they were initilazed. 

Purely functionally, a state that changes in time can be modelled as a sequence of immutable state values that are passed and returned from function to function.

---

## Modelling side-effects

The side-effects are all about statements and actions, they involve mutation and break referential transparency. On the other hand, FPL is about *pure* functions and expressions which begs the question how to deal with side-effects.

We could lift all actions into a container (context, structure) and *defer their execution* until we collect them all, or at least until we really need them.

An unevaluated action is still a *value*, it's an unrealized abstraction. An *effect* is something that will enable us to go from a side-effect to a value.












