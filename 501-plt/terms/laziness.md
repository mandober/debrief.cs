# Laziness

Understand laziness with examples in Scala, JavaScript, Swift and Racket
http://matt.might.net/articles/implementing-laziness/

Most languages are strict languages: they compute the value of an expression immediately. Some languages like Haskell are lazy: every expression's evaluation waits for its (first) use. Other languages (like Scala) are strict by default, but lazy if explicitly specified for given variables or parameters.

```scala
val x = { print ("foo") ; 10 }
print ("bar")
print (x)
// prints foo, then bar, then 10

lazy val x = { print ("foo") ; 10 }
print ("bar")
print (x)
// prints bar, then foo, then 10
// since it delays the computation of x until it’s actually needed.

lazy val x = { print ("foo") ; 10 }
print ("bar")
print (x)
print (x)
// now prints bar, then foo, then 10, then 10.
// It didn't print foo twice, because lazy kw cached the result
```

Laziness is made of lambdas, i.e. anonymous functions closed over their lexical scope.


```js
var x = (console.log("one"), 'two')
console.log("three")
console.log(x, '\n')
// one three two

// to make x lazy we can wrap its definition in a thunk
var x = () => (console.log("one"), 'two')
console.log("three")
console.log(x())
// three one two

// another call to x() prints "two" again
console.log(x())
// one two

// In scala "two" is printed just once due to being cached

console.log('\n\n')
```


## by-name vs by-need

Interpretations of laziness:

**call-by-name**   
In the by-name interpretation, the computation of a value is delayed until necessary, and the computation is repeated each time it is used.

**call-by-need**   
In the by-need interpretation, the computation of a value is delayed until necessary, and then the result is cached for subsequent uses.

In Scala, the `lazy` keyword provides by-need laziness. Simply wrapping values in thunks provides by-name laziness. To get by-need laziness in JS, we can cache thunk's result.


```js
const memoization = (f, cache = null) =>
    () => cache || (cache = f())
    // () => cache ? cache : (cache = f())
;

var x = memoization(() => (console.log("one"), 'two'))
console.log("three")
console.log(x())
// three one two

console.log('\n\n')


const memoized = (f, cache = {}) =>
    x =>
        cache[JSON.stringify(x)]
    || (cache[JSON.stringify(x)] = f(x))
;

var x = memoized(() => (console.log("one"), 'two'))
console.log("three")
console.log(x())
// three one two
```


## Implementing laziness with eta-expansion

Implementing laziness in a language like JavaScript requires modifying both the point of definition and the point of use. The exception is when the computation being suspended already produces a function, in which case eta-expansion at the point of definition can achieve laziness.

In **eta-expansion**, an expression that produces/returns a function is wrapped in a lambda that passes its arguments directly to the expression. Consider an expression, `exp`, that evaluates to a unary function. 

```js
x => exp(x)

function (x) { return ( exp )(x) }
```

In JS, this function behaves identically to `exp` (in the absence of side effects in `exp` and assuming `exp` terminates).

Eta-expansion plays a key role in the derivation of a Y combinator that works in strict languages like JS.

## Lazy parameters
