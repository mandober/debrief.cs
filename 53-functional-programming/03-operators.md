# Functions and Operators

A computation that can be expressed using a *binary operator* can also be expressed using a *binary function*.

Considering an imperative PL, like JS, the difference between such functions and operators is in their position: functions appear in the prefix position, while operators take the infix position. Also, the application of a binary  function requires embracing both arguments in parenthesis, while application of a binary operator does not.

In other languages, like Scheme, operators also appear in the prefix position, so there is practically no difference between them and functions save for the fact that operators use symbolic identifiers, while functions use alphabetic identifiers; and also becasue application of a function does not require a special form like embracing the arguments in parenthesis.

Technically, the function application operator is space, as a function is separated from its arguments with a space; and space is also used to separate multiple arguments (unlike a comma that is used in JS).

To apply the arguments one by one, a binary function is *curryied*, while a binary operator is *sectioned*.

For example, in Haskell:

```hs
-- sectioning an operator
map (*2) [1,2,3]
-- [2,4,6]

foldl (+) 0 [1,2,3]
-- 6

foldr ($) [] [1,2,3]

```



binary function
binary operator



A binary function is in prefix position, followed by, first the "left" argument and then the "right" argument 


Applying a binary function is similar to applying a binary operator

Revisiting function and operator application 
