# Socket system calls
- `socket(2)` - create a socket
- `getsockopt(2)`, `setsockopt()` - get and set options on socket
- `recv(2)` - read from a socket
- `connect(2)`, `send(2)`, `sendto(2)`, `sendmsg(2)` - connect & write to a socket
- `bind(2)`, `accept(2)`, `accept4(2)` - binad & listen on a socket

# Host <-> Network byte order translation
- `htons(3)`, `htonl(3)`, `ntohs(3)`, `ntohl(3)` from `<arpa/inet.h>`

# Text <-> binary IP address translation
- `inet_pton(3)` - convert IPv4 and IPv6 addresses from text to binary form. Deprecates IPv4-only `inet_ntoa`.
- `inet_ntop(3)` - convert IPv4 and IPv6 addresses from binary to text form. Deprecates IPv4-only `inet_aton` and `inet_addr`.

# DNS lookup and reverse lookup
- `getaddrinfo`, `freeaddrinfo`, `gai_strerror`. Uses DNS internally. Network address translation.
- `getnameinfo`. Uses DNS internally.
- `gethostbyname`. DNS reverse lookup.
- `getservbyname` 
  

  
A socket descriptor is just an `int`.  
  
```
struct addrinfo {
    int              ai_flags;     // AI_PASSIVE, AI_CANONNAME, etc.
    int              ai_family;    // AF_INET, AF_INET6, AF_UNSPEC
    int              ai_socktype;  // SOCK_STREAM, SOCK_DGRAM
    int              ai_protocol;  // use 0 for "any"
    size_t           ai_addrlen;   // size of ai_addr in bytes
    struct sockaddr *ai_addr;      // struct sockaddr_in or _in6
    char            *ai_canonname; // full canonical hostname

    struct addrinfo *ai_next;      // linked list, next node
};
```

This structure is used to prep the socket address structures for subsequent use. It's also used in host name lookups, and service name lookups.

```
// (IPv6 only--see struct sockaddr_in and struct in_addr for IPv4)

struct sockaddr_in6 {
    u_int16_t       sin6_family;   // address family, AF_INET6
    u_int16_t       sin6_port;     // port number, Network Byte Order
    u_int32_t       sin6_flowinfo; // IPv6 flow information
    struct in6_addr sin6_addr;     // IPv6 address
    u_int32_t       sin6_scope_id; // Scope ID
};

struct in6_addr {
    unsigned char   s6_addr[16];   // IPv6 address
};

struct sockaddr_storage {
    sa_family_t  ss_family;     // address family

    // all this is padding, implementation specific, ignore it:
    char      __ss_pad1[_SS_PAD1SIZE];
    int64_t   __ss_align;
    char      __ss_pad2[_SS_PAD2SIZE];
};
```

# Sockets
```c
#include <sys/socket.h>

int sockfd = socket(int socket_family, int socket_type, int protocol);
```

