# Language construct

https://en.wikipedia.org/wiki/Language_construct


A language construct is a piece of syntax that the compiler has intimate knowledge about, usually because it needs to handle it specially. Typical examples of language constructs are the short-circuiting operators found in many imperative languages. Because these operators require lazy evaluation in an otherwise eager language, they must be handled specially by the compiler.

So, a stricter definition of a language construct may be: a syntactical form that is handled specially by the compiler, a form the functionality of which cannot be implemented by a user.


Since imperative languages are strict, the compiler must handle such forms (that esentially require lazy evaluation) in order for them to exhibit the desired short-circuiting evaluation (i.e. seemingly lazy evaluation in a strict language).

part of syntax that is built into a PL, meaning the language's compiler is deeply familiar with them because it handles them specially.

One or more reserved words usually take part in forming a language construct. However, the phrase "language construct" doesn't really have a strict definiton, certainly not across the PLs. Sometimes it's even used to refer to all the things that can be constructed in a PL.

In imperative PL, control flow statements (loops, if-then-else, and simlar conditionals) are typically realized as language constructs, not as functions. So, `while (true) {…}` is a language construct, but `add(10)` is a function call.


From this example follows the usual definition of **language constructs** as those parts of the syntax that cannot be implemented by a user, but must be provided (and handled specially) directly by the language compiler.

Examples of language construct aboud in imperative PL, unlike in FPL, where they are rarely needed. Curiosly, in Haskell, if-then-else is a language construct and not afunction (as it should be), but that's only as a matter of convenience - its complete functionality can very well be implemented by a user.


https://en.wikipedia.org/wiki/Category:Programming_constructs

https://en.wikipedia.org/wiki/Category:Programming_language_concepts


*includes my own (first ever) reply on SO*    
Stack Overflow: Terminology: What does 'Language Construct' mean?
https://stackoverflow.com/questions/10057524/what-does-language-construct-mean/69592369#69592369
