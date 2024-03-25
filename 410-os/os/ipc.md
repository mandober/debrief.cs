# Inter-process communication

https://en.wikipedia.org/wiki/Inter-process_communication


Inter-process communication (IPC) is a label for various mechanisms an OS provides to allow the processes to share data between themselves.

IPC is very important for the design of microkernels because their strategy is to unburden the kernel from as many responsibilities as possible, moving the functionality from kernel to services. The functionality is then consumed via IPC, which results in increased chatter compared to a monolithic kernel.

IPC mechanisms are either synchronous or asynchronous.

## IPC Strategies

Different approaches to IPC have resulted from different demands and prioritization (e.g. performance, modularity, network bandwidth, latency).


*file* as a record (on a local disk or file server) that is accessible by multiple processes. All OS.

*signals* (Asynchronous System Trap)
A system message sent from one process to another, not usually used to transfer data but instead used to remotely command the partnered process. All OS.

*Socket*
Data sent over a network interface, either to a different process on the same computer or to another computer on the network. Stream-oriented (TCP; data written through a socket requires formatting to preserve message boundaries) or more rarely message-oriented (UDP, SCTP).
Most operating systems

*Unix domain socket*
Similar to an internet socket, but all communication occurs within the kernel. Domain sockets use the file system as their address space. Processes reference a domain socket as an inode, and multiple processes can communicate with one socket
All POSIX operating systems and Windows 10

*Message queue*
A data stream similar to a socket, but which usually preserves message boundaries. Typically implemented by the operating system, they allow multiple processes to read and write to the message queue without being directly connected to each other. Most operating systems

*Anonymous pipe*
A unidirectional data channel using standard input and output. Data written to the write-end of the pipe is buffered by the operating system until it is read from the read-end of the pipe. Two-way communication between processes can be achieved by using two pipes in opposite "directions".	POSIX, Windows

*Named pipe*
A pipe that is treated like a file. Instead of using standard input and output as with an anonymous pipe, processes write to and read from a named pipe, as if it were a regular file. POSIX, Windows

*Shared memory*
Multiple processes are given access to the same block of memory which creates a shared buffer for the processes to communicate with each other. POSIX, Windows

*Message passing*
Allows multiple programs to communicate using message queues and/or non-OS managed channels. Commonly used in concurrency models.	Used in RPC, RMI, and MPI paradigms, Java RMI, CORBA, DDS, MSMQ, MailSlots, QNX, others

*Memory-mapped file*
A file mapped to RAM and can be modified by changing memory addresses directly instead of outputting to a stream. This shares the same benefits as a standard file. POSIX, Windows
