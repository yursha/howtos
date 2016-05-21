# Resources
- [Java SE Security Oracle](http://www.oracle.com/technetwork/java/javase/tech/index-jsp-136007.html)
- [`java.security`](https://docs.oracle.com/javase/8/docs/api/java/security/package-summary.html) - looks for links also.

- http://www.techrepublic.com/blog/it-security/security-tools-should-be-designed-for-security/

- Don't assume unlimited resources (memory, disk space, cpu, sockets, etc) in your program, as this assumption can be adversely exploited by an attacker to shut down the system (which has limited resources).

# Passwords Management
- https://www.passwordstore.org/

# Concepts
- language safety
- public key infastructure (PKI)
- authentication
- secure communication
- access control
- certificates and certificate validation
- secure random number generation

# Cryptography
- ciphers
- message digests (hashes)
- digital signatures
- key generation and management

## Encryption
- encryption (symmetric/asymmetric block/stream ciphers)
- What is a block cipher? Amazon uses AES-256 block cipher to encrypt data at rest in AWS.
- Java Encryption API (may have bad usability)
- Server-side encryption to encrypt all data at rest.
- Client-side encryption
- Transfer encryption (SSL)


MD5 and SHA1 have vulnerabilities.

Your best bets are the algorithms called SHA-2 (which come in various flavors with varying levels of security - SHA-256 is adequate for our purposes) and BCrypt (which is based on the Blowfish encryption algorithm). Java BCrypt implementation can be retrieved from http://www.mindrot.org/projects/jBCrypt/.

# Java Cryptography Architecture
- [JCA Reference Guide from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/crypto/CryptoSpec.html)
- `java.security`
- `javax.crypto`
- `javax.crypto.spec`
- `javax.crypto.interfaces`
- providers (Sun, SunRsaSign, SunJCE)

Algorithm independence is achieved by defining types of cryptographic "engines" (services), and defining classes that provide the functionality of these cryptographic engines. These classes are called engine classes, and examples are the `MessageDigest`, `Signature`, `KeyFactory`, `KeyPairGenerator`, and `Cipher` classes.

`java.security.Provider` is the base class for all security providers.

# Java Cryptography Extension
- [JCE](http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html)

# BouncyCastle
- [BouncyCastle](http://bouncycastle.org/) - cryptographic algorithms for Java and C#, pluggable into JCE
- [BouncyCastle - resources](http://bouncycastle.org/resources.html)
- [BouncyCastle - specs](http://bouncycastle.org/specifications.html)
- [BouncyCastle 1.5 Javadoc](http://bouncycastle.org/docs/docs1.5on/index.html)
- [BouncyCastle 1.5 PKI Javadoc](http://bouncycastle.org/docs/pkixdocs1.5on/index.html)
- [BouncyCastle 1.5 PGP Javadoc](http://bouncycastle.org/docs/pgdocs1.5on/index.html)
- [BouncyCastle 1.5 S/MIME Javadoc](http://bouncycastle.org/docs/mdocs1.5on/index.html)
- `org.bouncycastle:bcprov-jdk15on` - maven package
- [The Cryptoworkshop Guide to Java Cryptography and the Bouncy Castle APIs](http://www.cryptoworkshop.com/guide/cwguide-070313.pdf)
- [BC Wiki](http://www.bouncycastle.org/wiki/display/JA1/Provider+Installation)

# Captcha
- https://developers.google.com/recaptcha/docs/start

# SSL/TLS
- Domain Name
- Certificate Authority (CA)
- Certificate
- Secures data in transit
- http://www.eclipse.org/jetty/documentation/current/configuring-ssl.html

- [OpenSSL - cryptography and SSL/TLS toolkit](https://www.openssl.org/) - Utilities from the general purpose cryptography library with TLS implementation.
The OpenSSL toolkit provides support for secure communication between machines. OpenSSL includes a certificate management tool
and shared libraries which provide various cryptographic algorithms and protocols.
- [LibreSSL library](http://www.libressl.org/)
- [LibreSSL on GitHub](https://github.com/libressl-portable/)

## Java Secure Socket Extention (JSSE)
- [JSSE Reference Guide from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html) - SSL and TLS

## Java Generic Security Services (JGSS)
- [Introduction to JAAS and Java GSS-API Tutorials from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html)

## Java Simple Authentication and Security Layer (SASL)
- [SASL Guide from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html)

- How `openssl` works?

# SSH
- [OpenSSH](http://www.openssh.com/)
- [OpenSSH portable](http://www.openssh.com/portable.html) (For operating systems other than OpenBSD)
Uses LibreSSL

## Clients
- `ssh`
- `scp`
- `ssh-keygen`

### Examples:
- `scp -i prk ayursha@remotehost.edu:file.txt /some/local/directory`

## Servers
- `sshd`
- `sftp-server`
- `ssh-agent`

## Key Management
- https://wiki.archlinux.org/index.php/SSH_keys
- `ssh-add`
- `ssh-keysign`
- `ssh-keyscan`
- `ssh-keygen`

## Other
- `slogin`
- `ssh-copy-id`

## How to create an ssh key
- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

# Security Rules
- Encrypt data in transit
- Encrypt data at rest
- Don't use fax transmission for PHI
- Don't let someone physically see what's protected
- Digitally wipe or physically shred the data when no longer needed
- Lock and password protect you computer. Use password-protected screensaver.
- Don't leave sensitive information on answering machines
- There are basically 2 means to protect any data: encryption and destruction
- Keep passwords safe
- Account lock out policies - lock account after a certain amount of failed logon attempts. (Protects against password crackers)
- Use antivirus software with an up to date signature file
- Delete emails if they originate from unknown people (unsolicited email)
- Don't visit untrusted websites
- Don't insert found USB drives into your computer
- Have up-to-date verions of browsers and other web client software.
- Disable Java, Flash and Acrobat web browser plugins if you don't really need them
- Use a preview tool to look into shortened URLs.
- Don't install software that you don't use/need/know
- turn off you computer when you log off. So its not on the network.
- Use antivirus, anti-spyware and firewall.
- Limit user's access on a 'need-to-know' basis (principle of least privelege)
- Use password-protected screensaver.
- When you expose too much information on the web you are a good targer for social engineering attack.
- Phishing and spear phishing (kind of social engineering)
- Use https websites only when tranmission of sensitive information is involved.
- Open bank website or mobile web rather than traversing via email weblink.
- SMiShing (SMS phishing), Vishing (Automated Voice System phishing), Phaxing (fax phishing)
- If someone has called you and is asking for private information, ask for a case number then call back through the main number.
- Open email messages as text, never as html


# Password policy
- Use phrase initials (use numbers where possible as well as original case and punctuation)
- Use one unique password at work
- Use one unique password for online banking
- Use one unique password for other systems
- Change passwords often (every 60 to 90 days)

# 2 factor authentication
