# Comodo firewall

`Global Rules` apply to all traffic in and out of the computer. This makes them different to Application Rules, which apply to the traffic of a specific application.

Comodo firewall analyzes every packet of data in and out of the PC using combination of application rules and global rules.

Order of consultation
- Outgoing connection attempts: Application Rules, Global Rules
- Incoming connection attempts: Global Rules, Application Rules

```
  Local Computer
     ↓      ↑
Application Rules
     ↓      ↑
   Global Rules
     ↓      ↑
   OUT      IN
     ↓      ↑
     Internet
```

So outgoing traffic has to pass the application rule first then any global rules before it is allowed out. Similarly, incoming traffic has to pass the global rules first then the application rules.

Global Rules are mainly, but not exclusively, used to filter incoming traffic for protocols other than TCP or UDP.

Global Rules (common, perhaps default):
* Allow All Outgoing requests if Target in [LAN#1]
* Allow All Incoming requests if Sender in [LAN#1]
+ Allow IP Out from MAC any to MAC any where protocol is any
- Allow ICMPv4 In from MAC any to MAC any where ICMP msg TIME EXCEEDED
- Allow ICMPv4 In from MAC any to MAC any where ICMP msg FRAGMENTATION NEEDED
+ Block IP In from MAC any to MAC any where protocol is any


As a packet filtering firewall, Comodo Firewall analyzes the attributes of every packet of data that attempts to enter or leave your computer.
Attributes of a packet include
- the application that is sending or receiving the packet
- the protocol it is using
- the direction in which it is traveling
- the source and destination IP addresses
- the ports it is attempting to traverse

The firewall then tries to find a firewall rule that matches all the conditional attributes of this packet in order to determine whether or not it should be allowed to proceed. If there is no corresponding firewall rule, then the connection is automatically blocked until a rule is created.

The actual conditions (attributes) of a particular rule are determined by the protocol:
- for IP the rule has the form:
  Action | Protocol | Direction | Src | Dest | IP Details
- for TCP, UDP, TCP and UDP, the rule has the form:
  Action | Protocol | Direction | Src | Dest| SrcPort | DestPort
- for ICMP the rule has the form:
  Action | Protocol | Direction | Src | Dest| ICMP Details

- Actions: Allow, Block, Ask
- Protocols: TCP, UDP, TCP or UDP, ICMP, IP
- Direction: In, Out, In/Out
- Source Address: The origin of the connection attempt. 'From' Address
- Destination Address: 'To' Address
- Source Port: 'Any', 'Port #', 'Port Range' or 'Port Set'
- Destination Port: 'Any', 'Port #', 'Port Range' or 'Port Set'
- ICMP Details: The Internet Control Message Protocol (ICMP) message that must be detected to trigger the action.
- IP Details: The type of internet protocol (IP) that must be detected to trigger the action.


**ICMP** (Internet Control Message Protocol) packets contain error and control information which is used to announce network errors, network congestion, timeouts, and to assist in troubleshooting. It is used mainly for performing traces and pings. Pinging is frequently used to perform a quick test before attempting to initiate communications. If you are using or have used a peer-to-peer file-sharing program, you might find yourself being pinged a lot. So you can create rules to manage specific types of ping requests. You can create rules to manage inbound ICMP packets that provide you with information and minimize security risk.

**IP**
When you select IP as the protocol in General Settings, you are shown a list of IP message type in the 'IP Details' tab.

**IP Details**
The list of types of IP protocols:
- custom
- any
- TCP
- UDP
- ICMPv4
- IGMP
- raw IP
- PUP
- GGP
- GRE
- RSVP
- ICMPv6

**Block fragmented IP traffic** - When a connection is opened between two computers, they must agree on a *Maximum Transmission Unit* (MTU). *IP Datagram fragmentation* occurs when data passes through a router with an MTU less than the MTU you are using i.e when a datagram is larger than the MTU of the network over which it must be sent, it is divided into smaller 'fragments' which are each sent separately. Fragmented IP packets can create threats similar to a DOS attack. Moreover, these fragmentations can double the amount of time it takes to send a single packet and slow down your download time.

**Enable anti-ARP spoofing** - A gratuitous *Address Resolution Protocol* (ARP) frame is an ARP Reply that is broadcast to all machines in a network and is not in response to any ARP Request. When an ARP Reply is broadcast, all hosts are required to update their local ARP caches, whether or not the ARP Reply was in response to an ARP Request they had issued. *Gratuitous ARP frames* are important as they update your machine's ARP cache whenever there is a change to another machine on the network (for example, if a network card is replaced in a machine on the network, then a gratuitous ARP frame informs your machine of this change and requests to update your ARP cache so that data can be correctly routed). However, while ARP calls might be relevant to an ever shifting office network comprising many machines that need to keep each other updated, it is of far less relevance to a single computer in LAN. Enabling this setting blocks such requests - protecting the ARP cache from potentially malicious updates (disabled by default).
