# Aliasing

https://en.wikipedia.org/wiki/Aliasing_(computing)

Generally, aliasing refers to the process of assigning redundant names to known entities in a PL.

In a more narrow sense, it typically refers to adding additional, friendlier, names to existing language entities in order to more easily distinguish what they represent.

Aliasing of types may be considered as the most basic mechanism for avoiding *primitive obsession*, which is the habit of using the same general type for different purposes, instead of defining a distinct type to represent each model. For example, a programmer suffering from PO is prone to use `Int` as the type of both miles and kilometers, increasing the risk that a units mismatch causes a crash of the Mars orbiter (although that probably wasn't an issue; as big as the lack of a type system; and because imperative programming; obviously! what? aliasing? of course it is the right topic).




## Pointer aliasing

https://en.wikipedia.org/wiki/Pointer_aliasing

Aliasing in programming describes a situation in which a memory location is accessed via different symbols (symbolic names).

Multiple concurrent read accesses are fine, but multiple concurrent or even consecutive write accesses, that modify the state, can cause problems such as pointer problems, data incoherence, data invalidation and data races, making the program behave non-deterministically. Simultaneous write access must be tightly controlled to avoid these issues.

Modifying the value through one name implicitly modifies the values associated with all aliased names.

Most importantly, aliasing makes it very hard to understand, analyze and optimize programs. Aliasing issues make it difficult for compilers to generate code that runs as fast as possible.

Despite being the prevalent cause that results in non-determinism of code execution, many languages today, to a different extent, allow simultaneous writes to the same memory location.

Fortunately, there are modern languages, like Rust, that take on this problem more seriously, and put such offending behaviour under a tight control. For example, in Rust, at any time, it is allowed to either have multiple read references (multiple simultaneous aliases that read the same memory location are allowed) XOR a single reference with write permission. That way, many issues are avoided or reported at compile-time, e.g. a situation where a writer is changing the value underneath a reader. Rust may be the only language that is completely type and memory safe while lacking a garbage collection.

Another approach comes from functional programming where modification is completely forbidden - once set, a value cannot ever be changed. That is, updates create new values and do not mutate original data. But this approach cannot be implemented reasonably without a garbage collection, which however efficient still introduces some non-determinism to the program.
