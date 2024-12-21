# Computing :: Glossary

## Fork
Mitosis is a fundamental process of life when a cell splits in two, producing two identical cells. In Unix, cells are processes, mitosis is forking. The process which invokes the `fork` syscall is called the parent and the new process is the child. After forking, both processes are identical save for their PIDs. Whatever the child becomes, it will always be related to its parent process.

## Subshell
When a shell (the main/current shell instance) needs to execute an external command, it spawns a subshell (another shell instance) and delagates it that task. The current shell instance can optionally wait for the subshell to finish the task, possibly capturing the output of the executed command and collecting its exit status, which is sequential exectution that blocks the main shell instance. Alternatively, the main shell instance can send the subshell to the background, so each (the main shell and the subshell instance) is executed in own thread, in parallel.

This new process is the child, and the process that forked it off is the parent. While the child process is doing its work, the parent process is still running. While a parent process gets the process ID of the child process, and can thus pass arguments to it, the reverse is not true. This can create problems that are subtle and hard to track down.

Generally, in bash, a builtin does not fork a subprocess when it executes within a script. An external command does fork a subprocess, as do the builtins when used in particular way (e.g. in a pipeline, by forcing a subshell).

It is not uncommon to find both external commands and builtins on the same system. For example, bash has the `echo` builtion, which does not behave quite the same as the external program `echo` (usually found in the `/bin` dir). If a command is referred by a bare name (and not as a relative or absolute filename), the builtins namespace is searched before the external commands namespace (i.e. searching the $PATH), meaning a word 'echo' would resolve to the builtin 'echo'.

## Keyword
A keyword is a reserved word, token or operator. Keywords have a special meaning to the shell, and are the building blocks of the shell's syntax. For example, `for`, `while`, `do`, `!` are keywords. Similar to a builtin, a keyword is hard-coded into Bash, but unlike a builtin, a keyword is not in itself a command, but a subunit of a command construct. An exception to this is the `time` *precommand*, listed in the official Bash documentation as a reserved word.
