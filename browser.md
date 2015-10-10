# User interaction

User interacts with app thru `<input>`, `<select>`, `<textarea>` elements or click/touch events.

# Graphics
## Animations
- CSS transitions
- keyframes
- JS animations

The normal flow of a browser receiving an event is that it executes a corresponding JavaScript callback. Once the callback completes the browser re-renders the DOM and returns to waiting for more events.
- navigation
- deeplinking

## DOM Events
- `DOMContentLoaded`
- https://developer.mozilla.org/en-US/docs/Web/API/Element/matches

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
 + https://en.wikipedia.org/wiki/JSONP
- cross-domain requests using a proxy server
- https://developer.mozilla.org/en-US/docs/Web/Security/CSP


# ?
- cross-origin resource sharing (CORS)

# JQuery
- http://jquery.com/
- http://api.jquery.com/category/events/event-object/

# HTML
- http://www.w3.org/TR/html51/
