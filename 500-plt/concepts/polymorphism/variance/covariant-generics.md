# Covariant generics

* Why not covariant generics?
http://conway.rutgers.edu/~ccshan/wiki/blog/posts/Unsoundness/

The PL `Dart` has a type system that features **covariant generics**, so it is unsound, people would conclude.

>The basic problem with covariant generics is that it lets you take a bowl of apples and call it a bowl of fruit.

This would be fine if you are just going to eat from the bowl and you like all fruits, but what if you decide to contribute a banana to the fruit bowl?

Someone taking from the bowl expecting an apple might choke. And someone else could call the same bowl 'a bowl of things', and then put a pencil in it, just to spite you.
