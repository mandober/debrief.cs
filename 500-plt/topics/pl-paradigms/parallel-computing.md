- page-type: section-main-page
- page-slug: parallel-computing
- page-wiki: Parallel_computing
- wikipedia: https://en.wikipedia.org/wiki/Parallel_computing
---
# Parallel computing

https://en.wikipedia.org/wiki/Parallel_computing


## Keywords

- type of {computation, computing} types
- levels of abstraction
- parallel computing
- parallelism
- parallelisable computation
- high-performance computing


## TL/DR

**Parallel computing** is a type of computation in which many calculations or processes are carried out simultaneously.

Large problems can often be divided into smaller ones, which can then be solved at the same time. 

There are several levels of abstraction that can take advantage of parallel computing:
- bit level
- instruction level
- data level
- process (task) level

Parallelism has long been employed in high-performance computing, but has gained broader interest due to the physical constraints preventing frequency scaling.

As power consumption (and consequently heat generation) by computers has become a concern in recent years, parallel computing has become the dominant paradigm in computer architecture, mainly in the form of multi-core processors.

Parallel computing is closely related to concurrent computing-they are frequently used together, and often conflated, though the two are distinct: it is possible to have parallelism without concurrency, and concurrency without parallelism (such as multitasking by time-sharing on a single-core CPU).[5][6] In parallel computing, a computational task is typically broken down into several, often many, very similar sub-tasks that can be processed independently and whose results are combined afterwards, upon completion. In contrast, in concurrent computing, the various processes often do not address related tasks; when they do, as is typical in distributed computing, the separate tasks may have a varied nature and often require some inter-process communication during execution.

Parallel computers can be roughly classified according to the level at which the hardware supports parallelism, with multi-core and multi-processor computers having multiple processing elements within a single machine, while clusters, MPPs, and grids use multiple computers to work on the same task. Specialized parallel computer architectures are sometimes used alongside traditional processors, for accelerating specific tasks.

In some cases parallelism is transparent to the programmer, such as in bit-level or instruction-level parallelism, but explicitly parallel algorithms, particularly those that use concurrency, are more difficult to write than sequential ones,[7] because concurrency introduces several new classes of potential software bugs, of which race conditions are the most common. Communication and synchronization between the different subtasks are typically some of the greatest obstacles to getting optimal parallel program performance.

A theoretical upper bound on the speed-up of a single program as a result of parallelization is given by Amdahl's law.


Contents
1	Background
1.1	Amdahl's law and Gustafson's law
1.2	Dependencies
1.3	Race conditions, mutual exclusion, synchronization, and parallel slowdown
1.4	Fine-grained, coarse-grained, and embarrassing parallelism
1.5	Flynn's taxonomy
2	Types of parallelism
2.1	Bit-level parallelism
2.2	Instruction-level parallelism
2.3	Task parallelism
2.4	Superword level parallelism
3	Hardware
3.1	Memory and communication
3.2	Classes of parallel computers
3.2.1	Multi-core computing
3.2.2	Symmetric multiprocessing
3.2.3	Distributed computing
3.2.4	Specialized parallel computers
4	Software
4.1	Parallel programming languages
4.2	Automatic parallelization
4.3	Application checkpointing
5	Algorithmic methods
6	Fault tolerance
7	History
8	Biological brain as massively parallel computer
9	See also
10	References
11	Further reading
12	External links
