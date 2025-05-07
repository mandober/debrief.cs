# Memory overcommitment

https://en.wikipedia.org/wiki/Memory_overcommitment

Memory overcommitment is about assigning more memory to virtual devices (or processes) than the amount of physical memory available on the host.

This is possible because virtual machines (or processes) do not necessarily use all, or even most, memory they have been assigned.

For example, if 4 virtual machines have 1 GB of memory each on a physical machine with 4 GB of memory, but those VMs are actually using only 500 MB, then it's possible to create additional VMs that take advantage of the 500 MB each existing VM is not useing.

*Memory swapping* is then used to handle spikes in memory usage. The disadvantage of this approach is that memory swap files are slower to read from than the 'actual' memory, which can lead to performance drops and disk trashing.

Another disadvantage is that, when running out of physical memory, the system is relying that the applications will not use the additional memory despite it being allocated to them. Should a program do so anyway, it or another program has to be killed in order to free up memory to prevent the system from freezing. The [OOM Killer](https://en.wikipedia.org/wiki/Out_of_memory#Recovery) is what performs this task.

While memory overcommitment is usually talked about in the context of virtualization, it is actually a generalized concept; Windows NT contained overcommitment features, as do most modern generalized kernels, including Linux.


https://en.wikipedia.org/wiki/Memory_paging
https://en.wikipedia.org/wiki/Category:Memory_management
