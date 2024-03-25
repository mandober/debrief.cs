# Linux booting process

https://en.wikipedia.org/wiki/Linux_startup_process

Early stages of the Linux startup process depend very much on the computer architecture. IBM PC compatible hardware is commonly used with Linux, where the BIOS plays a crucial role when a computer is turned on:

* *BIOS* performs tasks specific to the actual platform, enumerating and initializing the hardware (at least the devices involved in booting), after which it loads and executes the boot code from the configured boot device.

* *boot loader* then takes control, possibly presenting the user with a menu of boot options or going straight to the default option. The boot loader then loads the *kernel* into the primary memory and yields control to it.

* *kernel* (first decompress itself, if compressed) sets up system functions such as essential hardware and memory paging, and calls `start_kernel()` which performs the majority of system setup (interrupts, the rest of memory management, device and driver initialization, etc.). It then starts up, separately, the `idle` process, `scheduler` and the `init` process, which is executed in *user space*.

* *init* either consists of scripts that are executed by the shell (in sysv) or configuration files that are executed by the binary components (in systemd). Init has specific *run-levels* (sysv) or *targets* (systemd), each of which consists of specific set of services (daemons). These provide various non-OS services and structures and form the *user environment*. A typical server environment starts a web server, database services and networking.

* The typical desktop environment begins with a daemon, called the *display manager*, that starts a *graphic environment* which consists of a *graphical server* that provides a basic underlying graphical stack and a login manager. After the user has logged in, the *session manager* starts a session. A session is a set of programs such as UI elements (panels, desktops, applets, etc.) which, together, can form a complete *desktop environment*.

* On shutdown, init is called to close down all *user space* functionality in a controlled manner. Once all the other processes have terminated, init makes a system call to the kernel instructing it to shut the system down.

wsl --import focal V:\wsl\focal T:\wsl\wsl-distros\focal-server-cloudimg-amd64-wsl.rootfs.tar.gz
