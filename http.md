# Specifications

- https://tools.ietf.org/html/rfc7230 - Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing
- https://tools.ietf.org/html/rfc7231 - Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content
- https://tools.ietf.org/html/rfc7231#section-6 - Response Status Codes
- https://tools.ietf.org/html/rfc7232 - Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests
- https://tools.ietf.org/html/rfc7233 - Hypertext Transfer Protocol (HTTP/1.1): Range Requests
- https://tools.ietf.org/html/rfc7234 - Hypertext Transfer Protocol (HTTP/1.1): Caching
- https://tools.ietf.org/html/rfc7235 - Hypertext Transfer Protocol (HTTP/1.1): Authentication
- rfc6265 - HTTP State Management Mechanism

# Servers

- Jetty
- Tomcat
- Apache HTTPD
- nginx
- netty
- node `http`

## How to fast launch a static file server
- `python -m SimpleHTTPServer 8888 &` (python 2)
- `python -m http.server 8888 &` (python 3+)
- `php -S localhost:8888`
- `ruby -run -e httpd . -p 8888`
- `npm install http-server -g; http-server`
- `java -jar jetty-runner-9.3.0.M0.jar --port 8080 .`

# Clients
- node `http`
- Apache HTTP Client http://hc.apache.org/httpcomponents-client-ga/index.html
- Apache HTTP Core https://hc.apache.org/httpcomponents-core-ga/httpcore/apidocs/overview-summary.html
