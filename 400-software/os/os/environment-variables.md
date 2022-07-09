# Environment variables

https://en.wikipedia.org/wiki/Environment_variable

An environment variable (envar) is a dynamic-named value that may affect the behavior of running processes. Envars are part of the running environment of a process. A process can query the value of envars through their well-established names (`TEMP`, `HOME`, `User`, etc.).

Environment variables were introduced in their modern form in 1979 with Version 7 Unix, and have been available in Unix-like OSs onward, including Linux and macOS. Since 1982's PC DOS version 2.0, having recognized their usefulness, all subsequent Microsoft OS's implement envars, albeit uncomfortably, with a clumsy syntax, painfull usage methods and a weird naming scheme.

Each process has its own separate set of environment variables. By default, when a process is created, it gets a duplicate of the parent's run-time environment, except for changes that the parent explicitly made when creating the child process. At the API level, these changes are done between running `fork` and `exec`.

The user can also change one or more envars for the command they are about to run, by prepending the command name with a set of `name=value` pairs (not necessarily denoting an environment variable).

invocation by indirectly invoking it via the `env` command or using the `VARIABLE=VALUE <command_name>` notation. A running program can access the values of environment variables for configuration purposes.

Shell scripts and batch files use environment variables to communicate data and preferences to child processes. They can also be used to store temporary values for reference later in a shell script. However, in Unix, non-exported variables are preferred for this as they don't leak outside the process.

In Unix, an environment variable that is changed in a script or compiled program will only affect that process and possibly child processes. The parent process and any unrelated processes will not be affected. Similarly, changing or removing a variable's value inside a DOS batch file will change the variable for the duration of COMMAND.COM's existence.

In Unix, the environment variables are normally initialized during system startup by the system init startup scripts, and hence inherited by all other processes in the system. Users can, and often do, augment them in the profile script for the command shell they are using. In Microsoft Windows, each environment variable's default value is stored in the Windows registry or set in the AUTOEXEC.BAT file.

On Unix, a setuid program is given an environment chosen by its caller, but it runs with different authority from its caller. The dynamic linker will usually load code from locations specified by the environment variables $LD_LIBRARY_PATH and $LD_PRELOAD and run it with the process's authority. If a setuid program did this, it would be insecure, because its caller could get it to run arbitrary code and hence misuse its authority. For this reason, libc unsets these environment variables at startup in a setuid process. setuid programs usually unset unknown environment variables and check others or set them to reasonable values.

In general, the collection of environment variables function as an associative array where both the keys and values are strings. The interpretation of characters in either string differs among systems. When data structures such as lists need to be represented, it is common to use a colon (common on Unix and Unix-like) or semicolon-deliminated (common on Windows and DOS) list.



---


https://en.wikipedia.org/wiki/Environment_variable
https://en.wikipedia.org/wiki/Name_resolution_(programming_languages)
https://en.wikipedia.org/wiki/Runtime_system
https://en.wikipedia.org/wiki/Env
https://en.wikipedia.org/wiki/Child_process
https://en.wikipedia.org/wiki/Environment_variable#Unix
https://en.wikipedia.org/wiki/C_standard_library
https://en.wikipedia.org/wiki/Fork_(system_call)
https://en.wikipedia.org/wiki/Exec_(system_call)
https://en.wikipedia.org/wiki/Buildroot
https://en.wikipedia.org/wiki/Cross_compiler
https://en.wikipedia.org/wiki/Debian_build_toolchain
https://en.wikipedia.org/wiki/DevOps_toolchain
https://en.wikipedia.org/wiki/GNU_toolchain
https://en.wikipedia.org/wiki/LLVM
