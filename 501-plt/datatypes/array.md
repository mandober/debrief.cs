# Array

In the original and the strictest sense, an array is a fix-sized sequence of homogenous values in contiguous memory locations, preferably on the stack.

The contiguous layout exhibits the *locality of reference*, especially the *sequential locality* which is a property of a data (structure) whose elements are arranged and accessed linearly.

Arrays check all the desirable points that fully exploit CPU's caching behaviour and patterns of data access, thus keeping the first place of the most performant data structure ever.

A proper array is laid out on the stack which makes for fast access but constrains its size and type - thus proper arrays are homogenuous and fixed in size.

Arrays have a dependent type that not only depends on the type of containing elements but also on their number. The type of arrays is polymorphic in two domains - it has a type and a value valriable, `[a; n]`

For example, an array type ctor accepts a type, e.g. `Int` and produces a partially applied type `[Int; n]`. The fully applied type of an array would be `[Int; 5]`.

A type that depends in some way on the value it contains is a *dependent type*. A dependant function depends on the type and value of its prameter.
