# Information security

https://en.wikipedia.org/wiki/Information_security


## Firewall

A Firewall is a software or hardware-based network security system.

A **firewall** is a *network security* system that monitors and controls incoming and outgoing *network traffic* based on predetermined security rules. 

A firewall typically establishes a barrier between a trusted network and an untrusted network, such as the Internet.

## Contents

- History
- Types
  - Packet filter
  - Connection tracking
  - Application layer
  - Endpoint specific
- Configuration
- See also
- References
- External links

## History

The term *[firewall][115]* originally referred to a wall intended to confine a fire within a line of adjacent buildings.[[3]][116] Later uses refer to similar structures, such as the [metal sheet][117] separating the [engine][118] compartment of a vehicle or [aircraft][119] from the passenger compartment. The term was applied in the late 1980s to network technology[[4]][120] that emerged when the Internet was fairly new in terms of its global use and connectivity.[[5]][121] The predecessors to firewalls for network security were [routers][122] used in the late 1980s. Because they already segregated networks, routers could apply filtering to packets crossing them.[[6]][123]

Before it was used in real-life computing, the term appeared in the 1983 computer-hacking movie *[WarGames][124]*, and possibly inspired its later use.[[7]][125]

## Types

Firewalls are categorized as a network-based or a host-based system. Network-based firewalls can be positioned anywhere within a [LAN][127] or [WAN][128].[[8]][129] They are either a [software appliance][130] running on general-purpose hardware, a [hardware appliance][131] running on special-purpose hardware, or a [virtual appliance][132] running on a virtual host controlled by a [hypervisor][133]. Firewall appliances may also offer non firewall functionality, such as [DHCP][134][[9]][135][[10]][136] or [VPN][137][[11]][138] services. Host-based firewalls are deployed directly on the [host][139] itself to control network traffic or other computing resources.[[12]][140][[13]][141] This can be a [daemon][142] or [service][143] as a part of the [operating system][144] or an [agent application][145] for protection.

[][146]

An illustration of a network based firewall within a network

### Packet filter[[edit][147]]

The first reported type of network firewall is called a packet filter, which inspect packets transferred between computers. The firewall maintains an [access control list][148] which dictates what packets will be looked at and what action should be applied, if any, with the default action set to silent discard. Three basic actions regarding the packet consist of a silent discard, discard with [Internet Control Message Protocol][149] or [TCP reset][150] response to the sender, and forward to the next hop.[[14]][151] Packets may be filtered by source and destination [IP addresses][152], protocol, source and destination [ports][153]. The bulk of Internet communication in 20th and early 21st century used either [Transmission Control Protocol][154] (TCP) or [User Datagram Protocol][155] (UDP) in conjunction with [well-known ports][156], enabling firewalls of that era to distinguish between specific types of traffic such as web browsing, remote printing, email transmission, and file transfers.[[15]][157][[16]][158]

The first paper published on firewall technology was in 1987 when engineers from [Digital Equipment Corporation][159] (DEC) developed filter systems known as packet filter firewalls. At [AT&T Bell Labs][160], [Bill Cheswick][161] and [Steve Bellovin][162] continued their research in packet filtering and developed a working model for their own company based on their original first-generation architecture.[[17]][163]

### Connection tracking[[edit][164]]

[][165]

From 1989-1990, three colleagues from [AT&T Bell Laboratories][166], Dave Presotto, Janardan Sharma, and Kshitij Nigam, developed the second generation of firewalls, calling them [circuit-level gateways][167].[[18]][168]

Second-generation firewalls perform the work of their first-generation predecessors but also maintain knowledge of specific conversations between endpoints by remembering which port number the two [IP addresses][169] are using at layer 4 ([transport layer][170]) of the [OSI model][171] for their conversation, allowing examination of the overall exchange between the nodes.[[19]][172]

### Application layer[[edit][173]]

[Marcus Ranum][174], Wei Xu, and Peter Churchyard released an application firewall known as Firewall Toolkit (FWTK) in October 1993.[[20]][175] This became the basis for Gauntlet firewall at [Trusted Information Systems][176].[[21]][177][[22]][178]

The key benefit of [application layer][179] filtering is that it can understand certain applications and protocols such as [File Transfer Protocol][180] (FTP), [Domain Name System][181] (DNS), or [Hypertext Transfer Protocol][182] (HTTP). This allows it to identify unwanted applications or services using a non standard port, or detect if an allowed protocol is being abused.[[23]][183] It can also provide unified security management including enforced [encrypted DNS][184] and [virtual private networking][185].[[24]][186][[25]][187][[26]][188]

As of 2012, the [next-generation firewall][189] provides a wider range of inspection at the application layer, extending [deep packet inspection][190] functionality to include, but is not limited to:

-   [Web filtering][191]
-   [Intrusion prevention systems][192]
-   [User identity management][193]
-   [Web application firewall][194]

#### Endpoint specific[[edit][195]]

Endpoint based application firewalls function by determining whether a process should accept any given connection. Application firewalls filter connections by examining the process ID of data packets against a rule set for the local process involved in the data transmission. Application firewalls accomplish their function by hooking into socket calls to filter the connections between the application layer and the lower layers. Application firewalls that hook into socket calls are also referred to as socket filters.[*[citation needed][196]*]

## Configuration

Setting up a firewall is a complex and error-prone task. A network may face security issues due to configuration errors.

## See also
- Air gap (networking)
- Distributed firewall
- DMZ (computing)
- Firewall pinhole
- Firewalls and Internet Security
- Golden Shield Project
- Intrusion detection system
- Mobile security, Security software
- Windows Firewall

## References

