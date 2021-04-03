# PL Variables

Variables may have a lot of properties, some of which are dependant on a lot of contexts. Each PL has to make a lot of decision in how it's gonna propagate the supported properties. A variable's primary characteristic is to be bound to a particular value, but vars have a range of properties that may or may not have to do anything with its value.

- (value)
- type
  - regular, linear, affine type
  - lang item type pvars vs function ids
- identifier (and its significant part), name, label, index
- visibility
- privacy: public, private, protected, friendly, etc.
- forcing particular interpretation
- strictness (lazy vs strict evaluation)
- mutability: mutable vs immutable
- constants vs variables
- type-specific wrt namespace: var vs function name
- hoisted or not
- frozen or deeply frozen
- allocation: stack, heap, static
- static variables in func (in C)
- binding: late, late static, dynamic



* Visibility, privacy:
  - explicit keyword: `pub` (Rust)
  - with a sigil, `#num` (marks a private field in JS)
  - convention (e.g. uppercase first letter for public access)

* Specific interpretation
  - Perl uses *sigils*, e.g. `name` as `$name` is a scalar, `@name` (array), `%name` (hash), `&name` (subroutine)
  - Raku also uses secondary sigils, or *twigils*, to indicate the scope of variables. Prominent examples of twigils in Raku include `^`, used with self-declared formal parameters (placeholder variables), and `.`, used with object attribute accessors (instance variables).
  - Haskell uses pattern matching modifiers, which in some occasions look similar to sigils, and are used to specify evaluation strictness. `!` (bang) is a pattern prefix that forces strict evaluation, while `~` makes a pattern irrefutable (supa-lazy).


https://en.wikipedia.org/wiki/Sigil_(computer_programming)
