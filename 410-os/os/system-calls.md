# System Call

https://en.wikipedia.org/wiki/System_call

A system call is a way in which a process programmatic requests a service from the kernel. System calls provide the fundamental interface between a process and the OS. In most systems, system calls can only be made from userspace processes.

The service a process may request includes hardware-related services (accessing storage), creation and execution of a new process, communication with internal kernel services such as process scheduling.

The OS of a modern computer separates virtual memory into *kernel space* and *user space*. Most of all, this separation serves to provide protection from malicious or erroneous software.

The architecture of modern CPUs involves a *security model*, which specifies privilege levels for the executing processes. Each process is bound to its memory *address space* and it cannot see other processes that may concurrently run on the same machine. Moreover, processes are prohibited from accessing the hardware directly. Rather, the OS provides a set of safe, strictly defined system-calls, a process may use to request a particular service.

## Library as a proxy
Generally, systems provide an API that sits between normal programs and the OS. 

On Unix-like systems, the API is usually part of C library implementation, libc (glibc, musl, dietlibc, uClibc) that provides wrapper functions for the system calls, which are often named the same as the associated system calls.

[Comparison of C/POSIX standard library implementations for Linux](http://www.etalabs.net/compare_libcs.html)






System services
- Process creation
- Process execution
- Process scheduling
- Memory management
- File System Access
- Device IO
- Networking

There are 5 different categories of system calls –
1. Process control: end, abort, create, terminate, allocate and free memory
2. File management: create, open, close, delete, read file
3. Device management
4. Information maintenance
5. Communication
