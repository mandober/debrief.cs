# Difference lists

Difference list is one of the functions-as-data use cases that represents a list `xs` as the partially applied function `(xs++)`. Then (.) becomes (++) and `id` becomes `[]` (in fact this works for any *monoid* or *category*). Since the function composition takes constant time, difference list gives us an efficient way to build up the final list by concatenating many small lists.

Difference list form a monoid with (++) as `mappend` and [] as `mempty`.

```hs
xs = xs ++ [] = (++) xs [] = (xs++) [] = (++[]) xs

ws' = (xs++) . (ys++) . (zs++)
ws = ws' []

ws = ((xs++) . (ys++) . (zs++)) []
ws =  (xs++) $ (ys++) $ (zs++)  []
```




















## Refs

Using Difference Lists
https://logicaltypes.blogspot.com/2008/08/using-difference-lists.html

keepEquals with Difference Lists
https://logicaltypes.blogspot.com/2014/06/keepequals-with-difference-lists.html

24 Days of Hackage: dlist
https://ocharles.org.uk/blog/posts/2012-12-14-24-days-of-hackage-dlist.html

Difference lists as functions
https://wiki.haskell.org/Difference_list
