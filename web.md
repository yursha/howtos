
- **url**
- **ajax**
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
  + http://www.w3.org/TR/XMLHttpRequest/

# Ways to trigger HTTP request from a web app
## With leaving the page
### static
- `a` element

### dynamic

## Without leaving the page
### static
- `link` element
- `script` element
- `img` element

### dynamic
-  *`script` element injection* (`GET` only)
- `XMLHttpRequest`

# Security
- **same origin policy** - web author can only issue ajax requests to their own website. 
 + https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy
- **jsonp** - JSON with padding/prefix - protocol between web authors that wish to work around the same-origin policy via *script element injection*.
- cross-domain requests using a proxy server


# ?
- cross-origin resource sharing (CORS)
