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

# Java Cryptography Extension
- [JCE](http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html)

# BouncyCastle
- [BouncyCastle](http://bouncycastle.org/) - cryptographic algorithms for Java and C#, pluggable into JCE
- [BouncyCastle 1.5 Javadoc](http://bouncycastle.org/docs/docs1.5on/index.html)
- [BouncyCastle 1.5 PKI Javadoc](http://bouncycastle.org/docs/pkixdocs1.5on/index.html)
- [BouncyCastle 1.5 PGP Javadoc](http://bouncycastle.org/docs/pgdocs1.5on/index.html)
- [BouncyCastle 1.5 S/MIME Javadoc](http://bouncycastle.org/docs/mdocs1.5on/index.html)

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
