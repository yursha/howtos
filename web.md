
- **url**
- **ajax**
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
  + http://www.w3.org/TR/XMLHttpRequest/

# Ways to trigger HTTP request from a web app
## With leaving the page
- `<script src="URL"></script>`
- `<img src="URL">`
- `<a href="URL"></a>`
- `XMLHttpRequest`

## Without leaving the page
- *script element injection*

# Security
- **same origin policy** - web author can only issue ajax requests to their own website. 
 + https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy
- **jsonp** - JSON with padding/prefix - protocol between web authors that wish to allow cross-origin ajax requests. Works thru *script element injection*.
