# Closures


# Closures In JS

In JS, functions are first-class values, meaning, functions can be passed around and returned from functions just like any other value.

Before ES5, functions were the only means of creating new scope - and since a function can contain other functions, a scope could contain other scopes, following the nesting of functions.

The access to free variables flows from the inside out: an inner scope/function can access identifiers available in the outer scope(s), all the way to the global scope, but not the other way around.

A function has *bound variables*, which it bounds via formal parameters; but a function also has access to *free variables* i.e. to variables bound by the outer functions or predefined in the environment. The set of all accessible identifiers (i.e. names of variables, functions, classes, etc.), from the aspect of some scope/context, is called *its environment*.

So, in a situation where a parent function returns a child function that is declared within the parent - the child function may refer to any identifier available in its environment. Typically, a child function could refer to free variables that are, in fact, bound by its parent function; and if the child function is just a helper subroutine within the larger routine, then nothing unordinary happens.

However, if the parent returns the child function, then the inner scope escapes its "lexical jail"! During this daring escape, the child function captures the environment (the values of free variables it referred to during conception).

Having returned, the parent function, along with its bound (local) variables is destroyed, yet the child function retains connection to the dead.



---

The parent function, demarking the outer scope, returns the child function with its own, inner, scope. The inner scope, nested within the outer scope, can access its own, bound, variables as well as free variables i.e. variables possibly bound in the outer scope. The closure arises if the *inner scope escapes*, usually by returning a function that is/contains the inner scope. The main characteristic of a closure is its ability to later access the free variables, as if it didn't escape. its parents variables (these are the free variables from the child function's perspective), even though the parent function has returned (went out of scope). The child function closes over ("remembers", "captures") the environment variables at the time of its creation.


# Closures In PHP

In PHP an anonymous function has an option to "import" free variables from the environment using the `use` construct:

```php
$free = 42;

$fu = function ($a) use($free)
{
  return function ($b) use($a, $free)
  {
    return function ($c) use($a, $b, $free)
    {
      return $free + $a + $b + $c;
    };
  };
};
```

PHP v.7.4 has added upport for lambda functions which can create closure without the user explicitly stating which variables should be made available, but the compiler imports all the free variables that are referenced in the body. (...or was it something weird like that the compiler imports all free variables?).

```php
$foo = fn ($a) => fn ($b) => fn ($c, $d) => { $a + $b + $c + $d };
```

PHP's lambdas are far inferior to JS lambdas: parenthesis are optional, there may be only a single expression in the lambda's body (`return` is unavailable inside the body so no statements are possible - if a function grows beyond one expression it will have to be rewritten as an anon func).
