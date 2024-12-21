# ALG

Application-layer Gateway (ALG) is a *set of firewall modules* which help cope with some peculiarities of those protocols.

Some protocols and applications require special handling of the IP payload to make them work with NAT. Each ALG provides special handling for a specific protocol or application. A number of ALGs for common applications are enabled by default.

ALG configuration on some routers is presented as a list of protocols each of which can be un/checked: PPTP, IPSec, RTSP, FTP, TFTP, SIP, H323, L2TP.

On a *stateful firewall*, the "state" is usually tied to just addresses and port numbers. That is, you send a packet from port X to server's port Y, and the firewall automatically allows the reverse back in. However, some protocols use additional connections; e.g. FTP in 'active' mode makes the server connect back to you on a separate port - so, the firewall needs an ALG module that snoops on FTP commands and automatically adds the necessary rules (this includes automagic port forwarding when NAT is in use).

Firewalls with NAT enabled translate IP addresses and TCP/UDP ports within the corresponding headers. But some protocols also send the client's or server's address inside packets themselves; e.g. FTP does this (in active mode the client sends its own address, in passive mode the server does). An ALG tries to do the appropriate rewriting of those FTP commands.

Usually, what happens if the appropriate ALG is not present is that certain connections simply hang in the middle. For example, you can log in to the FTP server, but it timeouts while trying to get the file list.

Note: the secure versions of these protocols (e.g. SFTP) cannot be managed by ALG because encryption prevents the ALG to look inside the packets. You could say ALGs are tools for disguising problems.

As for which you can disable in a router's settings web client: that really depends on which protocols you use, and whether your particular router's ALG is of acceptable quality. (There have been some models which would utterly break connections instead of 'fixing' them); e.g. disabling H.323 support (an old VoIP protocol) should be fine.
