# Process Substitution

https://en.wikipedia.org/wiki/Process_substitution

In computing, **process substitution** is a form of *inter-process communication* that allows a command's input/output to represent a file (a file argument).

The shell (e.g. bash) substitutes the command in-line where a filename is expected. This allows programs, that insist on a file as an argument, to directly read from (or write to) another process as if it were a file.

- Process substitution was available as a compile-time option for `ksh88` (the 1988 version of the KornShell from Bell Labs).
- The `rc` shell (version 10 Unix, released in 1990) provides this feature as *pipeline branching*. 
- Bash had process substitution since version 1.14 (released in 1994).


## As input

Process substitution allows one to compare the output of two programs directly:

```bash
diff <(sort file1) <(sort file2)
```

The `<(command)` expression tells the command interpreter to run 'command' and make its output appear as a file. The 'command' can be any arbitrarily complex shell command.

### Alternatives

Without process substitution, the alternatives are:

1. Save the output of the command to a temporary file, then read it in:

```bash
sort file2 > /tmp/file2.sorted
sort file1 | diff - /tmp/file2.sorted
rm /tmp/file2.sorted
```

2. Create a named pipe (FIFO), start one command writing to the named pipe in the background, then run the other command with the named pipe as input:

```bash
mkfifo /tmp/sort2.fifo
sort file2 > /tmp/sort2.fifo &
sort file1 | diff - /tmp/sort2.fifo
rm /tmp/sort2.fifo
```


## As output

Process substitution can also be used to capture the output that would normally go to a file, and redirect it to the input of a process.

The Bash syntax for writing to a process is `>(command)`.

Here is an example using the `tee`, `wc` and `gzip` commands: 
count the lines with `wc -l` and compress the file with gzip in one pass

```bash
tee >(wc -l >&2) < bigfile | gzip > bigfile.gz
```

## Advantages

The main advantages of process substitution over its alternatives are:
* Simplicity: The commands can be given in-line; there is no need to save temporary files or create named pipes first.
* Performance: Reading directly from another process is often faster than having to write a temporary file to disk, then read it back in. This also saves disk space.
* Parallelism: The substituted process can be running concurrently with the command reading its output or writing its input, taking advantage of multiprocessing to reduce the total time for the computation.

## Mechanism

Under the hood, process substitution has two implementations. 

1. On systems which support `/dev/fd` (most Unix-like systems) it works by calling the `pipe()` system call, which returns a file descriptor `$fd` for a new anonymous pipe, then creating the string `/dev/fd/$fd`, and substitutes that on the command line.

2. On systems without `/dev/fd` support, it calls `mkfifo` with a new temporary filename to create a named pipe, and substitutes this filename on the command line.

To illustrate the steps involved, consider the following simple command substitution on a system with `/dev/fd` support:

```bash
diff file1 <(sort file2)
```

The steps the shell performs are:
- Create a new anonymous pipe. This pipe will be accessible with something like `/dev/fd/63`; you can see it with a command like `echo <(true)`.
- Execute the substituted command in the background (`sort file2` in this case), piping its output to the anonymous pipe.
- Execute the primary command, replacing the substituted command with the path of the anonymous pipe. In this case, the full command might expand to something like `diff file1 /dev/fd/63`.
- When execution is finished, close the anonymous pipe.
- For named pipes, the execution differs solely in the creation and deletion of the pipe; they are created with `mkfifo` (which is given a new temporary file name) and removed with `unlink`. All other aspects remain the same.

## Limitations

The "files" created are **not seekable**, which means the process reading or writing to the file cannot perform random access; it must read or write once from start to finish.

Programs that explicitly check the type of a file before opening it may refuse to work with process substitution, because the "file" resulting from process substitution is not a regular file.

Additionally, up to Bash 4.4 (released Sep 2016), it was not possible to obtain the exit code of a process substitution command from the shell that created the process substitution.

## See also
- Pipeline (Unix)
- Named pipe
- Command substitution
- Comparison of command shells
- Anonymous pipe

## References

- Rosenblatt, Bill; Robbins, Arnold (April 2002). "Appendix A.2". `Learning the Korn Shell (2nd ed.)`. O'Reilly & Associates. ISBN 0-596-00195-9.
- Duff, Tom (1990). `Rc - A Shell for Plan 9 and UNIX Systems`. CiteSeerX 10.1.1.41.3287.
- Ramey, Chet (August 18, 1994). `Bash 1.14 release notes`. Free Software Foundation. Available in the Gnu source archive of version 1.14.7 as of 12 February 2016.
- `Process Substitution` at Greg's Wiki. 22 Sep 2016. Retrieved 2021-02-06.

## Further reading

- `Bash Reference Manual`. The GNU Project. Free Software Foundation. 23 December 2009. Retrieved 1 Oct 2011.
- Cooper, Mendel (30 Aug 2011). `Advanced Bash-Scripting Guide`. The Linux Documentation Project. Retrieved 1 Oct 2011.
- Frazier, Mitch (22 May 2008). `Bash Process Substitution`. Linux Journal. Retrieved 1 Oct 2011.

http://mywiki.wooledge.org/ProcessSubstitution
