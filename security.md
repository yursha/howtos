# Resources
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
- Java Encryption API (may have bad usability)


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
- [BouncyCastle 1.5 Javadoc](http://bouncycastle.org/docs/docs1.5on/index.html)
- [BouncyCastle 1.5 PKI Javadoc](http://bouncycastle.org/docs/pkixdocs1.5on/index.html)
- [BouncyCastle 1.5 PGP Javadoc](http://bouncycastle.org/docs/pgdocs1.5on/index.html)
- [BouncyCastle 1.5 S/MIME Javadoc](http://bouncycastle.org/docs/mdocs1.5on/index.html)
- `org.bouncycastle:bcprov-jdk15on` - maven package

# Captcha
- https://developers.google.com/recaptcha/docs/start

# SSL/TLS
- http://www.eclipse.org/jetty/documentation/current/configuring-ssl.html

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
- [LibreSSL library](http://www.libressl.org/)
- [LibreSSL on GitHub](https://github.com/libressl-portable/)

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
