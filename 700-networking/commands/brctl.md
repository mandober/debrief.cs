# brctl

https://man7.org/linux/man-pages/man8/brctl.8.html

brctl - Ethernet bridge administration

`brctl` is used to set up, maintain, and inspect the Ethernet bridge configuration in the Linux kernel.

An Ethernet bridge is a device commonly used to connect different networks of Ethernets together, so that these Ethernets will appear as one Ethernet to the participants.

Each of the Ethernets being connected corresponds to one physical interface in the bridge. These individual Ethernets are bundled into one bigger (logical) Ethernet, this bigger Ethernet corresponds to the bridge network interface.
