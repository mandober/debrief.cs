# traceroute

https://man7.org/linux/man-pages/man8/traceroute.8.html

traceroute - print the route packets trace to network host

## SYNOPSIS

  traceroute [-46dFITUnreAV] [-f first_ttl] [-g gate,...]
          [-i device] [-m max_ttl] [-p port] [-s src_addr]
          [-q nqueries] [-N squeries] [-t tos]
          [-l flow_label] [-w waittimes] [-z sendwait] [-UL] [-D]
          [-P proto] [--sport=port] [-M method] [-O mod_options]
          [--mtu] [--back]
          host [packet_len]
  traceroute6  [options]

## DESCRIPTION

`traceroute` tracks the route packets taken from an IP network on their way to a given host. It utilizes the IP protocol's Time To Live (TTL) field and attempts to elicit an ICMP `TIME_EXCEEDED` response from each gateway along the path to the host.

`traceroute6` is equivalent to `traceroute -6`

The only required parameter is the name or IP address of the destination host. The optional `packet_len` is the total size of the probing packet (default 60 bytes for IPv4 and 80 for IPv6). The specified size can be ignored in some situations or increased up to a minimal value.

This program attempts to trace the route an IP packet would follow to some internet host by launching probe packets with a small TTL then listening for an ICMP `TIME_EXCEEDED` reply from a gateway.

We start our probes with a TTL of one and increase by one until we get an ICMP `PORT_UNREACHABLE` (or TCP reset), which means we got to the "host", or hit a max (which defaults to 30 hops). 

Three probes (by default) are sent at each TTL setting and a line is printed showing the TTL, address of the gateway and round trip time of each probe.

The address can be followed by additional information when requested. If the probe answers come from different gateways, the address of each responding system will be printed. If there is no response within a certain timeout, an `*` (asterisk) is printed for that probe.

After the trip time, some additional annotation can be printed: 
- `!H`, `!N`, or `!P` (host, network or protocol unreachable)
- `!S` (source route failed)
- `!F` (fragmentation needed)
- `!X` (communication administratively prohibited)
- `!V` (host precedence violation)
- `!C` (precedence cutoff in effect)
- `!<num>` (ICMP unreachable code <num>)

If almost all the probes result in some kind ofunreachable, traceroute will give up and exit.

We don't want the destination host to process the UDP probe packets, so the destination port is set to an unlikely value (you can change it with the `-p `flag). There is no such a problem for ICMP or TCP tracerouting (for TCP we use *half-open technique*, which prevents our probes to be seen by applications on the destination host).

In the modern network environment the traditional traceroute methods can not be always applicable, because of widespread use of firewalls. Such firewalls filter the "unlikely" UDP ports, or even ICMP echoes. To solve this, some additional tracerouting methods are implemented (including TCP), (see "list of available methods" below). Such methods try to use particular protocol and source/destination port, in order to bypass firewalls (to be seen by firewalls just as a start of allowed type of a network session).
