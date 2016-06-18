# Networking
- networking (distributed communication)
- Archlinux wiki : Network configuration
- https://en.wikipedia.org/wiki/Keepalive
- [Network Address Translation (NAT) on wikipedia](https://en.wikipedia.org/wiki/Network_address_translation)

# URL/URI
- Commons Validator https://commons.apache.org/proper/commons-validator/apidocs/org/apache/commons/validator/routines/UrlValidator.html
- [File URI scheme on wikipedia](https://en.wikipedia.org/wiki/File_URI_scheme)
- [jave.net.URI](https://docs.oracle.com/javase/8/docs/api/java/net/URI.html)

# IP
- Assigned Numbers http://www.ietf.org/rfc/rfc790.txt
- Address Allocation for Private Internets http://www.ietf.org/rfc/rfc1918.txt
- Administratively Scoped IP Multicast http://www.ietf.org/rfc/rfc2365.txt
- IP Version 6 Addressing Architecture http://www.ietf.org/rfc/rfc2373.txt
- https://docs.oracle.com/javase/8/docs/api/java/net/InetAddress.html

# DNS
- [bind-utils](http://www.isc.org/downloads/BIND/) - communication with DNS servers
- `nslookup <host-name>` - DNS lookup (find ip by hostname)
- `nslookup <ip-address>` - reverse DNS lookup (find hostname by ip)
- `host <ip-address>` - reverse DNS lookup
- `dig -x <ip-address>` - reverse DNS lookup

- `/etc/hosts` - static table lookup for hostnames (`setup` package on Fedora) (`man hosts` - linux man pages)
- [hostname](http://packages.qa.debian.org/h/hostname.html) - display or set hostname

# Sun Network Information System [NIS]
- http://searchnetworking.techtarget.com/definition/NIS

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

# Ports
- [`net-tools`](http://sourceforge.net/projects/net-tools/)
- `netstat`
- `sudo netstat -tlnp` - Check what ports are listened on

# TCP


# UDP

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
- `NetworkManager` package on Fedora (provides `nmcli` command-line interface)
- `/etc/sysconfig/network-scripts` - some network scripts on Fedora

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

# c lib
- `gethostbyname`