1.  **[^][210]** Boudriga, Noureddine (2010). [*Security of mobile communications*][211]. Boca Raton: CRC Press. pp. [32][212]-33. [ISBN][213] [978-0849379420][214].
2.  **[^][215]** Oppliger, Rolf (May 1997). "Internet Security: FIREWALLS and BEYOND". *Communications of the ACM*. **40** (5): 94. [doi][216]:[10.1145/253769.253802][217]. [S2CID][218] [15271915][219].
3.  **[^][220]** Canavan, John E. (2001). *Fundamentals of Network Security* (1st ed.). Boston, MA: Artech House. p. 212. [ISBN][221] [9781580531764][222].
4.  **[^][223]** [Cheswick, William R.][224]; [Bellovin, Steven M.][225] (1994). *[Firewalls and Internet Security][226]: Repelling The Wily Hacker*. [ISBN][227] [978-0201633573][228].
5.  **[^][229]** Liska, Allan (Dec 10, 2014). *Building an Intelligence-Led Security Program*. Syngress. p. 3. [ISBN][230] [978-0128023709][231].
6.  **[^][232]** Ingham, Kenneth; Forrest, Stephanie (2002). ["A History and Survey of Network Firewalls"][233] (PDF). Retrieved 2011-11-25.
7.  **[^][234]** Boren, Jacob (2019-11-24). ["10 Times '80s Sci-Fi Movies Predicted The Future"][235]. *ScreenRant*. Retrieved 2021-03-04.
8.  **[^][236]** Naveen, Sharanya. ["Firewall"][237]. Retrieved 7 June 2016.
9.  **[^][238]** ["Firewall as a DHCP Server and Client"][239]. *Palo Alto Networks*. Retrieved 2016-02-08.
10.  **[^][240]** ["DHCP"][241]. *www.shorewall.net*. Retrieved 2016-02-08.
11.  **[^][242]** ["What is a VPN Firewall? - Definition from Techopedia"][243]. *Techopedia.com*. Retrieved 2016-02-08.
12.  **[^][244]** Vacca, John R. (2009). *Computer and information security handbook*. Amsterdam: Elsevier. p. 355. [ISBN][245] [9780080921945][246].
13.  **[^][247]** ["What is Firewall?"][248]. Retrieved 2015-02-12.
14.  **[^][249]** Peltier, Justin; Peltier, Thomas R. (2007). *Complete Guide to CISM Certification*. Hoboken: CRC Press. p. 210. [ISBN][250] [9781420013252][251].
15.  **[^][252]** ["TCP vs. UDP : The Difference Between them"][253]. *www.skullbox.net*. Retrieved 2018-04-09.
16.  **[^][254]** Cheswick, William R.; Bellovin, Steven M.; Rubin, Aviel D. (2003). *[Firewalls and Internet Security][255] repelling the wily hacker* (2 ed.). [ISBN][256] [9780201634662][257].
17.  **[^][258]** Ingham, Kenneth; Forrest, Stephanie (2002). ["A History and Survey of Network Firewalls"][259] (PDF). p. 4. Retrieved 2011-11-25.
18.  **[^][260]** M. Afshar Alam; Tamanna Siddiqui; K. R. Seeja (2013). [*Recent Developments in Computing and Its Applications*][261]. I. K. International Pvt Ltd. p. 513. [ISBN][262] [978-93-80026-78-7][263].
19.  **[^][264]** ["Firewalls"][265]. MemeBridge. Retrieved 13 June 2014.
20.  **[^][266]** ["Firewall toolkit V1.0 release"][267]. Retrieved 2018-12-28.
21.  **[^][268]** John Pescatore (October 2, 2008). ["This Week in Network Security History: The Firewall Toolkit"][269]. Archived from [the original][270] on April 29, 2016. Retrieved 2018-12-28.
22.  **[^][271]** Marcus J. Ranum; Frederick Avolio. ["FWTK history"][272].
23.  **[^][273]** ["What is Layer 7? How Layer 7 of the Internet Works"][274]. *Cloudflare*. Retrieved Aug 29, 2020.
24.  **[^][275]** ["5 Firewall Features you Must-Have"][276]. *Check Point Software*. Retrieved 2021-11-08.
25.  **[^][277]** Stanfield, Nathan (2019-12-04). ["11 Firewall Features You Can't Live Without"][278]. *Stanfield IT*. Retrieved 2021-11-08.
26.  **[^][279]** ["Safing Portmaster"][280]. *safing.io*. Retrieved 2021-11-08.
27.  **[^][281]** Voronkov, Artem; Iwaya, Leonardo Horn; Martucci, Leonardo A.; Lindskog, Stefan (2018-01-12). ["Systematic Literature Review on Usability of Firewall Configuration"][282]. *ACM Computing Surveys*. **50** (6): 1-35. [doi][283]:[10.1145/3130876][284]. [ISSN][285] [0360-0300][286]. [S2CID][287] [6570517][288].

## External links

- [Evolution of the Firewall Industry][291] - discusses different architectures, how packets are processed, and provides a timeline of the evolution.
- [A History and Survey of Network Firewalls][292] - provides an overview of firewalls at various ISO levels, with references to original papers where early firewall work was reported.

Firewall software
- [Application firewall][296]
- [Context-based access control][297]
- [Personal firewall][298]
- [Stateful firewall][299]
- [Virtual firewall][300]

Appliances
-   [Palo Alto PA-Series][358]
-   [F5 BIG-IP iSeries][359]
-   [FortiGate Series][360]
-   [Novell BorderManager][361]
-   [Vyatta][362]
-   [ZoneAlarm Z100G][363]
-   [Zorp firewall][364]

-   [Comparison of firewalls][365]
-   [List of router or firewall distributions][366]


Categories
-   [Network management][368]
-   [Firewall software][369]
-   [Packets (information technology)][370]
-   [Data security][371]
-   [Cyberwarfare][372]
-   [American inventions][373]
