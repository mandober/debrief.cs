# Processes

The OS creates this illusion by virtualizing the CPU. By running one process, then stopping it and running another, and so forth, the OS creates the illusion that many virtual CPUs exist, when in fact there is only one physical CPU. This technique, known as *time sharing of the CPU*, allows users to run many concurrent processes. The potential cost is performance, as each will run more slowly if the CPU must be shared.

*Time sharing* is a basic technique used by an OS to share a resource. By allowing the resource to be used for a little while by one client, and then a little while by another, and so forth, the resource in question can be used simultaneously by many.

*Space sharing* is the counterpart of time sharing where a resource is divided (in space) among the clients. For example, disk space is naturally a spaceshared resource; once a block is assigned to a file, it is normally not assigned to another file until the user deletes the original file.

To implement virtualization of the CPU, and to implement it well, the OS will need both some low-level machinery and some high-level intelligence. We call the low-level machinery *mechanisms*. Mechanisms are low-level methods or protocols that implement a needed piece of functionality. For example, we'll learn later how to implement a *context switch*, which gives the OS the ability to stop running one program and start running another on a given CPU; this time-sharing mechanism is employed by all modern OSes.

On top of these mechanisms resides some of the intelligence in the OS, in the form of policies. *Policies* are algorithms for making some kind of decision within the OS. For example, given a number of possible programs to run on a CPU, which program should the OS run? A *scheduling policy* in the OS will make this decision.


One of the most fundamental abstractions that the OS provides to users is that of a *process*. Informally, the process is just a running program. At any instant in time, we can summarize a process by taking an inventory of the different pieces of the system it accesses or affects during the course of its execution.

To understand what constitutes a process, we thus have to understand its *machine state*: what a program can read or update when it is running. At any given time, what parts of the machine are important to the execution of this program? The memory that the process can address, its *address space*, is part of the process. Registers also. There are some particularly special registers that form part of this machine state, like the program counter (PC) (aka the instruction pointer or IP). A stack pointer (SP) and associated frame pointer (BP). Finally, programs often access persistent storage devices too; such I/O information might include a list of the files the process currently has open.

*Separating policy and mechanisms*: A common design paradigm is to separate high-level policies from their low-level mechanisms. A mechanism provides the answer to a "how" question, e.g. how does an OS perform a context switch? The policy provides the answer to a "which" question, e.g. which process should run next? Separating the policies and mechanism allows us to easily change policies without having to adjust mechanisms, and thus it is a form of *modularity*, and modularity is a general software design principle.
