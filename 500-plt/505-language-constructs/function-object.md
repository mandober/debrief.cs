# Function object

https://en.wikipedia.org/wiki/Function_object

A function object is a construct allowing an object to be invoked or called as if it were an ordinary function, usually with the same syntax (a function parameter that can also be a function). In some languages, particularly C++, function objects are often called functors (not related to the functional programming concept).

In C++, a *functionoid* is an object that has one major method, and a *functor* is a special case of a functionoid. They are similar to a function object, but not the same.

## Contents

- 1. Description
- 2. In C and C++
  - 2.1. Maintaining state
- 3. In C#
- 4. In D
- 5. In Eiffel
- 6. In Java
- 7. In JavaScript
- 8. In Julia
- 9. In Lisp and Scheme
- 10. In Objective-C
- 11. In Perl
- 12. In PHP
- 13. In PowerShell
- 14. In Python
- 15. In Ruby
- 16. Other meanings
- 17. See also
- 18. Notes
- 19. References
- 20. Further reading



## Description

A typical use of a function object is in writing *callback functions*. A callback in procedural languages, such as C, may be performed by using function pointers.

However it can be difficult or awkward to pass a state into or out of the callback function. This restriction also inhibits more dynamic behavior of the function. A function object solves those problems since the function is really a façade for a full object, carrying its own state.

Many modern (and some older) languages, e.g. C++, Eiffel, Groovy, Lisp, Smalltalk, Perl, PHP, Python, Ruby, Scala, and many others, support first-class function objects and may even make significant use of them.

Functional programming languages additionally support *closures*, i.e. first-class functions that can 'close over' variables in their surrounding environment at creation time. During compilation, a transformation known as *lambda lifting* converts the closures into function objects.
