# Currying

https://en.wikipedia.org/wiki/Currying

Currying is the technique of converting a polyadic function into a "sequence" of unary functions.

More precisely, and in the case of a ternary function `f`: instead of taking all 3 args at once, the curryied function `f` takes one at a time; the initial call to `f` supplies the first arg; the arg gets "locked" and a new anonymous function is returned; its job is to procure the second arg, at which time another anonymous function is returned, the last one in the sequence. That final function will get the third arg, and then, with all 3 args collected, the original computation can be performed.

Symbolically, a binary function `(a,b) -> c` becomes `a -> b -> c` in the curryied form. The reverse process, `uncurry`, converts a curryied function into a form that takes all args as a tuple.

`(a, b) -> c` <=> `a -> b -> c`

`(a, b, c) -> d` <=> `a -> b -> c -> d`




## Currying in FPL

In Haskell, currying is done automatically, the so-called auto-currying.




## Currying in math



## Currying in JS

Basically, instead of taking all args at once, currying allows functions to take one arg at a time, thereby encouraging partial application and thus specialization of functions.

```js
// binary
function add(x,y) {
    return x + y
}

// curryied binary
function add(x) {
    return function(y) {
        return x + y
    }
}

// curryied binary: calling it with 1 arg
succ = add(1)
// equivalent to:
succ = function(y) {
    return 1 + y
}
```


PLs with "heavy" and explicit syntax, denote a nullary function call by parenthesis, `f()`, and the call to a polyadic function by comma-separated arg-list in the parenthesis, `f(1,2,4)`. Usually, the comma-separated arg-list is a special language construct and not a first-class value (if it were a first-class value, it's be probably called a tuple); the arg-list is mirrored in a function definition by a (formal) paramater-list, which is also a quasi list construct but containing the comma-separated list of identifiers.

For example, in JavaScript, given binary function `sum`, that declares two formal params using the param-list,`(x,y)`, is called with two args by using the arg-list, `(a,b)`, as `sum(21,33)`.

```js
// sum as a binary function
const sum = (x,y) => x + y
// called as
r10 = sum(2,3) // 2 + 3 = 5
// if not supplied explicitly, the second arg becomes "undefined" implicitly
r11 = sum(3) // 3 + undefined = NaN
// if more args are given, they are ignored (can be recovered)
r12 = sum(2,3,4) // 2 + 3 = 5

// currying the sum function
const sum = x => y => x + y
// can be called with 2 args but with a diff syntax
r2 = sum(2)(3)
// or even
r3 = sum (2) (3)
// but when called with a single arg, it locks that arg
const succ = sum(1)
// and returns a new fn, thus allowing fn specialization
r2 = succ(42)
```
