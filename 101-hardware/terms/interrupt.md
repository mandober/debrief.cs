# Interrupt

https://en.wikipedia.org/wiki/Interrupt

An interrupt is an input signal to the CPU indicating an event that needs attention. An interrupt signal alerts the processor and serves as a request for the processor to interrupt the currently executing code, so that the event can be processed in a timely manner. If the request is accepted, the processor responds by suspending its current activities, saving its state, and executing a function called an *interrupt handler* (or an interrupt service routine, ISR) to deal with the event. This interruption is temporary, and, unless the interrupt indicates a fatal error, the processor resumes normal activities after the interrupt handler finishes.

Interrupts are commonly used by hardware devices to indicate electronic or physical state changes that require attention. Interrupts are also commonly used to implement computer multitasking, especially in real-time computing. Systems that use interrupts in these ways are said to be interrupt-driven.

Interrupt signals may be issued in response to hardware or software events, classified as *hardware interrupts* or *software interrupts*.

For any particular processor, the number of hardware interrupts is limited by the number of *interrupt request* (IRQ) signals to the processor, whereas the number of software interrupts is determined by the processor's instruction set design.

A **hardware interrupt request** (IRQ) is an electronic signal issued by a hardware device that may be external (disk controller) or internal to the processor (timer) to communicate that the device needs attention.

For example, pressing a keyboard key or moving a mouse (plugged into a PS/2 port) triggers hardware interrupts that cause the processor to read the keystroke or mouse position.

In many systems, each device is associated with a particular IRQ signal. This makes it possible to quickly determine which hardware device is requesting service, and to expedite servicing of that device.

A **software interrupt** is requested by the CPU itself upon executing particular instructions or when certain conditions are met. Every software interrupt signal is associated with a particular *interrupt handler*.

A software interrupt may be intentionally caused by executing a special instruction which, by design, invokes an interrupt when executed. Such instructions function similarly to subroutine calls and are used for a variety of purposes, such as requesting OS services and interacting with drivers.

Software interrupts may also be unexpectedly triggered by program execution errors. These interrupts are called *traps* or *exceptions*. For example, a divide-by-zero exception will be "thrown" (a software interrupt is requested). Typically, the OS will catch and handle this exception.

Interrupts may be implemented in hardware as a distinct component with control lines, or they may be integrated into the memory subsystem.

Interrupts are similar to *signals*, the difference being that signals are used for *inter-process communication* (IPC), mediated by the kernel (possibly via system calls) and handled by processes, while interrupts are mediated by the processor and handled by the kernel. The kernel may pass an interrupt as a signal to the process that caused it (typical examples are SIGSEGV, SIGBUS, SIGILL and SIGFPE).
