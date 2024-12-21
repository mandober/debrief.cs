# Challenges in designing overloading mechanisms

Many overloading mechanisms primarily focus on the overloading of arithmetic operators and equality (probably because providing a separate symbol for each distinct type, of the same operation, seems suboptimal).

We will use these special cases 
to illustrate some of the challenges 
in designing a mechanism to support overloading

Suppose we have a language that overloads `+` and `*`, providing versions that work over `Int` and `Float`. Now, consider the `double` function, written in terms of the overloaded addition operation:

```js
double x = x + x
```

A naive interpretation would explain the meaning of the `double` by saying that `double` is also overloaded (like `+` is), so it yields the definitions of two functions of types: `Int -> Int -> Int` and `Float -> Float -> Float`. This might seem reasonable until we consider this function

```js
doubles (x,y,z) = (double x, double y, double z)
```

Under this scheme, the `doubles` would give rise to 8 (2³) different versions! (since each of the 3 args can be one of the 2 types, i.e. an Int or Float). This approach exponentially blows off in the number of *function instances*.

So, in the **naive approach to implementing overloading**, we'd take a generic (overloaded) function as a template and generate as many instances based on it but with concrete types as possible. The problem with this sapproach is that it has an exponential growth in the number of generated function instances (even when overloading in terms of only two base types).

* Sure, but generating all the possible instances just for kicks is just unreasonable. We can't we do it more reasonably by examining the call sites and only generating the absolutely necessary instances. It seems that in the wild, there are not so many calls (at different types) to the same overloaded function.


1. Monomorphisation
This approach is called **monomorphisation**, and it may result in some *code bloat* due to all the different *specializations* of the same "template" function. On the other hand, each instance is a highly specilized version of the generic function, so it can be more efficiently compiled into machine code (compared to a generic version).


2. SML approach
The approach adopted in the Standard ML was to allow overloading of only the fundamental operations, but not of functions defined in terms of them.

Instead, the language specifies one of the possible versions as the meaning of the function. For example, SML gives preference to the type `int` over `real`, so the type (and implementation) of the function `double` is `int -> int`.

If the programmer wanted to define `double` over floats, they would have to define a separate, "disconnected" function, and give it a different name.

This approach is unsatisfactory because it violates a general principle of language design: that compiler should have the ability to define language features that are out of reach for the mortal users.


>In addition, a general principle of language design is to avoid special cases, so designs that treat equality and arithmetic operators specially are considered less good than designs that allow any kind of operation to be overloaded.

Type Classes are a language mechanism in Haskell designed to support general overloading in a principled way.

A key idea in the design is to generalize SML's *eqtypes* to user-defined collection of types, called a type class. Just as all eqtypes support equality, all members of a type class support a certain behaviour. Another advantage of type class design is that it is compatible with the type inference as used in Haskell.

We can parameterize a function like `quicksort` by the comparator function - instead of referring to the (overloaded) `<` operator, the quicksort can take the comparator function as an extra parameter.

```hs agda
(<) :: Eq a => a -> a -> Bool
-- this qs refers to the overloaded (<) operator
qs :: [a] -> [a]

-- but this version takes a comparator as a param (a -> a -> Bool)
qsort :: (a -> a -> Bool) -> [a] -> [a]
```

> Parameterizing like this, we can convert an overloaded function into a parametrically polymorphic one.

A function that refers to any overloaded name (operator or function) is itself also overloaded. To convert it into a parametrically polymorphic function, we can extract the overlaoded names as additional parameters. We can do this for each overloaded name, declaring as many additional params as there are overloaded names.

```hs
-- overloaded fn due to the overloaded operators (+) and (*)
over x = x * (x + x)

-- non-overloaded fn created by extracting the overloaded names as params
nover mul add x = x `mul` (x `add` x)

-- and we also need to revise the call sites:
a = nover (  intMul,   intAdd) 10
b = nover (floatMul, floatAdd) 2.71
```

