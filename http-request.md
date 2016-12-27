# HTTP
- [rfc7230 HTTP/1.1: Message Syntax and Routing](https://tools.ietf.org/html/rfc7230)
- [rfc7231 HTTP/1.1: Semantics and Content](https://tools.ietf.org/html/rfc7231)
- https://www.httpwatch.com/httpgallery/
- [rfc7239 HTTP/1.1: Forwarded HTTP Extension](https://tools.ietf.org/html/rfc7239)

# Caching
- [rfc7234 HTTP/1.1: Caching](https://tools.ietf.org/html/rfc7234)

# Authentication
- [rfc7235 HTTP/1.1: Authentication](https://tools.ietf.org/html/rfc7235)
- [rfc7236 HTTP/1.1: Authentication Scheme Registrations](https://tools.ietf.org/html/rfc7236)

# State Management
- [rfc6265 HTTP State Management Mechanism (Cookies)](https://tools.ietf.org/html/rfc6265)

# Headers
- [IANA registered HTTP headers](http://www.iana.org/assignments/message-headers/message-headers.xhtml)
- [List of HTTP header on Wikipedia](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)
- [rfc7240 HTTP/1.1: Prefer HTTP Header](https://tools.ietf.org/html/rfc7240)

# Status Codes
- [rfc7231 Section 6 - Response Status Codes](https://tools.ietf.org/html/rfc7231#section-6)
- [IANA registered Status Codes](http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml)
- [rfc7238 HTTP/1.1: HTTP Status Code 308 (Permanent Redirect)](https://tools.ietf.org/html/rfc7238)
- [rfc7237 HTTP/1.1: Initial HTTP Methods Registrations](https://tools.ietf.org/html/rfc7237)

# Request Methods
- [rfc7231 Section 4 - Request Methods](https://tools.ietf.org/html/rfc7231#section-4)
- [rfc7232 HTTP/1.1: Conditional Requests](https://tools.ietf.org/html/rfc7232)
- [rfc7233 HTTP/1.1: Range Requests](https://tools.ietf.org/html/rfc7233)
- [rfc5789 Patch Method for HTTP](http://tools.ietf.org/html/rfc5789)

# Multipart
- [rfc2388 Returning Values from Forms: multipart/form-data](https://tools.ietf.org/html/rfc2388)
- [rfc7578 Returning Values from Forms: multipart/form-data](https://tools.ietf.org/html/rfc7578)

# Connection management
- [rfc7230 Section 6 - Connection Management](https://tools.ietf.org/html/rfc7230#section-6)
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

## Source code
- [git apache org](http://git.apache.org/)


# Other libraries

## Clients
There are 2 kinds of clients (they differ how the use the server responses but underlying HTTP transport is the same):
- web browsers
- web service clients

## Resources
- https://git.apache.org/
- Ning AHC Project (Netty-based) - `com.ning.async-http-client` - https://github.com/AsyncHttpClient/async-http-client (2.1M)
- `java.net.HttpURLConnection` stdlib
- node `http`
- python 'requests' library

## Servers
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

# WebDAV
- https://tools.ietf.org/html/rfc5689 - Extended MKCOL for WebDAV
- https://tools.ietf.org/html/rfc2518 - HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)

# Atom Networking Protocol

# HTTP GET
```bash
curl
wget
```

# HTTP POST application/x-www-form-urlencoded

```bash
# bash
curl -d username=vim -d password=secret http://targethost/login
```

# HTTP POST multipart/form-data

```bash
# bash
curl -F username=vim -F password=secret -F filename=@localfile.txt http://targethost/login
```
