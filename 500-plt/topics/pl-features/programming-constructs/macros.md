# Macros

## Macros and syntactic extensions

https://www.quora.com/Are-there-programming-languages-that-have-no-syntax

### Why don't most programming languages allow you to define your own syntax?

There are several reasons for this, historical, cultural, and technical.

First, it's hard. People have tried, but no one has actually come up with a satisfactory way to do LISP-style syntactic abstraction in non-s-expression languages. Many languages have ways to do syntactic extension, from CPP to Template Haskell, but few allow extending the language in a smooth and consistent way. As far as I can tell, they're all broken in one way or another. The closest thing I've seen to what I think you're asking for is Camlp4, which allows extending Ocaml's grammar with new productions and specifying how those new productions should be represented in Ocaml's abstract syntax. However, extending the grammar isn't the same as writing a LISP or Scheme macro, because these extensions don't compose, and you have to reason about how your changes will affect an (essentially) LL(1) grammar. Camlp4 doesn't (if I recall correctly) provide hygiene.

Second, people aren't demanding it. Programming languages are a bit Whorfian (what Paul Graham calls Blub Syndrome), so people who aren't accustomed to using syntactic abstraction (or whatever language feature you care about) likely don't feel like they're missing anything. I'd like to use a language that has Scheme-style macros and Haskell's type system, but people that use one of those things frequently don't care about the other, which may explain why it doesn't exist.

Third, there are some reasons why some language designers might not want macros. One problem is that no one has found (as far as I know) a good way to print error messages in terms of the code that someone wrote rather than its expansion, which means that syntactic abstractions leak. In untyped languages (such as Scheme or Common Lisp), it's possible, though tiresome and error-prone, to write a macro carefully so that any syntax errors are detected by the macro rather than propagated to its expansion. In typed languages, however, there are also type errors to worry about, and we have no good idea how to print type errors in terms of unexpanded code.

We also might not want macros because they can make programs harder to understand and reason about, because they change the meaning of terms in more fundamental ways than, say, function definitions can. For example, if I write mystery(x, f(x)) in Ruby, you know that x refers to some variable x bound outside that expression, and that f(x) will be evaluated before mystery is called. But in Lisp or Scheme, (mystery x (f x)) might be a macro invocation that changes the evaluation order. Even worse (or better!), it might treat the first x as a binding occurrence-for example, it could expand to (let ((x 5)) (f x)). It could also do much wilder things. This is not necessarily a decisive argument against macros-other things being equal, I'd rather have them than not-but it shows how they can introduce a lot of complexity into a language.

Fourth, historically, language designers have only gradually come around to the idea that programmers should be able to create abstractions with the same status as built-in features of the language. In languages from the '60s and '70s, it's common for user-defined subroutines to be second-class compared to a large set of built-in commands. Many languages in use today still privilege primitive datatypes over user-defined datatypes, and most do not allow defining new infix operators. Some treat functions, procedures, or methods as fundamentally different from other values. The trend would suggest that macros should be part of more languages in the future, but since syntactic abstraction facilities are difficult to design and often difficult to use well, it should be no surprise that they haven't been a priority for many language designers thus far.


## Are there any programming languages who have the same syntax?

The most classical example of that would likely be various LISP like languages. They are all built on s-expressions but the semantics tend to differ. So Scheme, Common LISP, Clojure and Racket would be examples.

The whole idea of LISP is really that by expressing the program as a syntax tree, which is what s-expression allow you to do, then this open the possibility for powerful macros and meta programming. Hence LISP is more of a fundamental idea about syntax than about a particular language. LISP in a way is more of a system for making languages than a language itself.

But there are other examples. E.g. Kotlin and Swift have quite similar syntax, but are quite different under the hood. Kotlin is a managed language running on the JVM, just in time compiler. Swift is compiled into native code and uses automatic reference counting rather than garbage collection.

## Expressiveness

Shorter is the wrong metric. Expressiveness is what matters. But programs being shorter is correlated with expressiveness.

A more expressive language makes it easier to write the code you want to write. Code that does what you want it to do and code that reads how you want it to read. It lets you define the exact abstractions you want and use them with a minimum of syntactic overhead.

A less expressive language, on the other hand, either keeps you from expressing certain ideas (not having generics, for example), forces you to include a lot of irrelevant details and boilerplate (cough Java cough), requires too much manual low-level control or, of course, some combination of the above.

Syntax is only part of what makes a language expressive or inexpressive-but it's an important part. Even if you can express exactly the abstraction you want in a language, if the syntax is verbose and adds a lot of overhead, your program is going to be uglier and harder to read. On the other hand, if the syntax is minimal and flexible, you'll be able to write your abstractions how you like, and chances are that your notation will be shorter than the default.

I evaluate my code against a simple standard: there's some key amount of irreducible information I need in some code. How much extra noise am I forced to include on top of that thanks to my language and framework? Some extra structure is often needed to organize the code and help you follow its structure, but most languages force you to have too much.

Take URL routing for example: each route needs a template for the URL and HTTP method, some information about parsing arguments and some control (perhaps a function) that handles the request. In an expressive language, you wouldn't have much else. An inexpressive language would require some extra boilerplate and perhaps an inflexible way of organizing handlers. A really inexpressive language would force you to define your routes in XML.

The more expressive URL routing code would certainly be shorter, but that's not the main reason we like it. Rather, we prefer it because it better reflects the domain (URL routing) and doesn't obscure the meaning of the code in boilerplate or irrelevant details.
