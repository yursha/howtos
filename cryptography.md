- How `openssl` works?
- Java Cryptography Architecture (JCA) 
    + Java Cryptography Extension (JCE) http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html
- Bouncy Castle - http://www.bouncycastle.org/
- Java Encryption API (may have bad usability)

MD5 and SHA1 have vulnerabilities.

Your best bets are the algorithms called SHA-2 (which come in various flavors with varying levels of security - SHA-256 is adequate for our purposes) and BCrypt (which is based on the Blowfish encryption algorithm). Java BCrypt implementation can be retrieved from http://www.mindrot.org/projects/jBCrypt/.
