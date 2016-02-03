# Specifications
- https://tools.ietf.org/html/rfc7230 - Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing
- #section-6.3 Persistent Connections
- https://tools.ietf.org/html/rfc7231 - Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content
- #section-4 - Request Methods
- #section-6 - Response Status Codes
- https://tools.ietf.org/html/rfc7232 - Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests
- https://tools.ietf.org/html/rfc7233 - Hypertext Transfer Protocol (HTTP/1.1): Range Requests
- https://tools.ietf.org/html/rfc7234 - Hypertext Transfer Protocol (HTTP/1.1): Caching
- https://tools.ietf.org/html/rfc7235 - Hypertext Transfer Protocol (HTTP/1.1): Authentication
- https://tools.ietf.org/html/rfc2518 - HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)
- https://tools.ietf.org/html/rfc5689 - Extended MKCOL for WebDAV
- https://tools.ietf.org/html/rfc6265 - HTTP State Management Mechanism (Cookies)
- http://tools.ietf.org/id/draft-thomson-hybi-http-timeout-03.html Keep-Alive Header Timeout Parameter

- https://en.wikipedia.org/wiki/List_of_HTTP_header_fields
- https://en.wikipedia.org/wiki/HTTP_persistent_connection
- https://www.ietf.org/mail-archive/web/httpbisa/current/msg25740.html // Expect-Continue clarification from Roy T. Fielding
- http://tools.ietf.org/html/rfc5789 - PATCH Method for HTTP

HTTP/1.1 connections are persistent by default.

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
- http://hc.apache.org/httpcomponents-core-ga/httpcore/apidocs/
- https://hc.apache.org/httpcomponents-core-ga/httpcore-nio/apidocs/
- http://hc.apache.org/httpcomponents-client-ga/httpclient/apidocs/

# Other libraries

## Clients
- Jetty Project - `org.eclipse.jetty:jetty-client` - http://git.eclipse.org/c/jetty (890K)
- https://git.apache.org/
- Ning AHC Project (Netty-based) - `com.ning.async-http-client` - https://github.com/AsyncHttpClient/async-http-client (2.1M)
- Java EE GlassFish Project - `org.glassfish.jersey.core:jersey-client` - https://github.com/jersey/jersey (Mirror of jersey.java.net git) (3.1M)
- DropWizard Project - `io.dropwizard:dropwizard-client` - https://github.com/dropwizard/dropwizard (15M)
  + org.glassfish.jersey.core:jersey-client
  + org.apache.httpcomponents:http-client
- `java.net.HttpURLConnection` stdlib
- node `http`

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

# URL/URI
- Commons Validator https://commons.apache.org/proper/commons-validator/apidocs/org/apache/commons/validator/routines/UrlValidator.html

# HTTPS

# SSL

# TLS
