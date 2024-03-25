# Data preprocessing

- File processing
  - file preprocessing vs file processing
  - preprocessing text documents
  - CSS preprocessing
  - HTML preprocessing


- HTML preprocessing
  - HTML preprocessor
  - text processing
  - text preprocessing
  - code preprocessing
  - code processing (compiling)
  - HTML template language
  - HTML template engine
  - Markup language
  - Macro processing languages
  - Macro preprocessor

## Preprocessors

The goal of preprocessing is the reduction of verbosity of a language. A prime example is HTML - verbosity abounds in XML family of markup languages. HTML, XHTML, XML, SVG, MathML, and similar markup languages that use opening and closing tags made up of angle brackets are very verbose.

Quick comparison:

```js
// xml
<book>
  <isbn>ISBN 9411-453-23232</isbn>
  <author>The author has come</author>
  <title>Title of this book is</title>
</book>

// xml condensed variant
<book isbn="ISB number" author="Propface McProperty">Book desc maybe</book>
```




## HTML Preprocessors

A preprocessor may be a template engines used in conjunction with a compiler, like `CPP` in the C language, although it can be a standalone application like the macro processing language *m4*.

A *preprocessor* modifies the input document, creating a new document in a format that is standard for consumption. A preprocessor may be regarded as a filter utility (in Unix terminology) that takes a file and makes some changes to it, outputting the document that is more conveninet for further consumption.

A *template engine* is a type of preprocessor specific to documents, although a strict definition of the difference between a preprocessor and a template engine is elusive. A possible task that a template engine could do is taking a document and a file with definitions, and then replacing the placeholders in the document with the appropriate definitions. Usually, a template engine lacks logic so it sticks to performing things that do not need it, like automating text expansion.






HTML preprocessing
* HTML preprocessors
  - GTML https://gtml.sourceforge.net
* Macro processing languages
  - m4
  - cpp (with C)
* Markup languages
  - Haml https://haml.info
  - Markdown
* HTML template engines
  - Pug
* HTML template languages
  - Slim
  - Pug
  - Smarty
  - Twig
  - Haml
  - TinyButStrong
  - Markdown




*m4* is a general-purpose macro processor included in most Unix-like operating systems, and is a component of the POSIX standard. Major implementation (possibly the only implementation) of m4 is *GNU m4*. m4 was designed by Brian Kernighan and Dennis Ritchie for the original versions of UNIX. m4 is an extension of an earlier macro processor, *m3*, written by Ritchie for an unknown AP-3 minicomputer. A *macro preprocessor* operates as a text replacement tool. It is employed to reuse *text templates*, typically in computer programming applications, but also in text editing and text-processing applications. Most users require m4 as a dependency of *GNU autoconf*.

https://en.wikipedia.org/wiki/M4_(computer_language)

Features of macro preprocessing include:

## Delineators (delimiters)

Preprocessor should only care about marked text and leave the other text as is. So there must be means to mark a part of text. This usually involves defining opening and closing delineators as strings. Whichever sequence of characters is defined as a delineator, due to meta and self-referential reasons, it must be possible to "escape" it, which further complicates the synax involved. A popular choice of an asymmetric pair of delineators are doubled braces: opening as `{{` and closing as `}}`. Distict opening and closing markers make it easier to locate the start of the marker, and they have mirror-like visual appeal. No ASCII character alone is suitable as a delimiter, but doubling or even tripling it could work. Some samples include

Doubling
- `%%` replace with definition `%%`
- `!!` and `!!`
- `||` and `||`
- `<<` and `>>`
- `((` and `))`
- `{{` and `}}`

Tripling
- `|||` and `|||`
- `<<<` and `>>>`
- `(((` and `)))`
- `[[[` and `]]]`


Moustache-like doubled braces seem convenient to type, and they are sufficiently appealing visually - low noise ratio.


With simplest text expansion, a preprocessor can just scan the document and replace the defined abbreviations, e.g. everywhere it sees the string "HTML", it replaces it with the defined expansion. In case of such unmistakably characteristic pieces of text probably no further sanity checks are required, e.g. whether it is  
- the curbersomeness of the syntax used to mark a placeholder
- nested markers
- free-form syntax (not line-based like a typical macro preprocessor designed for assembly-language processing)
- the high degree of re-expansion (a macro's arguments get expanded twice: once during scanning and once at interpretation time)
- delaying expansions (of variables) until runtime; i.e. not expanding vars during processing but during runtime, similar to cmdexe's `!var!` vs `%var%`.

m4 offers these facilities:
- a free-form syntax, rather than line-based syntax
- a high degree of macro expansion (arguments get expanded during scan and again during interpretation)
- text replacement
- parameter substitution
- file inclusion
- string manipulation
- conditional evaluation
- arithmetic expressions
- system interface
- programmer diagnostics
- programming language independent
- human language independent
- provides programming language capabilities






* What is the difference between Template Engines and Preprocessors?
https://stackoverflow.com/questions/41745063/what-is-the-difference-between-template-engines-and-preprocessors
