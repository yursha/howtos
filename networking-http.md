# HTTP
- https://tools.ietf.org/html/rfc7230 - Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing
- #section-6.3 Persistent Connections
- https://tools.ietf.org/html/rfc7231 - Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content
- #section-4 - Request Methods
- #section-6 - Response Status Codes
- https://www.httpwatch.com/httpgallery/

# Caching
- https://tools.ietf.org/html/rfc7234 - Hypertext Transfer Protocol (HTTP/1.1): Caching

# State Management
- https://tools.ietf.org/html/rfc6265 - HTTP State Management Mechanism (Cookies)

# Headers
- http://www.iana.org/assignments/message-headers/message-headers.xhtml
- https://en.wikipedia.org/wiki/List_of_HTTP_header_fields

# Status Codes
- http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml

# Request Methods
- http://tools.ietf.org/html/rfc5789 - PATCH Method for HTTP
- https://tools.ietf.org/html/rfc7232 - Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests
- https://tools.ietf.org/html/rfc7233 - Hypertext Transfer Protocol (HTTP/1.1): Range Requests

# Connection management
- https://en.wikipedia.org/wiki/HTTP_persistent_connection
- https://www.ietf.org/mail-archive/web/httpbisa/current/msg25740.html // Expect-Continue clarification from Roy T. Fielding
- http://tools.ietf.org/id/draft-thomson-hybi-http-timeout-03.html Keep-Alive Header Timeout Parameter
HTTP/1.1 connections are persistent by default.

# Authentication and Security
- https://tools.ietf.org/html/rfc7235 - Hypertext Transfer Protocol (HTTP/1.1): Authentication
- http://www.iana.org/assignments/http-authschemes/http-authschemes.xhtml
- Open Web Application Security Project - https://www.owasp.org/index.php/Main_Page
- http://tools.ietf.org/html/rfc7617 - The 'Basic' HTTP Authentication Scheme
- https://en.wikipedia.org/wiki/Basic_access_authentication
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Basic_access_authentication
- https://luckymarmot.com/paw/doc/auth/basic-auth
- https://docs.oracle.com/cd/E24191_01/common/tutorials/authn_http_basic.html

# HTTP/2
- https://github.com/http2/http2-spec
- https://en.wikipedia.org/wiki/SPDY
- http://www.javaworld.com/article/2916548/java-web-development/http-2-for-java-developers.html
- http://www.slideshare.net/SimoneBordet/http2-and-java-current-status

# Java SE
- `java.net`
- `java.net.URL`
- `java.net.URI`
- `java.security.cert`
- `java.security`
- `javax.net`
- `javax.net.ssl`

# Apache HTTP Components
- http://hc.apache.org - `org.apache.httpcomponents:httpclient` - https://github.com/apache/httpclient (Mirror of Apache git) (1.4M)
- http://hc.apache.org/httpcomponents-core-ga/httpcore
- https://hc.apache.org/httpcomponents-core-ga/httpcore-nio
- http://hc.apache.org/httpcomponents-client-ga/httpclient

# Other libraries

## Clients
- Jetty Project - `org.eclipse.jetty:jetty-client` - http://git.eclipse.org/c/jetty (890K)
- https://git.apache.org/
- Ning AHC Project (Netty-based) - `com.ning.async-http-client` - https://github.com/AsyncHttpClient/async-http-client (2.1M)
- Java EE GlassFish Project - `org.glassfish.jersey.core:jersey-client` - https://github.com/jersey/jersey (Mirror of jersey.java.net git) (3.1M)
- `java.net.HttpURLConnection` stdlib
- node `http`
- python 'requests' library

## Servers
- Jetty
- Tomcat
- GlassFish
- dropwizard
- Spark Microframework
- netty
- Apache HTTPD
  + http://httpd.apache.org/docs/current/mod/core.html
- nginx
- node `http`

### How to fast launch a static file server
- `python -m SimpleHTTPServer 8888 &` (python 2)
- `python -m http.server 8888 &` (python 3+)
- `php -S localhost:8888`
- `ruby -run -e httpd . -p 8888`
- `npm install http-server -g; http-server`
- `java -jar jetty-runner-9.3.0.M0.jar --port 8080 .`

# WebDAV
- https://tools.ietf.org/html/rfc5689 - Extended MKCOL for WebDAV
- https://tools.ietf.org/html/rfc2518 - HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)

# Atom Networking Protocol

