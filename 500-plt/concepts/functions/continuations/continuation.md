# Continuations



## Converting a function to CPS

https://www.youtube.com/watch?v=PHQNlyvF1f0&list=TLPQMjIwODIwMjIcenuhFrwzWA&index=16

```hs
-- | Direct style fn
fac n =                                 -- DS fn definition
  if n < 2
  then 1                                -- base case
  else n * fac (n - 1)                  -- rec case

-- Direct style call
show (fac 5)                            -- DS call
-- "120"

----------------------------------------------
-- | CPS fn
kfac n k =                              -- (2)
  if n < 2
  then k 1                              -- (3)
  else kfac (n - 1) (\v -> k (v * n))   -- (4)

-- CPS calls
kfac 5 show                             -- (1)
-- "120"
```

To convert a function from direct style into CPS, we first adjust the call site: since the `fac` in DS used `show` to show the result, in the call to a CPS function `kfac`, we adjust the call (1) to also pass in the continuation. A contituation is a *unary function* that will be applied to the result instead of letting the function return it. So here, the call is extended to also pass in the `show` fn as the continuation. So, the call now becomes `kfac 5 show`. Note that this is the η-contrated form (point-free); the η-expanded form (point-full) is `kfac 5 (\v -> show v)`, which more clearly denotes a unary continuation function (that accepts the would-be-returned result and transforms it further).

The next thing to change is the function definition - we need to add an extra formal parameter, by convention named `k` (2), that will bind the continuation supplied as a function argument.

Next, we need to adapt both base and recursive case to CPS, which is done by having the function (`kfac`) apply `k` to its result, instead of returning it to the caller (along with the control) as in the direct style.

The base case is easily adapted to CPS: we know that we must apply the continuation to the value that we'd otherwise directly return (in the direct style). So, intead of just `1`, the base case (3) branch becomes `k 1`.

Finally, we need to adjust the recursive case, which is the actual tricky bit.

The recursive branch in the direct style, `n * fac (n - 1)`, tells us that
1. First, the `fac` is called recursively (passing it `n - 1` as the arg) 
2. Only when that call returns are we able to finish the calculation, here, by multiplying the returned value by `n`.

To see this more clearly, we can break the rec-case expression to showcase the intermediate values:

```hs
fac n =
  if n < 2
  then 1
  else
    let v = fac (n - 1)
    in  n * v
```

For the CPS conversion, we know we cannot just write `n * v` because we need to apply the continuation to the result (instead of letting it return to the caller). And we also know the call to `kfac` (which is the `fac` fn fully conveted to CPS `kfac`) never returns because, in CPS, no function ever does. This means we also need to pass the continuation along with this call, so it knows what to do with the result: `kfac (n - 1) (\v -> k (v * n))`.

The last step may seem too abrupt: the rec-case begins with the function call like the one in the DS. Actually, the rec-case in DS was `n * fac (n - 1)`, but it is rewritten as `fac (n - 1) * n` for better emphasis (and to match the order of identifiers in the CPS varsion).

```hs
dsf n   = if n < 2 then   1 else dsf (n - 1)             * n   -- DS
cps n k = if n < 2 then k 1 else cps (n - 1) (\v -> k (v * n)) -- CPS η-exp
cps n k = if n < 2 then k 1 else cps (n - 1) (      k . (* n)) -- CPS η-contr
```

So, the rec-case in both styles begins by a recursive function call    

`fn (n - 1) …`

that passes the arg `n` decremented by one. 

In the direct style, the function will have to wait for this call top retrun so it can multiply it by `n`:

`fn (n - 1) * n`

That also means the DS function **must retain its stack**.   
In the CPS, thing begin the same

`fn (n - 1) …`

but the recursive function call **must be the only thing we do**: we must send the current computation state along with the call. That also means the CPS function **need not retain its stack.**

`fn (n - 1) (\v -> k (v * n))`

Once again, in the coda of the rec-call: 1) first introduce a lambda with a single param `v` to bind the return value, 2) then call the continuation `k` on the expession that consists of the variable `v` and the rest of the computation (which is, here, multiplication by `n`).

>... (\v -> k (v …))

e.g. `fac (n - 1) (\v -> k (v * n))`




## Description of continuations

https://www.youtube.com/watch?v=Ju3KKu_mthg&list=TLPQMTcwODIwMjKbuDuP0DMYeQ&index=2

```scheme
(define call/cc call-with-current-continuation)

(let (
  (my-val (call/cc
            (lambda (k)
              (display "yes\n")
              (k 5)
              (display "no\n") ) ) ) )
  (display my-val) )

(define my
  (call/cc
    (lambda (k)
      (display "yes\n")
      (k 5)
      (display "no\n") ) ) )

(* my = 5 now *)
```

This Scheme snippet declares a new variable `my-val`. 
It is defined through a call to the `call/cc` function. 
The `call/cc` is being passed the lambda as an arg.
The lambda function declares a param `k`,
and its body contains 
a call to `display`, which will be executed, 
then the current continuation, `k`, is invoked with the arg 5,
which is followed by another `display`, which won't be executed.
Having finished defining `my-val`, 
`my-val` is immediately invoked 
through `display my-val` expression.

When we called `call/cc`, it has took a snapshot of the stack.
The `call/cc` was applied to an inline lambda function, 
which declared the param `k` and inside its body 
we have applyied `k` to 5.

passing in `call/cc`'s continuation in the variable `k` 
so when we call the `k 5` it returns from `call/cc` the value 5 
resulting in the early exit.

After the call `k 5`, the execution break out of the lambda and the execution pointer reappears back at the place where we have defined the continuation (?).

In the end, `my-val` has a value 5.

## Refs

* Continuation - Wikipedia
https://en.wikipedia.org/wiki/Continuation

* Continuations: The Swiss Army Knife of Flow Control - YouTube
https://www.youtube.com/watch?v=Ju3KKu_mthg&list=TLPQMTcwODIwMjKbuDuP0DMYeQ&index=2

* Continuation - Wikipedia, the free encyclopedia
http://taggedwiki.zubiaga.org/new_content/aafba45abed40c535885ec860aba0a90

* The discoveries of continuations
https://homepages.inf.ed.ac.uk/wadler/papers/papers-we-love/reynolds-discoveries.pdf
