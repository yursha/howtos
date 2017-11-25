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
- Encryption is how data is encoded so that only authorized parties have access.
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
- Secures data in transit
- http://www.eclipse.org/jetty/documentation/current/configuring-ssl.html
- [Always on SSL FAQ by Symantec](http://www.symantec.com/pop.jsp?popupid=always-on-ssl)
- [SSL Certificates Explained by Symantec](https://www.symantec.com/content/en/us/enterprise/html/infographic/ssl-certificates-explained/)
- [Trust and Your Business by Symantec](https://www.symantec.com/page.jsp?id=trust-business)

## Certificates
- Certificate Authority (CA) - Trust of a credential depends on confidence in the credential issuer, because the issuer vouches for the credential's authenticity. Certification Authorities use a variety of authentication methods to verify information provided by organizations.
- SSL Certificate - credentials for the online world, uniquely issued to a specific domain and web server and authenticated by the SSL Certificate provider.
- Signed Certificate (self-signed)
- [Extended Validation (EV) Certificates](https://en.wikipedia.org/wiki/Extended_Validation_Certificate)

### Certificate Algorithms
- Elliptic Curve Cryptography (ECC) (FIPS-certified)
- [ECC Performance Analysis by Semantec](https://www.symantec.com/content/en/us/enterprise/white_papers/b-wp_ecc.pdf)
- [Symantec SSL Certification with the ECC Algorithm](https://www.symantec.com/content/en/us/enterprise/fact_sheets/b-symantec_ssl_certification_with_the_algorithm_DS.en-us.pdf)
- [ECC and DSA Certificates by Symantec](https://www.symantec.com/content/en/us/enterprise/fact_sheets/b-ecc_dsa_faq_DS.en-us.pdf)
- Digital Signature Algorithm (DSA) (FIPS-certified)
- RSA

### Vendors
- [DigiCert](https://www.digicert.com/)
- Symantec

- [OpenSSL - cryptography and SSL/TLS toolkit](https://www.openssl.org/) - Utilities from the general purpose cryptography library with TLS implementation.
The OpenSSL toolkit provides support for secure communication between machines. OpenSSL includes a certificate management tool
and shared libraries which provide various cryptographic algorithms and protocols.
- [LibreSSL library](http://www.libressl.org/)
- [LibreSSL on GitHub](https://github.com/libressl-portable/)

## How HTTPS communication happens
- A client attempts to connect to a website secured with SSL.
- The client requests that the server identify itself.
- The server sends the client a copy of its SSL Certificate.
- The client checks whether it trusts the SSL Certificate. If so, it sends a message to the server.
- The server sends back a digitally signed acknowledgement to start an SSL encrypted session.
- Encrypted data is shared between the client and the server and https appears.

HTTPS, is the layering of SSL/TLS and HTTP protocols to create secure communication.
HTTPS indicates that the website has been authenticated by a third party Certification Authority (CA), and that the organization operating the website is who they claim to be.
HTTPS is a visual indication that information is being exchanged for the session in a more secure way.
HTTPS appears in the URL when a website is secured by an SSL certificate.
The details of the certificate, including the issuing authority and the corporate name of the website owner, can be viewed by clicking on the lock symbol.
Websites that display HTTPS in the URL and include the green bar are secured by Extended Validation, the most stringently validated form of SSL.
These websites go through the most industry mandated rigorous authentication procedures.
Another important step towards ensuring a user is protected as they view a website is having the site completely hosted over HTTPS, including all the content, images, and links.
If not all of the web pages are loaded over HTTPS, the user can be susceptible to session hijack.

Web servers and web browsers rely on the Secure Sockets Layer (SSL) protocol to help users protect their data during transfer by creating a uniquely encrypted channel for private communications over the public Internet.
Each SSL Certificate consists of a key pair as well as verified identification information.
When a web browser (or client) points to a secured website, the server shares the public key with the client to establish an encryption method and a unique session key.
The client confirms that it recognizes and trusts the issuer of the SSL Certificate.
This process is known as the "SSL handshake" and it begins a secure session that protects message privacy, message integrity, and server security.

## Java Secure Socket Extention (JSSE)
- [JSSE Reference Guide from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html) - SSL and TLS

## Java Generic Security Services (JGSS)
- [Introduction to JAAS and Java GSS-API Tutorials from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html)

## Java Simple Authentication and Security Layer (SASL)
- [SASL Guide from Oracle](http://docs.oracle.com/javase/8/docs/technotes/guides/security/jsse/JSSERefGuide.html)

- How `openssl` works?


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

