# Shell GLOSSARY

## Alternative Terminal Mode
Many programs (mc, vim, htop) use the alternative screen mode, which is kind of a full-screen overlay, an extra screen without the scroll buffer support. The main mode is the *primary screen mode*.

## Bashism
Enraged because bash went too far and added some "ultra advanced modern features" thus breaking the holy compatibility with one pre-1957 machine, already several years under the heavy repairments but now convicted to obsolescence by the actions of "the selfish, ungrateful and undeserving heir", the church of POSIX has successfully enacted the bill that makes it punishable by law if one fails to loudly voice the derogatory term in question in face of any and all non-comforming transgretions.

## Command line
A command line is a terminal's active line, identified by the prompt, where a users may type commands for shell to interpret. It may also refer to the actual line of text that a user has/will/should type at the command prompt.

## Command
A command is usually the first word on the command line, with other words being positional parameters.

## Command type
There are various types of commands, including: aliases, functions, builtins, keywords, variable names, filenames, program names. The type of a shell word may be queried with the `type` builtin.

## Command type priority
When the shell extracts the first word on the command line, it starts searching for that name by querying the various command types. First, the aliases are queried, then the functions, variables, builtins, keywords; eventually the shell searches the `PATH` for an executable of such name.

## Blank
A <kbd>SPACE</kbd> or <kbd>TAB</kbd> character

## Builtin
A command that is implemented internally by the shell itself, rather than by an executable program somewhere in the file system.

## Control operator
A token that performs a control function. It is a newline or one of the following: ‘||’, ‘&&’, ‘&’, ‘;’, ‘;;’, ‘;&’, ‘;;&’, ‘|’, ‘|&’, ‘(’, or ‘)’.

## Exit status
The value returned by a command to its caller. The value is restricted to eight bits, so the maximum value is 255.

## Field
A unit of text that is the result of one of the shell expansions. After expansion, when executing a command, the resulting fields are used as the command name and arguments.

## Filename
A string of characters used to identify a file.

## IFS
Internal Field Separator is an enwar that the shell consults to decide how to split words. By default `IFS=" \t\n"`.
<kbd>SPC</kbd>, <kbd>TAB</kbd>, <kbd>LF</kbd>

## Job
A set of processes comprising a pipeline, and any processes descended from it, that are all in the same process group.

## Job control
A mechanism by which users can selectively stop (suspend) and restart (resume) execution of processes.

## Kill
1. copy text to the kill ring (extended clippoard)
2. send SIGKILL to a process
3. shell builtin used to send signals

## List
is any sequence of sublists (including just one)
separated by ; or newline. ; and newline are always
interchangeable except in ;;.


## Metacharacter
*A character that, when unquoted, separates words*. A metacharacter is a space, tab, newline, or one of the following characters: ‘|’, ‘&’, ‘;’, ‘(’, ‘)’, ‘<’, or ‘>’.

## Name
A *name* or an *identifier* is a word that uniquely identifies and fully qualifies a shell variable or function. It consists of alphanumeric and underscore characters but it must not begin with a number.

## Operator
A control operator or a redirection operator. See Redirections, for a list of redirection operators. Operators contain at least one unquoted metacharacter.

## Pager
A pager is a program that displays text on a screen-by-screen basis using the terminal's alternative screen mode.

## Pipeline
is any sequence of simple commands connected by |.

Command is either a simple command (a command word) followed optionally by word … or one of the special commands below.


## POSIX
A family of open system standards based on Unix. Bash is primarily concerned with the Shell and Utilities portion of the POSIX 1003.1 standard.

## POSIX mode
When Bash runs in POSIX mode it does some thing differently: it enforces the rules regarding the special builtins, 

## POSIX Special builtin
A builtin qualified as special by the POSIX standard. When bash is in POSIX mode, such builtins behave differently from other builtins:
* Special builtins are found before shell functions during command lookup.
* If a special builtin returns an error status, a non-interactive shell exits.
* Assignment statements preceding the command stay valid in a subshell but also in the current shell environment, after the subshell command completes.
* POSIX forbids shadowing the names of the special builtins with an eponymous function (but not with an eponymous alias).


## Process group
A collection of related processes each having the same process group ID.

## Process group ID
A unique identifier that represents a process group during its lifetime.

## Keyword
A keyword is a word reserved by bash and assigned some special meaning. Most reserved words are flow control constructs (for, while, until, if, case, etc.).

## Return status
Functions and sourced files have a return status codes that, similarly to the exit status code, indicate success or failure wrt their execution.

## Shell
A command shell is a command line interface (text interface, TUI) program to the underlying OS. Fundamentally, a shell is a macro processor that executes commands. The input is first exanded (in many ways and dimensions), creating a larger expression that the shell then executes. Most shells are bipolar, one moment interpreting commands and the next posing as a gen-purp programming language.

## Shell Word
A *shell word*, or frequentlly just *word*, is a sequence of characters treated as a unit by the shell. It is a superset of *name*:   
English word ⊆ *shell name* (identifier) ⊆ *shell word*

## Signal
A mechanism by which a kernel notifies a process of some event. Like an emergency broadcast interruption. A large set of signals is catchable - a process may catch a signal and then decide how to act, one option being to ignore the signal. Some signals cannot be ignored, and some are never seen coming (kill switch).

## Sublist
A sublist is a sequence of pipelines connected by the list operators: `&&`,`||`

## Token
A *token* is a single unit of meaning. In terms of their length, tokens range from a single character to a sequance. Programming languages will often delagate the most frequently used language constructs to the smalles tokens. For example, a single, easily typed, character that is the dot (`.`) often gets promoted into a token that represents a very popular and frequently performed action in a language: sourcing a file (shell), member access (OO), functional composition (FP), etc. In shell, tokens stand for operators, special and meta characters, words, names, and all other shell entities.
