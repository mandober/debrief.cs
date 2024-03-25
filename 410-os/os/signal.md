# Signal

https://en.wikipedia.org/wiki/Signal_(IPC)

A **signal** is an asynchronous notification sent to a process to notify it that a particular event has occurred. Signals are a limited form of IPC because they are unable to carry any data.

When a signal is sent, the OS interrupts the target process' normal flow of execution to deliver the signal. Execution can be interrupted during any non-atomic instruction. If the target process has registered a handler for that particular signal, that handler is invoked to deal with it. Otherwise, the *default signal handler*, also called *signal disposition*, is executed.

Signals and Interrupts are similar:
- *interrupts* are mediated by the *CPU*    and handled by the *kernel*
- *signals*    are mediated by the *kernel* and handled by a *process*


## Sending signals

The `kill(2)` system call sends a specified signal from a source process to a target process, provided the source process has adequate permissions.

Similarly, the `kill` command (in bash realized as a builtin) allows a user to send signals to processes. The `raise(3)` library function sends the specified signal to the current process.



Exceptions such as division by zero (SIGFPE) or a segmentation violation (SIGSEGV) will generate signals, which both by default cause a core dump and a program exit.

The kernel can generate signals to notify processes of events. For example, SIGPIPE will be generated when a process writes to a pipe which has been closed by the reader; by default, this causes the process to terminate, which is convenient when constructing shell pipelines.

Typing certain key combinations at the controlling terminal of a running process causes the system to send it certain signals:

Ctrl-C (in older Unixes, DEL) sends an INT signal ("interrupt", SIGINT); by default, this causes the process to terminate.

Ctrl-Z sends a TSTP signal ("terminal st
op", SIGTSTP); by default, this causes the process to suspend execution.

Ctrl-\ sends a QUIT signal (SIGQUIT); by default, this causes the process to terminate and dump core.

Ctrl-T (not supported on all UNIXes) sends an INFO signal (SIGINFO); by default, and if supported by the command, this causes the operating system to show information about the running command.

These default key combinations with modern operating systems can be changed with the stty command.
