# Type classes

**apply**
- the first param is a single value `x` (of type `a`), denoted: `x :: a`
- the second param is a function `f` of type `(a -> b)`, denoted: `f :: a -> b`; read as "the function `f` takes `a` to `b`" or "takes a value of type `a` and returns a value of type `b`", where `a` and `b` *are not necessaraly different types* (but they can be). The signature `g :: a -> a` means the input and output values (of `g`) *are* the same type.
- the return value of `apply` is of type `b`
- all together now, the sig is: `apply :: a -> (a -> b) -> b`
- so the function `apply` applies `f::a -> b` to `x::a`, as `f(x)=y`, and returns the output `y::b`.

**map**
- map is like the `apply` but for boxed values
- the 1st param is a boxed (`m`) value `x` of the boxed type `ma`: `mx :: ma`. Therefore, the notation `x :: a` means a plain value `x` of (generic but plain) type `a`. The notation `mx :: ma` means the `x` is boxed so it has the `m-` prefix both in var and type names, `mx :: ma`.
- the 2nd param is the same function as before, `f :: a -> b`
- the returned value is a boxed value, `my :: mb`, which is similar to before only now it is boxed.
- the sig: `map :: ma -> (a -> b) -> mb`

```
apply ::  a -> (a -> b) ->  b
map   :: ma -> (a -> b) -> mb
```

So `map` knows how to work with boxes because its signature shows that it needs to apply the function to the *unboxed value*. `map` gets the boxed value of type `ma` and a function that is not box-aware but just takes an `a` to `b`.

So map itself has to unbox the `ma` type into the appropriate-for-function-to-consume, type `a`. This is usully accomplished with pattern matching that has two branches depending on the existance of value inside the box. (yes, we actually work with boxes, not knowing whether they actually contain something at all; rarely there is an opportunity to explicitly put a value in a box). So, if there is a value inside the box, apply the function; if there isn't, then don't - either way, the map returns a box so who's to know what really happend. It's easy for map to just forward the box if there's nothing inside, but if there is, by applying the function to the value, the output value (which is a plain value) is returned, and map has to return the box. This means map must also know how to box a value; so map knows both, to box and unbox values.

Now, if we assume that the input (i.e. first param) and output is always a boxed value, we have the second argument (a function) to engage in permutations - because functions are values, they may also come in boxes.

The `map` function is actually a method on the type class (which has some similarity to interfaces) called *functor*. The other important method is called `unit` and it *lifts* the value (into a box) i.e. it boxes a plain value.

Taking the "template" signature, 
`hifi :: ma -> ??? -> mb`, 
we can do permutations over the second param (the function) to generate the other candidates.

Here are the nominees:
```
ma ->  ( a ->  b) -> mb     fmap
ma ->  ( a -> mb) -> mb     bind
ma ->  (ma ->  b) -> mb
ma ->  (ma -> mb) -> mb
ma -> m( a ->  b) -> mb     ap
ma -> m( a -> mb) -> mb
ma -> m(ma ->  b) -> mb
ma -> m(ma -> mb) -> mb
```

And here are the winners:

mx ->     ???     -> my | operator | method | type class
------------------------|----------|--------|-----------
ma ->  ( a ->  b) -> mb | <$>      | fmap   | functor
ma -> m( a ->  b) -> mb | <*>      | ap     | applicative
ma ->  ( a -> mb) -> mb | >>=      | bind   | monad




