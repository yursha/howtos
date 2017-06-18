# System calls
- `socket()` - create a socket
- `send()`, `sendto()`, `sendmsg()` - write to a socket
- `recv()` - read from a socket
- `connect()`

# C Library
- `gethostbyname`
- `#include <arpa/inet.h>`
  - `htons()` - host to network short (2 bytes)
  - `htonl()` - host to network long (4 bytes)
  - `ntohs()` - network to host short
  - `ntohl()` - network to host long
- network address and service translation
   ```
   #include <sys/types.h>
   #include <sys/socket.h>
   #include <netdb.h>
   ```
  - `getaddrinfo`, 
  - `freeaddrinfo`
  - `gai_strerror`
  
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

# Internet socket types
- `SOCK_STREAM` - Linux [TCP](https://tools.ietf.org/html/rfc793) implementation. Guaranteed packet order, error checking. Used by `telnet`, HTTP protocol. Uses IP.
- `SOCK_DGRAM` - Linux [UDP](https://tools.ietf.org/html/rfc768) implementation. Optional delivery. Out-of-order. Error checking. Sample applications: `tftp` (trivial file transfer protocol), `dhcpcd` (a DHCP client), multiplayer games, streaming audio, video conferencing, etc. `tftp` and similar programs have their own protocol on top of UDP. For example, the tftp protocol says that for each packet that gets sent, the recipient has to send back a packet that says, "I got it!" (an `ACK` packet.) If the sender of the original packet gets no reply in, say, five seconds, he'll re-transmit the packet until he finally gets an `ACK`. This acknowledgment procedure is very important when implementing reliable `SOCK_DGRAM`. applications.Uses IP.

Why would you use an unreliable underlying protocol? Two reasons: speed and speed. It's way faster to fire-and-forget than it is to keep track of what has arrived safely and make sure it's in order and all that. If you're sending chat messages, TCP is great; if you're sending 40 positional updates per second of the players in the world, maybe it doesn't matter so much if one or two get dropped, and UDP is a good choice.

# Utilities
- `telnet`. If you telnet to a web site on port 80, and type `GET / HTTP/1.0` and hit `RETURN` twice, it'll dump the HTML back at you!

# Network layers
- Application Layer (telnet, ftp, etc.)
- Host-to-Host Transport Layer (TCP, UDP)
- Internet Layer (IP and routing)
- Network Access Layer (Ethernet, wi-fi, or whatever)

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

# [IP](https://tools.ietf.org/html/rfc791) - Packet routing
- Assigned Numbers http://www.ietf.org/rfc/rfc790.txt
- Address Allocation for Private Internets http://www.ietf.org/rfc/rfc1918.txt
- Administratively Scoped IP Multicast http://www.ietf.org/rfc/rfc2365.txt
- IP Version 6 Addressing Architecture http://www.ietf.org/rfc/rfc2373.txt

# DNS
- [bind-utils](http://www.isc.org/downloads/BIND/) - communication with DNS servers
- `nslookup <host-name>` - DNS lookup (find ip by hostname)
- `nslookup <ip-address>` - reverse DNS lookup (find hostname by ip)
- `host <ip-address>` - reverse DNS lookup
- `dig -x <ip-address>` - reverse DNS lookup

- `/etc/hosts` - static table lookup for hostnames (`setup` package on Fedora) (`man hosts` - linux man pages)
- [hostname](http://packages.qa.debian.org/h/hostname.html) - display or set hostname

# Tools
- `ifconfig` - obsolete
- `iwconfig`
- `ip`

## `iproute2`
- `iproute2` - http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2
- `ip`

## `iputils`
- http://www.skbuff.net/iputils/
- `ping`

## [traceroute](http://traceroute.sourceforge.net)
- `traceroute <ip-address>`

# 16-bit ports
Ports below 1024 considered special by OS.
- [`net-tools`](http://sourceforge.net/projects/net-tools/)
- `netstat`
- `sudo netstat -tlnp` - Check what ports are listened on
- [IANA standard port numbers registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

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
