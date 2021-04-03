# Functions as data

Functions as data (FAD) wrt to LC
- data: values like (related) data pieces/parts
- FDS: pair, list, list², map, set
- storing data in a function using partially applied HOFs
- HOFs because one main assembler fn that takes data and handlers
- partial because supplying data but leave out handlers *is* FDS
- data-handler: a fn that *later* retrieves (parts of) data
- *selector* (data-handler): get 1st or 2nd component of a pair

Single value
- storing a single value using `const` fn
- retrieve the value later using any arg

Pair
- pair ctor takes left and right component values and a selector function
- `first` gets the 1st pair component
- `second` gets the 2nd pair component
- pair as the cons cell to buld lists



## Introlong

With all data structures readily available, imperative programming doesn't really inspire one to investigate the potential of using functions as data structure, or more precisely, as data storage, even if a language has first-class support for functions (like, e.g. JS does). On the other hand, functional programming really focuses on the function and it soon becomes clear that it can really be used as a vehicle for everything.

Using functions to store data was, of course, investigate much before modern FPL, like Haskell, came around. As always, it started with the lambda calculus, the blank slate of an environment where nothing is preset except the form how a new function definition looks like, and how the functions are applied. Of course, in order to apply a function, you need to define one; while at it, you also need to define another to have something to apply the first one to (although, you may also try applying it to itself).

The blank environment not only means you have to first define a bunch of functions, but it also means that you are to give meaning to each one, to decide what each represents. The set of functions together with their intended semantics constitutes what is called an encoding in lambda calculus. Naturally, the most well-known encodings were proposed by Church himself. Along Church Booleans, Church numerals (encoding of natural and other numbers), Church arithmetic operations, is also the Church pair which serves as the basic building block (it's similar to the cons cell) for constructing lists in lambda calculus.

The normal assumption when using lambda calculus is that nothing is given in advance; the only things available are the functions you've explicitly defined yourself. However, since an exploration in lambda calculus is far more confortably conducted using a proper language then on paper, maintaining this constraint becomes very difficult (just repeat: 42 is not a Church numeral. If something looks elegant, chances are you're using the built-in syntax of the host language).


## Storing values

The first realization, when it comes to using functions to hold data, is that a fully applied function can't hold shit. Partial application is the only way to have a function hold on to some data, thereby resambling some kind of state.

To store a single value into a function, we should start our consideration from the most simple functions in terms of arity. A unary function, for example, `id`, just spits the argument right back out; it cannot hold its liq...argument down. There are two paths you can go by from here: move on to binary functions, or consider a more complicated unary function. Maybe we could have a function that will take the arg but not return it immediately; it could wrap the arg in a function and return that instead, so only when we *later* call the returned function, we get the arg back.

Yes, this was a trick, we're already on the binary path. FP doesn't draw precise lines between function arities on the acoount that it's easy to convert between the forms, but also because, in FP, the function is not called but applied. The function is the active entity and it is applied to the "passive" arguments. More to the point, the syntax for function application is also the reason why the arity issue is relaxed. Namely, unlike the traditional way that requires a pair of parenthesis, even empty, to denote a function call, the FP way denotes the application of a function to its args by space. That is, in a function application, a space separates the function's identifier from its args, but it's also the delimiter used to separate the args themselves.

The traditional way: `f(x,y)`, FP way: `f x y`. Even a nullary function requires parenthesis: `f()`; in FP: `f`. The problem with the traditional denotation is that it quickly gets overcrowded with symbols which have no purpose, not really. It originated in math, but math doesn't particularly use the constructions that make the syntax extremelly noisy; but the same syntax got inherited into many PLs where other language entities also come into play. It was soon evident that, e.g. an array access expression may return a function, so it was desirable to immediately call it (without first assigning it to an intermediate identifier), `arr[x](y,z)`, the result of which may also return a function, and similar, `arr[x](y,z)(z,w)`.

One particularly construct, that actually became prominent due to the increased interest in FP, and that made the traditional syntax show its messy face, was *currying*; e.g. uncurryied function call, `f(x,y,z)`, in the curryied form became `f(x)(y)(z)`. Both of these calls look like `f x y z` in FP, which also sports auto-currying, meaning no special effort or extra libraries need be involved (as opposed to JS). It was also one of the reason everything about FP looked so confusing in the beginning.


trad.         | fp          | note
--------------|-------------|---------------------------------------------
f()           | f           | call a nullary function
f(x)          | f x         | call a unary   function
f(x,y)        | f x y       | call a binary  function
f(x,y,z)      | f x y z     | call a ternary function
--------------|-------------|---------------------------------------------
f(x)(y)       | f x y       | call returned (unary) fn: g=f(x), then g(y)
f(x,y)(z)     | f x y z     | call returned (unary) fn
f(x)(y,z)     | f x y z     | call returned (binary) fn
f(x)(y)(z)    | f x y z     | 


## Storing one value

So, storing data in functions? (Man...gofocusyourself!)

* partial application is key
* arity > 1 (cannot partially apply unary or nullary function. hmm, or can you? foc'us!)

Considering binary functions, the next candidate to store a single value, is `const` i.e. `λa.λb.a`. It is a "constant" function in the sense that it always returns the same value, but first you have to provide that value. Looking at this function with imperative eyes, the sensible thing would be to call it with both args passed in at once; that urge should be block henceforth because, in FP, partial application should be considered first. By supplying only a single arg, you can bind the returned (unary) function to an identifier thereby completing the task of storing a single value in a function and being able to retrieve it later. To retrieve it, it can be called with *any* arg; and due to this this arg need not even be bound - the implementation can use the ignore-this-arg pattern that "registers" that an arg is supplied but doesn't even bind it (to "_"); instead the arg is just discarded.

There are several syntactic forms for function definition in Haskell, one of which, mutatis mutandis, is the form of lambda abstraction from lambda calculus. And those things that needed to be changed were the lambda letter that had lost the "leg", `\`, and the dot became a right arrow (`->`).

```cxx
# nominal form
λa.λb.a

# shorthand form
λab.a
```

```hs
const :: a -> b -> a
const a b = a
```

...back to the topic

* `const` as a single value storage
* (partially applied) `const` can be used to store a single value.
* retrieve the value by applying the partial const to anything


## Storing two values
