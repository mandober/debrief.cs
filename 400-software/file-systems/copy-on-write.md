# Copy-on-write

https://en.wikipedia.org/wiki/Copy-on-write

**Copy-on-write (COW)**, sometimes referred to as *implicit sharing* or *shadowing*, is a *resource-management technique* used in programming to efficiently implement operations that duplicate modifiable resources.

Without COW, a resource (e.g. value object) that is accessed to be worked on, is immediately copied and the operation proceeds to work on the duplicate. Such operations always copy a resource regardless of whether it is eventually modified at all. COW mechanism takes this into account, so an accessed resource is shared, and duplicated only when a modification is made for the first time.

> The copy operation is deferred until the first write.

By sharing resources in this way, it is possible to significantly reduce the resource consumption of unmodified copies, while adding a small overhead to resource-modifying operations.

Copy-on-write finds its main use in sharing the virtual memory of operating system processes, in the implementation of the `fork` system call. Typically, the process does not modify any memory and immediately executes a new process, replacing the address space entirely. Thus, it would be wasteful to copy all of the process's memory during a fork, and instead the copy-on-write technique is used.

Copy-on-write can be implemented efficiently using the page table by marking certain pages of memory as read-only and keeping a count of the number of references to the page. When data is written to these pages, the kernel intercepts the write attempt and allocates a new physical page, initialized with the copy-on-write data, although the allocation can be skipped if there is only one reference. The kernel then updates the page table with the new (writable) page, decrements the number of references, and performs the write. The new allocation ensures that a change in the memory of one process is not visible in another's.

The copy-on-write technique can be extended to support efficient memory allocation by having a page of physical memory filled with zeros. When the memory is allocated, all the pages returned refer to the page of zeros and are all marked copy-on-write. This way, physical memory is not allocated for the process until data is written, allowing processes to reserve more virtual memory than physical memory and use memory sparsely, at the risk of running out of virtual address space. The combined algorithm is similar to *demand paging*. Copy-on-write pages are also used in the Linux kernel's kernel *same-page merging* feature.

Loading the libraries for an application is also a use of copy-on-write technique. The dynamic linker maps libraries as private like follows. Any writing action on the libraries will trigger a COW in virtual memory management.

COW is also used in library, application and system code.

In multithreaded systems, COW can be implemented without the use of traditional *locking* and instead use *compare-and-swap* to increment or decrement the internal reference counter. Since the original resource will never be altered, it can safely be copied by multiple threads (after the reference count was increased) without the need of performance-expensive locking such as *mutexes*. If the reference counter turns 0, then by definition only 1 thread was holding a reference so the resource can safely be de-allocated from memory, again without the use of performance-expensive locking mechanisms. The benefit of not having to copy the resource (and the resulting performance gain over traditional deep-copying) will therefore be valid in both single- and multithreaded systems.

The *compare-and-swap (CAS)* is an atomic instruction used in multithreading to achieve synchronization. It compares the contents of a memory location with a given value and, only if they are the same, modifies the contents of that memory location to a new given value. This is done as a single atomic operation.

The COW technic is also used in programming languages. The string class provided by the C++ standard library was specifically designed to allow COW implementations in the initial C++98 standard, but not in the newer C++11 standard. In the PHP programming language, all types except references are implemented as copy-on-write. In the Qt framework, many types are copy-on-write.

In computer storage, COW is used as the underlying mechanism for snapshots, such as those provided by logical volume management, file systems such as Btrfs and ZFS, and database servers. Typically, the snapshots store only the modified data, and are stored close to the main array, so they are only a weak form of incremental backup and cannot substitute for a full backup.