Of course, to get the same fn as above, we need to pass in the corresponding (more primitive) versions of the (+) and (*) operators. Also, we need to revise all call sites to pass in all the extra arguments.

>We can view this extra parameter as a *dictionary* that provides the relevant implementations for the overloaded name.

To better document the fact that these extra arguments comprise a dictionary for numeric operations, we can introduce a type for the dictionary and (accessor) functions to extract a particular overloaded name from a given dictionary.

```hs
-- Dict type
data NumDict a = NumDict
  { getMul :: (a -> a -> a)
  , getAdd :: (a -> a -> a)
  }

-- rewriting the 'over' into
-- Dictionary-passing style

poly :: NumDict a -> a -> a
poly dict x =
  let mul = getMul dict
      add = getAdd dict
  in  x `mul` (x `add` x)
```

The code follows a precise structure: it uses the accessor to create the local bindings for the overloaded names (functions) by extracting the corresponding bindings from the dictionary.

We also need to create a dictionary for each type that supports these numeric operations.

```hs
intDict   = NumDict (+) (*)  -- for demo only, these
floatDict = NumDict (+) (**) -- would be primitive ops
```

Finally, we can rewrite each call to the overloaded poly function to take the appropriate dictionary as an argument:

```hs
-- Passing dictionaries
y = poly   intDict 10
z = poly floatDict 2.71
```

## Compiling type classes

Using the information provided by type class declarations, instance declarations, and qualified types, the Haskell compiler automates the rewriting process (we went through by hand above).

* From a type class declaration, the Haskell compiler generates a new dictionary type and corresponding accessor functions.
* From a type class instance declaration, the Haskell compiler generates a dictionary value.
* For each function definition with a qualified type, the Haskell compiler rewrites the function definition to take a dictionary parameter.
* For each call to a function with a qualified type the Haskell compiler inserts the appropriate dictionary as an extra argument.

## Summary

Overloading is a form of polymorphism in which the same program identifier is allowed to have multiple implementations. Which implementation a given occurrence of the identifier refers to is determined by the static type of the identifier. Overloading is particularly important for equality operators and numeric operations.

Early designs for overloading mechanisms restricted the collection of symbols that could be overloaded and prevented users from defining their own overloaded functions.

Type classes in Haskell are a principled language featured designed to support overloading. A type class declaration allows the programmer to introduce a named collection of overloaded function names and specifies the types of these functions.

An instance declaration allows the programmer to specify how a particular type belongs to a named type class by giving definitions for the functions declared in the type class. Qualified types described overloaded functions. The qualifier concisely describes the type classes that are used in the function.

Type classes are translated away during compilation. Each type class declaration is converted into the type of method dictionary associated with the class. Each instance declaration is translated to a dictionary. Functions with qualified types are converted to ordinary functions that take an extra dictionary parameter as an argument. References to overloaded functions are converted to code that looks up the appropriate implementation within the method dictionary.

Type classes solve a variety of problems related to overloading. They provide concise types to describe overloaded functions, so there is no exponential blow-up in the number of versions of an overloaded function. They allow users to define functions using overloaded operations, such as the double function. They allow users to introduce new collections of overloaded functions, so equality and arithmetic operators are not privileged. A key idea in the design is to generalize Standard MLs eqtypes to user-defined collections of types. Just as all eqtypes support equality, all members of a Haskell type class support some family of operations.

Additional benefits of the type class design is that it fits smoothly in a type inference framework and can be generalized to allow overloading on type constructors as well as types.

The difference between parametric polymorphism and overloading is that parametric polymorphism allows one algorithm to be given many types, whereas overloading involves different algorithms.

For example, the function + is overloaded in many languages. In an expression adding two integers, the integer addition algorithm is used. In adding two floating-point numbers, a completely different algorithm is used for computing the sum.

Type classes are differ from classes in object-oriented languages despite the similarity in terminology. A key difference is in resolving the code to which a method name refers. In type classes, the code to run is determined statically, while in objectoriented languages, the code is determined dynamically.
