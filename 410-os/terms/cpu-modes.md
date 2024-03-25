# CPU modes

https://en.wikipedia.org/wiki/CPU_modes

**CPU modes** (CPU privilege levels) are operating modes of the CPU under a particular computer architecture which places restrictions on the type and scope of operations that can be performed by processes. This design allows the OS to run with more privileges than application software.

Ideally, only highly trusted kernel code is allowed to execute in the *unrestricted mode*. Everything else runs in a *restricted mode* and needs to use a system call (via interrupt) to request the kernel to perform an operation on their behalf, thereby making it impossible for untrusted programs to compromise the system. In practice, however, system calls take time, which hurts performance, so it is not uncommon for system designers to allow some time-critical software (especially device drivers) to run with full kernel privileges.

Multiple modes can be implemented, allowing a hypervisor to run multiple OS supervisors beneath it, which is the basic design of many virtual machine systems available today.

## Mode types

Further information on interoperation between CPU and OS levels of abstraction see [Protection ring](https://en.wikipedia.org/wiki/Protection_ring).

### Kernel mode

The unrestricted mode is often called *kernel mode*, but many other designations exist (master mode, supervisor mode, privileged mode).

In kernel mode, the CPU may perform any operation allowed by its architecture; any instruction may be executed, any I/O operation initiated, any area of memory accessed, and so on.

In the other CPU modes, certain restrictions on CPU operations are enforced by the hardware. Typically, certain instructions are not permitted (especially those - including I/O operations - that could alter the global state of the machine), some memory areas cannot be accessed, etc.

### User mode

User-mode capabilities of the CPU are typically a subset of those available in kernel mode, but in some cases, such as hardware emulation of non-native architectures, they may be significantly different from those available in standard kernel mode.

Restricted modes are usually called *user modes*, but many other designations exist (slave mode, problem state).

Some CPU architectures support *multiple user modes* often with a hierarchy of privileges*. These architectures are often said to have *ring-based security*, wherein the hierarchy of privileges resembles a set of concentric rings, with the kernel mode in the center.

`Multics` hardware was the first significant implementation of ring security, but many other hardware platforms have been designed along similar lines, including the *Intel 80286 protected mode*.

Mode protection may extend to resources beyond the CPU hardware itself. 

Hardware registers track the current operating mode of the CPU, but additional virtual-memory registers, page-table entries, and other data may track mode identifiers for other resources.

For example, a CPU may be operating in *Ring 0* as indicated by a status word in the CPU itself, but every access to memory may additionally be validated against a separate ring number for the virtual-memory segment targeted by the access, and/or against a ring number for the physical page (if any) being targeted. This has been demonstrated with the PSP handheld system.


Hardware that meets the Popek and Goldberg virtualization requirements makes writing software to efficiently support a virtual machine much simpler. Such a system can run software that "believes" it is running in supervisor mode, but is actually running in user mode.


## Microprocessor modes for the x86 architecture

(first supported platform in parentheses)

- Real mode                 (Intel 8086)
- Unreal mode               (Intel 80286)
- Virtual 8086 mode         (Intel 80386)
- Protected mode            (Intel 80286)
- Long mode                 (AMD Athlon 64)
- x86 virtualization        (Intel Pentium 4, AMD Athlon 64)
- System Management Mode    (Intel 386SL)
- 8080 emulation mode       (NEC V20/V30 only)
- AIS mode                  (VIA C3 only)


## Refs
https://en.wikipedia.org/wiki/Interrupt
https://en.wikipedia.org/wiki/Device_driver
https://en.wikipedia.org/wiki/Hypervisor
https://en.wikipedia.org/wiki/Kernel_(operating_system)
https://en.wikipedia.org/wiki/Virtual_machine
https://en.wikipedia.org/wiki/Protection_ring
