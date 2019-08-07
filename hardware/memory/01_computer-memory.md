# Computer Memory

Data storage, a computer's core function, consists of components and memory media used to retain digital data. The CPU manipulates this data by performing computations.

## Performance vs cost

In practice, almost all computers use a storage hierarchy, which puts fast but expensive and small storage options close to the CPU and slower but larger and cheaper options farther away. Generally the fast volatile technologies (which lose data when off power) are referred to as "memory", while slower persistent technologies are referred to as "storage".

In the Von Neumann architecture, the CPU consists of two main parts: The control unit and the arithmetic logic unit (ALU). The former controls the flow of data between the CPU and memory, while the latter performs arithmetic and logical operations on data.


## Universal memory
The requirements for storage space, its quality and quantity, of various computer components should be, ideally, satisfied by a single memory type, a universal memory. This "one to rule them all" memory would consolidate all the desired properties of a memory medium. One memory type would then be used for various tasks: from the long-term data storage and archiving, to the short-term data storage that exists merely to serve that same data to a CPU's preferential speed.

The universal memory would collapse the various storage spaces into a single point; the data would be found in a single location, there would be a single source of "truth". This would greatly simplify computer architecture, rendering obsolete the need to constantly copy the data undergoing processing throughout the system, from one memory device to another, and back again.

Lacking the universal memory means we have to mix and match memory technologies available today: each tech prioritizes a specific set of features desired in a memory medium, and each computer component has specific memory requirements in order to function (properly, comfortably). The big consequence of such mixing of memory technologies and their intrinsic properties is the dramatic increase in complexity in all aspects of computing, from architecture to programming.

The feature set of universal memory would include:
* Performance: operational speed on par with the CPU's
* Cost: cheap manufacturing, affordable price
* Capacity: sufficient capacity
* Volume: compact physical size, small form-factor
* Volatility: non-volatile data retention
* Durability, immunity to wear and tear, fault-tolerance


These features usually come as opposing pairs: very fast but very expensive or very slow but very cheap


The types of memory:
* SRAM
* DRAM
* SDD
* HDD
* Flash

Memory tiers:
* Core tier (SRAM)
* Primary tier (DRAM)
* Secondary tier (SDD, HDD)
* Tertiary (flash sticks, optical media)

Storage levels:
* Internal (core): registers and cache (SRAM)
* Main: system memory (DRAM)
* Online: secondary storage (SDD, HDD)
* Nearline: offline storage that becomes online automatically
* Offline: tertiary storage (flash stick, optical media, floppy disk, tape)


Nearline is an intermediate type of data storage that represents a compromise between online storage (frequent data access) and offline storage used for archiving (infrequent data access). Offline storage requires some human intervention to become online.



The memory hierarchy separates computer storage into a hierarchy based on response time. Since response time, complexity, and capacity are related, the levels may also be distinguished by their performance and controlling technologies.


A CPU favors efficiency before other desirable memory characteristics, it needs a memory capable to keep up with its tremendous working speed. SRAM type of memory fulfills that requirement, not to the best but to a fair extent.




It needs a capable, high-end storage to function; it needs a scratch space to maintain its complex internal state, plus the state of current affairs, such as the running program's instructions and data (operators, operands, temporary values, calculation results, etc. to infinity). Fortunately, SRAM technology prioritizes the features concerned with efficiency, providing a CPU with a suitable storage in the forms of CPU registers and caches of different levels.

The need to have a cache at all is one aspect arose due to the increase in complexity, stipulated by the lack of universal memory.



## The 4 P's of top memory storage attributes:
* Performance   performance
* Price         cost
* Papacity      capacity
* Punction      function
(the latter two are aka capacity and function, resp.)

## Tiered storage
Tiered storage is a data storage environment consisting of two or more kinds of storage delineated by differences in at least one of these four attributes: price, performance, capacity and function. Any significant difference in one or more of the four defining attributes can be sufficient to justify a separate storage tier.



**Terms**   
caching vs tiering: Automated Tiered Storage vs. SSD Caching
hot and cold data
volatile memory (VM)
Non-volatile memory (NVM) or non-volatile storage
data remanence
random access
semiconductor memory
memory refresh
static random-access memory (SRAM)
Dynamic random-access memory (DRAM)
read-only memory
flash memory




**Leftovers**

The kind of data we care about the most is our *business data* (any piece of business, personal or other kind of data; in textual, graphical or any other form), and we need a memory medium to keep it long-term.


This memory holds the relevant, working data set (software, business data) that is needed and used in the everyday's computer interaction.

To be able to use the data, data of any kind: business data, program data, system administrative data


but different available memory technologies allow us to prioritize requirements of each memory-needing computer component, and, albeit the big increase in complexity

for various purposes; a CPU needs the ultra-fast temporary memory to store the information needed to process the ongoing task (instructions, data in many forms: operands, intermediate values, temporary values, etc.)

For a memory technology to be considered a universal memory, it would need to have best characteristics of several memory technologies. It would need to:

- operate very quickly (like SRAM cache)
- support a practically unlimited number of read/write cycles (like SRAM and DRAM)
- retain data indefinitely without using power (like flash memory and hard disk drives)
- be sufficiently large for common operating systems and application programs, yet affordable (like hard disk drives).


Secondary memory storage in computers, nowadays commonly realized as an SSD plus HDD combination, provides a permanent storage for programs and data. 

Numerous contemporary technologies offer different ratios in regards to the benefits and pitfalls of their solutions such as the logical size of storage medium, its physical size, volatility, durability, etc., but the most important quality for comfortable work, the sheer speed of data transfer to and from the medium (determined by access/readiness time, random/sequential data transfer time when reading/writing, etc.) remains well below the acceptable bar. 

That bar transpires from the tremendous speeds of the modern CPU, and the secondary memory is still uncapable to keep up with its pace.

There was an analogy that compares the passage of time from the perspective of 3GHz CPU and other devices it needs to communicate with, brought up to a human time scale; the figures are just a sample, possibly off not strictly precise and depend on various components, but still they paint a useful representation.
CPU @ 3GHz | 1 cycle  | 0.3ns


Main, or primary, computer memory is a volatile temporary storage that typically holds a program's instructions and the data a loaded program needs.

collection of Dynamic Random Access Memory (DRAM) chips

organized as an array of bytes, each with its own address.



## Automated Tiered Storage vs. SSD Caching
While tiering solutions and caching may look the same on the surface, the fundamental differences lie in the way the faster storage is utilized and the algorithms used to detect and accelerate frequently accessed data. SSD caching operates much like SRAM-DRAM caches do i.e. they make a copy of frequently accessed blocks of data, for example in 4K cache page sizes, and store the copy in the SSD and use this copy instead of the original data source on the slower backend storage. Every time a storage IO occurs, the caching software look to see if a copy of this data already exists using a variety of algorithms and service the host request from the SSD if it is found. The SSD is used in this case as a lookaside device as it is not part of the primary storage. While some good caching algorithms can demonstrate native SSD performance on reads and short bursts of writes, caching typically operates well below the maximum sustainable rate of the underlying SSD devices as overhead CPU cycles are introduced during the host IO commands that increasingly impact performance as the amount of data cached grows. Tiering on the other hand operates very differently. Using the specific case of SSDs, once data is identified as frequently used, the identified blocks of data are moved in the background to the SSD and not copied as the SSD is being utilized as a primary storage tier, not a look aside copy area. When the data is subsequently accessed, the IOs occur at or near the native performance of the SSDs as there are few, if any, CPU cycles needed to do the simpler virtual to physical addressing translations.
