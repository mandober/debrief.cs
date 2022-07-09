# CLI variables

* Variable kinds
  - parameters
    - user parameters
    - shell parameters

* Variable management
  - uppercased by convention
  - no dollar when seting a var, `NAME=VALUE`
  - dollar prefix and braces when retrieving, `${NAME}`
  - can skip braces if unambigous context, `$NAME`
  - bash offers misc var manipulations:
    - expand to the legth (no. of characters) of NAME `${#NAME}`
    - expand to all var names that have  the prefix `${!BASH*}`

* Variable types
  - set: `NAME=VALUE` (no spaces! no dollar when seting)
  - get: `$NAME`
  - shell functions


* Variable tools:
  * Builtins
    - `declare` builtin sets variable values and attributes.
    - `set`
  * External
    - `env`
    - `printenv`


* Variable attributes:
  - index array
  - assoc array
  - aritmetic vars
  - ref vars


* Variable origin:
system variables
shell variables
tty variables
ssh variables
Bourne shell variables
bash variables
environment variables
proper environment variables
user variables
exported variables
created variables
inheritable variables


* Variables
- created, inherited
- auto-created by the os, subsystem, console, terminal, shell, security profile, PAM profile, user-based.
- startup (init, rc) profiles
- `env` command
- start command notation: `[VARIABLE=VALUE ...] <command_name>` 
