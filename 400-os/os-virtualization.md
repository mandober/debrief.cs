# Abstractions proivided by an OS

>The central issue: virtualizing resources.

OS is in charge of making sure the system operates correctly and efficiently in an easy-to-use manner. The primary way the OS does this is through a general technique that called *virtualization*. That is, the OS takes a physical resource (such as the processor, memory, disk) and transforms it into a more general, powerful, and easy-to-use virtual form of itself.

Operating system provides many abstraction or virtualizations:
- abstracting the CPU
- abstracting memory
- abstracting processes

The OS also provides interfaces (APIs) that we can call. A typical OS, in fact, exports a few hundred system calls that are available to applications. Because the OS provides these calls to run programs, access memory and devices, and other related actions, we also sometimes say that the OS provides a standard library to applications.

Since the OS virtualization allows many programs to run (thus sharing the CPU), and many programs to concurrently access their own instructions and data (thus sharing memory), and many programs to access devices (thus sharing disks and so forth), the OS is sometimes known as a *resource manager*. 

CPU, memory, disks are resources of the system; it is the operating system's role to manage those resources, to do so efficiently and fairly, with many additional goals in mind.

The OS takes physical resources, such as a CPU, memory, disks, and virtualizes them; it handles tough and tricky issues related to concurrency; it stores files persistently.

One of the most basic goals is to build *abstractions*. Abstractions make the system convenient and easy to use. Abstractions are fundamental to everything we do in computer science. Abstraction makes it possible to write a large program by dividing it into small and understandable pieces, to write such a program in a high-level language like C without thinking about assembly, to write code in assembly without thinking about logic gates, and to build a processor out of gates without thinking too much about transistors.

One goal in designing and implementing an operating system is to provide high performance. In other words, the goal is to minimize the overheads of the OS. Virtualization and making the system easy to use are well worth it, but not at any cost. Thus, we must strive to provide virtualization and other OS features without excessive overheads. Finding the right set of trade-offs is a key to building systems.

These overheads arise in a number of forms: extra time (more instructions) and extra space (in memory or on disk). We'll seek solutions that minimize one or the other or both, if possible.

Another goal will be to provide protection between applications, as well as between the OS and applications.

Because we want to run many programs at the same time, we want to make sure the 
malicious or accidental behavior of one does not harm others. We certainly don't want an application to be able to harm the OS itself (as that would affect all programs running on the system). Protection is at the heart of one of the main principles underlying an operating system, which is that of isolation; isolating processes from one another is the key to protection and thus underlies much of what an OS must do.

The operating system must also run non-stop; when it fails, all applications running on the system fail as well. Because of this dependence, operating systems often strive to provide a high degree of reliability.

Other goals make sense: energy-efficiency is important in our increasingly green world; security (an extension of protection, really) against malicious applications is critical, especially in these highly-networked times; mobility is increasingly important as OSes are run on smaller and smaller devices. Depending on how the system is used, the OS will have different goals and thus likely be implemented in at least slightly different ways. However, as we will see, many of the principles we will present on how to build an OS are useful on a range of different devices.
