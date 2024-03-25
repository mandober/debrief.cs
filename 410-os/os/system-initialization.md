# System Initialization

- Linux startup process
- Linux system initialization
- Linux boot process


## init system

In Linux and other Unix-like operating systems, the initialization process called `init` is the first process executed by the kernel at boot time. This processed is identified by the process id number (PID) 1. It runs in the background until the system is shut down.

The init process starts all other processes, which mostly include other daemons (i.e. services that run in the backgrund), so init is the parent process of all other processes on the system.

Each process can start many other child processes, and if a parent process dies, `init` fosters its orphaned children.

Over the years, many init systems have emerged in major Linux distributions:
* systemV init
* systemd
* upstart
* openrc
* runit

Almost all Linux distributions first used SysV init scheme except Gentoo which has a custom init and Slackware using BSD-style init scheme.

## SystemD

`systemd` is the youngest init scheme on the Linux platform that was introduced in Fedora 15. It is comprehensively distinct from other init systems, in the way it practically approaches system and services management. It is also compatible with SysV and LBS init scripts.

systemd features:
- binary format (reason for the hate)
- Clean, straightforward and efficient design
- Concurrent and parallel processing at bootup
- Better APIv
- Enables removal of optional processes
- Supports event logging using journald
- Supports job scheduling using systemd calender timers
- Storage of logs in binary files
- Preservation of systemd state for future reference
- Better integration with GNOME plus many more

- [https://fedoraproject.org/wiki/Systemd](https://fedoraproject.org/wiki/Systemd)
- [The Story Behind: Why init Needed to be Replaced with systemd in Linux](https://www.tecmint.com/systemd-replaces-init-in-linux/)

---

Unix initialization files: command scripts that perform most of the work associated with taking the system to multiuser mode. Although similar activities take place under System V and BSD, the mechanisms by which they are initiated are quite different. Of the systems we are considering, FreeBSD follows the traditional BSD style, AIX is a hybrid of the two, and all the other versions use the System V scheme.

Although the names, directory locations, and actual shell program code for system initialization scripts varies widely between BSD-based versions of Unix and those derived from System V, the activities accomplished by each set of scripts as a whole differs in only minor ways. In high-level terms, the BSD boot process is controlled by a relatively small number of scripts in the /etc directory, with names beginning with rc, which are executed sequentially. In contrast, System V executes a large number of scripts (as high as 50 or more), organized in a three-tiered hierarchy.


---


Linux startup process
https://en.wikipedia.org/wiki/Linux_startup_process

Init
https://en.wikipedia.org/wiki/Init

Essential System Administration, 3rd Edition by Æleen Frisch
https://www.oreilly.com/library/view/essential-system-administration/0596003439/ch04s02.html

Debian Manual: The system initialization
https://www.debian.org/doc/manuals/debian-reference/ch03.en.html

How Linux Boots
http://etutorials.org/Linux+systems/how+linux+works/Chapter+3+How+Linux+Boots/

An introduction to the Linux boot and startup processes
https://opensource.com/article/17/2/linux-boot-and-startup

System Initialization redhat
https://miteshshah.github.io/linux/basics/system-initialization/

Linux System Initialization
https://www.linuxjournal.com/article/3016

5 Best Modern Linux init Systems (1992-2015)
https://www.tecmint.com/best-linux-init-systems/

The Linux Booting Process - 6 Steps Described in Detail
https://www.freecodecamp.org/news/the-linux-booting-process-6-steps-described-in-detail/

*course* Linux: Kernels and Logging for System Administration
https://www.linkedin.com/learning/linux-kernels-and-logging-for-system-administration/understanding-the-linux-boot-process

linux-boot-process-system-initialization
http://www.cyberphoton.com/linux-boot-process-system-initialization/
