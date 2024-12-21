# Closures

A **closure** is a record storing the function's code (function's body) along with its environment. Closures are often realized as functions - when functions and closures are syntactically indistinguishable, they are called *implicit closures*. Some languages, however, only support *explicit closures*, which use special syntax (usually extending the syntax of function definitions or declarations) to allow the user to explicitly list the names of variables whose values are to be captured. An *environment* is a mapping that associates names of free variables, referenced in the function's body, with the value they had at the time the function/closure was defined (not the value they have when the function/closure is executed).

While closures appear as functions in the surface syntax, they are usually implemented as *records* (objects, dictionaries, maps) that associate captured variables' names (as keys) to the values they had at the time the function/closure was defined. When a function/closure is called, the values of free varaibles in its body are looked up in this environment.

So a closure is a function together with an associative array which it uses to record its environment (values of variables from its environment).

## Closures In JS

In JS, functions are first-class values (can be passed around and returned from functions like other values).

Operationally, JS functions are closures - they are inseperable, rolled into a single language construct.

; that is, 
the function's code (body) along with the environment (function pointers cannot keep track of an environment by themselves).

As such, they are implemented (like everything else) as objects (key-value dictionary).




Before ES5, functions were the only means of creating nested scope - and since a function may contain other functions, a scope could contain other scopes, following the nesting of functions.

The access to free variables is inside-out: an inner scope can access identifiers available in the outer scopes, all the way up to the global scope. Variable in the closest scope (from the persepective of the "active" function) shadows the variables with the same name from the outer scopes, called *name shadowing*.

A function's own variables, declared as *formal parameters*, are called *bound variables* and they bind the arguments when the function is applied.

A function also has access to *free variables*, which are variables from the outer scopes, bound by the enclosing functions or predefined in the environment.

The set of all accessible identifiers, from the aspect of a particular scope, is called an *environment*.

In a situation where a parent function returns a child function that is declared within the parent - the child function may refer to any identifier available in its environment. Typically, a child function could refer to free variables that are, in fact, bound by its parent function; and if the child function is just a helper subroutine within the larger routine, then nothing unordinary happens. However, if the parent returns the child function, then the inner scope escapes its "lexical jail"! During this daring escape, the child function captures the environment (the values of free variables it referred to during conception). Having returned, the parent function, along with its bound (local) variables is destroyed, yet the child function retains connection to the dead.

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
