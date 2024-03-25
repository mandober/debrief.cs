# Firewall software topics

* Linux
  * Apps
    - FireHOL
      FireHOL is a shell script designed as a wrapper for `iptables` written to ease the customization of the Linux kernel's firewall `netfilter`.
    - Firestarter
      Firestarter is a personal firewall tool that uses the `Netfilter` (iptables/ipchains) system built into the Linux kernel. Firestarter provides real-time traffic monitoring, facilities port forwarding, internet connection sharing, DHCP service.
    - firewalld
      firewalld acts as a front-end for `netfilter`. current default backend is `nftables`, can be an alternative to `nft` and `iptables`.
    - Netfilter
      Netfilter is a framework provided by the Linux kernel that allows various networking-related operations to be implemented in the form of customized handlers. Netfilter offers various functions and operations for packet filtering, network address translation, and port translation, which provide the functionality required for directing packets through a network and prohibiting packets from reaching sensitive network locations.
      - ipset
      - iptables
        iptables is a user-space utility program that allows admins to configure the IP packet filter rules of the Linux kernel firewall, implemented as different Netfilter modules. The filters are organized in different tables, which contain chains of rules for how to treat network traffic packets.
      - NuFW
        NuFW is a software package that extends Netfilter (the Linux kernel-internal packet filtering firewall module). NuFW adds authentication to filtering rules. NuFW is also provided as a hardware firewall, in the EdenWall firewalling appliance. NuFW has been restarted by the FFI and renamed into UFWI.
    - MoBlock
      MoBlock is free software for blocking connections to and from a specified range of hosts. Moblock is an IP address filtering program for Linux that is similar to PeerGuardian for Microsoft Windows. Its development has been stopped in favor of Phoenix Labs' official PeerGuardian Linux and parts of its code have been merged in PeerGuardian Linux.
    - nftables
      nftables is a subsystem of the Linux kernel providing filtering and classification of network packets/datagrams/frames. It has been available since Linux kernel 3.13 released on 19 January 2014.
    - Privoxy
      Privoxy is a free non-caching web proxy with filtering capabilities for enhancing privacy, manipulating cookies and modifying web page data and HTTP headers before the page is rendered by the browser. Privoxy is a "privacy enhancing proxy", filtering web pages and removing advertisements. Privoxy can be customized by users, for both stand-alone systems and multi-user networks.
    - Shorewall
      Shorewall is an open source firewall tool for Linux that builds upon the Netfilter (iptables/ipchains) system built into the Linux kernel, making it easier to manage more complex configuration schemes by providing a higher level of abstraction for describing rules using text files.
    - Squid
      Squid is a caching and forwarding HTTP web proxy. It has a wide variety of uses, including speeding up a web server by caching repeated requests, caching web, DNS and other computer network lookups for a group of people sharing network resources, and aiding security by filtering traffic.
    - Uncomplicated Firewall
      UFW manages a netfilter firewall as a cli tool consisting of simple commands, and uses `iptables` for configuration. UFW is available by default in all Ubuntu installations after 8.04 LTS.
  * Distros
    - Endian Firewall
      Endian Firewall is an open-source router, firewall and gateway security Linux distribution developed by the South Tyrolean company Endian. The product is available as either free software, commercial software with guaranteed support services, or as a hardware appliance (including support services).
    - IPFire
      IPFire is a hardened open source Linux distribution that primarily performs as a router and a firewall; a standalone firewall system with a web-based management console for configuration.
    - LEDE
    - OpenWrt
      (open wireless router) is an open-source project for embedded operating systems based on Linux, primarily used on embedded devices to route network traffic. The components are Linux, util-linux, musl, BusyBox. All components have been optimized to be small enough to fit into the limited storage and memory available in home routers.
    - SmoothWall
      Linux distro designed to be used as an open source firewall. Smoothwall is configured via a web-based GUI and requires little knowledge to use.
    - Zeroshell
      small open-source Linux distro for servers and embedded systems which aims to provide network services.
  * BSD
    * Apps
      - IPFilter
      - ipfirewall
      - NPF
      - PF
        - pfsync
    * Distros
      - M0n0wall
      - OPNsense
      - pfSense
      - SmallWall
  * Windows
    * Commercial
      - Check Point Integrity
      - Kaspersky Internet Security
      - McAfee Personal Firewall Plus
      - Microsoft Forefront Threat Management Gateway
      - Norton 360
      - Norton Internet Security
      - Norton Personal Firewall
      - Outpost Firewall Pro
      - Symantec Endpoint Protection
      - Trend Micro Internet Security
      - Windows Firewall
      - Windows Live OneCare
      - WinGate
      - WinRoute
    * Freemium
      - Comodo Internet Security
      - ZoneAlarm
    * Open-source
      - PeerBlock
      - PeerGuardian
* Appliances
  - Palo Alto PA-Series
  - F5 BIG-IP iSeries
  - FortiGate Series
  - Novell Border Manager
  - Vyatta
  - ZoneAlarm Z100G
  - Zorp firewall






https://en.wikipedia.org/wiki/Netfilter
https://en.wikipedia.org/wiki/Iptables

https://en.wikipedia.org/wiki/Windows_Firewall

* Comparison of firewalls
https://en.wikipedia.org/wiki/Comparison_of_firewalls

* List of router or firewall distributions
https://en.wikipedia.org/wiki/List_of_router_or_firewall_distributions

* Application firewall
https://en.wikipedia.org/wiki/Application_firewall

* Context-based access control
https://en.wikipedia.org/wiki/Context-based_access_control

* Personal firewall
https://en.wikipedia.org/wiki/Personal_firewall

* Stateful firewall
https://en.wikipedia.org/wiki/Stateful_firewall

* Virtual firewall
https://en.wikipedia.org/wiki/Virtual_firewall
