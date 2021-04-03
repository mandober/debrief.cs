# Data

## Qualitative and Quantitative


At the highest level, two kinds of data exist, two main flavors
- quantitative
- qualitative

Quantitative data deals with numbers and things you can measure objectively: dimensions such as height, width, and length. Temperature and humidity. Prices. Area and volume.

Qualitative data deals with characteristics and descriptors that can't be easily measured, but can be observed subjectively, such as smells, tastes, textures, attractiveness, and color. 

Broadly speaking, when you measure something and give it a number value, you create quantitative data. When you classify or judge something, you create qualitative data. So far, so good. But this is just the highest level of data: there are also different types of quantitative and qualitative data.

---


Getting the data into a computer and storing it there has to deal with a lot of issues. The main problem is representation - how to represent the data in a computer so that it can be efficiently stored and manipulated by the machine, while at the same time addressing human concerns (in terms of reasoning about the data representation and making interpretation and interaction with the data sufficiently comfortable).

In the end, all that data is in a computer is but a stream of bits, whether stored for prolonged persistance, or flowing through the memory hierarchy of a computer system (main memory, various levels of caches and registers in a CPU).



---

## Data in FPL

Generally, in FP, data is defined by a set of *constructors* (introduction) and *selectors* (elimination), together with a set of conditions that these functions must satisfy in order to qualify as the valid representation.


However, this idea is very difficult to formulate rigorously. 
There are two approaches to giving such a formulation:

* An approach pioneered by C.A.R. Hoare is known as the method of **abstract models**. In general, abstract models define new kinds of data objects in terms of previously defined types of data objects. Assertions about data objects can therefore be checked by reducing them to assertions about previously defined data objects.

* Another approach is called **algebraic specification**. It regards the functions (procedures) as elements of an abstract algebraic system whose behavior is specified by axioms that correspond to the conditions, and uses the techniques of abstract algebra to check assertions about data objects.

This view of *data = procedures + conditions* can serve to define not only high-level data objects, but lower-level objects as well.

Considering the notion of a pair, we need not say what a pair actually is, only that the language supplied functions (`cons`, `car`, `cdr`) for manipulating pairs. The only thing we need to know about these 3 operations is that if we glue two objects together using `cons` we can retrieve each using `car` and `cdr`. That is, the operations satisfy the condition that, for any objects `x` and `y`, if `z = cons x y` then `car z = x` and `cdr z = y`.

∀xy. (z = cons x y) -> (car z = x  ⋀  cdr z = y)


In Haskell, this can be expressed as:

```hs
-- pair constructor
pair :: a -> b -> (a,b)
pair a b = (a,b)

-- selector: get pair's first component
fst :: (a,b) -> a
fst (a,b) = a

-- selector: get pair's second component
snd :: (a,b) -> a
fst (a,b) = b

-- such that
pair x y = pair (fst $ pair x y) (snd $ pair x y)
-- that is
= (x, y) = (fst (pair x y), snd (pair x y))
```

### Pair as a function

This means that any triple of that satisfies these conditions can be used as a pair representation. To the point, pairs can be implemented using procedures.

```s
(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Argument not 0 or 1 -- CONS" m))))
  dispatch)

(define (car z) (z 0))

(define (cdr z) (z 1))
```

This impl in Lisp, defines `cons` by first defining a nested procedure called `dispatch` that does analysis of the arg: if 0 returns the first component, if 1 returns the second component of a pair, otherwise it fails with an error message; after the definition, the `dispatch` procedure is actually invoked.

Better impl of pairs using procedures and lambdas:

```s
(define (cons a b)
  (lambda (s) (s a b)))

(define (car p)
  (p (lambda (a b) a)))

(define (cdr p)
  (p (lambda (a b) b)))
```


In Haskell, pairs can be expressed using nothing but functions. By partially applying only the first two args (which are first and second components of a pair), a ternary function represents, *is*, a pair. Its third arg is a selector that will (when supplied later) select and return one of the components.

Instead of applying a pair (which is a function) to a selector arg explicitly, we'll reverse this by defining the functions `first` and `second`, so that we can apply one of them to a pair (looks more natural this way but, internally, it does the same thing i.e. applies a pair to a selector).

```hs
-- pair constructor (partially applied binary function)
cons :: a -> b -> (a -> b -> ab) -> ab
cons a b = \s -> s a b

-- selector: get pair's first component
first :: ((a -> b -> a) -> ab) -> ab
first p = p (\x y -> a)

-- selector: get pair's second component
second :: ((a -> b -> b) -> ab) -> ab
second p = p (\x y -> y)
```