## Socket Types
- `SOCK_STREAM` - Linux TCP implementation. Guaranteed packet order, error checking. Used by `telnet`, HTTP protocol. Uses IP.
- `SOCK_DGRAM` - Linux [UDP](https://tools.ietf.org/html/rfc768) implementation. Optional delivery. Out-of-order. Error checking. Sample applications: `tftp` (trivial file transfer protocol), `dhcpcd` (a DHCP client), multiplayer games, streaming audio, video conferencing, etc. `tftp` and similar programs have their own protocol on top of UDP. For example, the tftp protocol says that for each packet that gets sent, the recipient has to send back a packet that says, "I got it!" (an `ACK` packet.) If the sender of the original packet gets no reply in, say, five seconds, he'll re-transmit the packet until he finally gets an `ACK`. This acknowledgment procedure is very important when implementing reliable `SOCK_DGRAM`. applications.Uses IP.
- `SOCK_RAW` - Raw access to IP protocol.

Addional socket opening flags: `SOCK_CLOEXEC` and `SOCK_NONBLOCK` (correspond to `O_NONBLOCK` and `FD_CLOEXEC` file status flags respectively). 

Why would you use an unreliable underlying protocol? Two reasons: speed and speed. It's way faster to fire-and-forget than it is to keep track of what has arrived safely and make sure it's in order and all that. If you're sending chat messages, TCP is great; if you're sending 40 positional updates per second of the players in the world, maybe it doesn't matter so much if one or two get dropped, and UDP is a good choice.

## Protocols
- Protocols database `/etc/protocols/` is updated from [IANA Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).

```c
#include <netdb.h>

struct protoent *getprotoent(void);

struct protoent *getprotobyname(const char *name);

struct protoent *getprotobynumber(int proto);

void setprotoent(int stayopen);

void endprotoent(void);

int getprotoent_r(struct protoent *result_buf, char *buf,
		size_t buflen, struct protoent **result);

int getprotobyname_r(const char *name,
		struct protoent *result_buf, char *buf,
		size_t buflen, struct protoent **result);

int getprotobynumber_r(int proto,
		struct protoent *result_buf, char *buf,
		size_t buflen, struct protoent **result);
```

# Utilities
- `telnet`. If you telnet to a web site on port 80, and type `GET / HTTP/1.0` and hit `RETURN` twice, it'll dump the HTML back at you!

# Network layers
- Application Layer (telnet, ftp, etc.)
- Host-to-Host Transport Layer (TCP, UDP) (end-to-end data reliability, flow control, sequencing, or other services)
- Internet Layer (IP and routing) (packet delivery)
- Network Access Layer (Ethernet, wi-fi, or whatever). Local network protocols to carry the internet datagram to the next gateway or destination host.

# Connections
- https://en.wikipedia.org/wiki/Keepalive
- [Network Address Translation (NAT) on wikipedia](https://en.wikipedia.org/wiki/Network_address_translation)

# URL/URI
- Commons Validator https://commons.apache.org/proper/commons-validator/apidocs/org/apache/commons/validator/routines/UrlValidator.html
- [File URI scheme on wikipedia](https://en.wikipedia.org/wiki/File_URI_scheme)
- [jave.net.URI](https://docs.oracle.com/javase/8/docs/api/java/net/URI.html)

# Concepts
- https://www.techopedia.com/definition/2447/next-hop
- https://www.usenix.org/system/files/conference/nsdi14/nsdi14-paper-handigol.pdf
- http://www.webopedia.com/TERM/H/hop.html
- https://en.wikipedia.org/wiki/Hop_(networking)
- https://en.wikipedia.org/wiki/Storage_area_network

# DNS
- [bind-utils](http://www.isc.org/downloads/BIND/) - communication with DNS servers
- `nslookup <host-name>` - DNS lookup (find ip by hostname)
- `nslookup <ip-address>` - reverse DNS lookup (find hostname by ip)
- `host <ip-address>` - reverse DNS lookup
- `dig -x <ip-address>` - reverse DNS lookup

- `/etc/hosts` - static table lookup for hostnames (`setup` package on Fedora) (`man hosts` - linux man pages)
- [hostname](http://packages.qa.debian.org/h/hostname.html) - display or set hostname

# Ports
Ports are 16 bit. Ports below 1024 (low-numbered) can be bound to only by root.
- [IANA Service Name and Transport Protocol Port Number Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

## `/etc/services` database (`services(5)`)

/etc/services` database is updated from http://www.iana.org/assignments/port-numbers and http://www.freebsd.org/cgi/cvsweb.cgi/src/etc/services

- `getservent`, `getservbyname`, `getservbyport`, `setservent`, `endservent`, `getservent_r`, `getservbyname_r`, `getservbyport_r`
 from `<netdb.h>` - working with `/etc/services` database. 

# PPP (Point to Point Protocol)
- https://tools.ietf.org/html/rfc1661
- The PPP Multilink Protocol https://tools.ietf.org/html/rfc1990

# SOCKS
- https://en.wikipedia.org/wiki/SOCKS

# SFTP
- `sftp` archlinux package and tool for FTP over SSH

# RDP
- `rdesktop` - archlinux and fedora package and tool for RDP

# VPN
- `vpnc` - Cisco VPN3000 Concentrator, IOS and PIX
- https://www.unix-ag.uni-kl.de/~massar/vpnc

- `openconnect` - Cisco AnyConnect VPN Client
- http://www.infradead.org/openconnect.html

# Refs

# wifi
- [WiFi Alliance](http://www.wi-fi.org/)
- [WiFi on wikipedia](https://en.wikipedia.org/wiki/Wi-Fi)
- `/etc/sysconfig/network-scripts` - some network scripts on Fedora

# NetworkManager
- `NetworkManager` package on Fedora (provides `nmcli` command-line interface)
- `nmcli connection show` - list all available connections
- `nmcli connection up <NAME>` - activate a connection

## `wpa-supplicant`
- `wpa-supplicant` package on Fedora (the IEEE 802.11 implementation for Linux)
- `/var/log/wpa_supplicant.log` - wpa-supplicant log

## `iw`
- http://wireless.kernel.org/en/users/Documentation/iw
- https://github.com/patjak/bcwc_pcie/wiki/Get-Started

## Broadcom Linux Drivers
- https://wireless.wiki.kernel.org/en/users/drivers/brcm80211

## Security
- Wired Equivalent Privacy (WEP) - older security protocol (with flaws)
- WiFi Protected Access I (WPA) - older security protocol (with flaws)
- WPA2 - modern security protocol
- [WPA on wikipedia](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access)
- [Extensible Authentication Protocol (EAP)](https://en.wikipedia.org/wiki/Extensible_Authentication_Protocol) - authentication protocol for WiFi
- [Protected Extensible Authentication Protocol (PEAP)](https://en.wikipedia.org/wiki/Protected_Extensible_Authentication_Protocol) - TLS tunnel for EAP
- [Challenge-Handshake Authentication Protocol (CHAP)](https://en.wikipedia.org/wiki/Challenge-Handshake_Authentication_Protocol)
- [MS-CHAP](https://en.wikipedia.org/wiki/MS-CHAP) - Microsoft version of CHAP

# WPA2
## `wpa-supplicant`
- http://hostap.epitest.fi/wpa_supplicant

PEAP WPA Enterprise WiFi Network
PEAP Authentication

# Where to look for error messages?

# TCP
Reliable, stream-oriented, full-duplex connection between two sockets on top of IP.

- Transmission Control Protocol - https://tools.ietf.org/html/rfc793
- TCP Slow Start, Congestion Avoidance, Fast Retransmit, and Fast Recovery Algorithms - https://tools.ietf.org/html/rfc2001
- The NewReno Modification to TCP's Fast Recovery Algorithm - https://tools.ietf.org/html/rfc6582
- TCP Selective Acknowledgment Options (SACK) - https://tools.ietf.org/html/rfc2018

```c
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>

tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
```

## Reliable

## Stream-oriented

## Full-duplex

# IP - Packet routing
- Internet Protocol (IPv4) - https://tools.ietf.org/html/rfc791
- IANA - https://www.iana.org/ - organization which maintains an evolving web database of Internet assigned numbers.
- Requirements for Internet Hosts -- Communication Layers - https://tools.ietf.org/html/rfc1122
- [Address Allocation for Private Internets](https://tools.ietf.org/html/rfc1918)
- [Administratively Scoped IP Multicast](http://www.ietf.org/rfc/rfc2365.txt)
- [IP Version 6 Addressing Architecture](http://www.ietf.org/rfc/rfc2373.txt)
- [Basic Socket Interface Extensions for IPv6](http://www.ietf.org/rfc/rfc2553.txt)
- [Unique Local IPv6 Unicast Addresses](https://tools.ietf.org/html/rfc4193)

**Linux kernel contains a level 2 multicasting implementation of IPv4 conforming to RFC 1112.  It  also  contains  an  IP router including a packet filter.**

```c
int sock = socket(AF_INET, socket_type, protocol); // open internet socket
```

## IPv4 -> IPv6
- IPv6 simplified the router’s task compared to IPv4.
- IPv6 is more compatible to mobile networks than IPv4.
- IPv6 allows for bigger payloads than what is allowed in IPv4.
- **AS OF JUNE 2017:** IPv6 is only used by [10.3% of the networks](https://w3techs.com/technologies/details/ce-ipv6/all/all) or [19.19% of Google.com users](https://www.google.com/intl/en/ipv6/statistics.html), while IPv4 is still in use by the rest. Adoption varies by country, e.g. U.S. has ~ 35% adoption while Russia has ~ 1%.

One can test if they are using IPv6 by connecting to http://ipv6test.google.com/ from their device.


# Networks database `/etc/networks`
Used by `route(8)` and `netstat(8)`

## Functions from `<netdb.h>`
- getnetent
- getnetbyname
- getnetbyaddr
- setnetent
- endnetent
- getnetent_r
- getnetbyname_r
- getnetbyaddr_r

# Ethernet
- An Ethernet Address Resolution Protocol - https://tools.ietf.org/html/rfc826

# Tools

## `net-tools` - http://sourceforge.net/projects/net-tools/

### `netstat(8)`
- `sudo netstat -tlnp` - Check what ports are listened on

### `route(8)`
Show / manipulate the kernel's IP routing tables.

### `arp(8)`
IP to MAC (Ethernet or WiFi) address resolution protocol.

### `ifconfig(8)` - obsolete?

## `iwconfig` (not on debian?)

## `iproute2` - http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2
- `ip`

## `iputils` - http://www.skbuff.net/iputils/
- `ping` (`iputils-ping` package on debian)
- `ping6` (`iputils-ping` package on debian)

## [traceroute](http://traceroute.sourceforge.net)
- `traceroute <ip-address>`

# Routing Tables
There is a routing table in kernel.
