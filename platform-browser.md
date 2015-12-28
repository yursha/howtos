# Tools
- https://developer.chrome.com/devtools/docs/console

# Browser API
- https://developer.mozilla.org/en-US/docs/Web/API/Window/location
- https://developer.mozilla.org/en-US/docs/Web/API/Location

## Compatibility
- http://caniuse.com/

# User interaction

User interacts with app thru `<input>`, `<select>`, `<textarea>` elements or click/touch events.

# Graphics

## Animations
- CSS transitions (19-11-2013) http://www.w3.org/TR/css3-transitions/ 

- keyframes
- JS animations

# XML
- https://developer.mozilla.org/en-US/docs/XMLSerializer

## HTML
- https://html.spec.whatwg.org/
- https://html.spec.whatwg.org/multipage/index.html
- http://dev.w3.org/html5/
- HTML5 for developers - http://developers.whatwg.org/
- HTML 5.1 08-10-2015 http://www.w3.org/TR/html51/
- https://developer.mozilla.org/en/HTML
- https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5
- http://www.html5rocks.com/en/
- http://html5doctor.com/
- https://html5boilerplate.com/
- https://html5.org/
- http://html5up.net/
- http://html5demos.com/
- http://diveintohtml5.info/

# DOM
- https://dom.spec.whatwg.org/
- http://www.w3.org/TR/dom/
- http://www.w3.org/TR/DOM-Level-3-Core/

## Selectors
- https://dom.spec.whatwg.org/#selectors
- https://drafts.csswg.org/selectors-4/
- Selectors API Level 1 (21-02-2013) http://www.w3.org/TR/selectors-api/
- Selectors Level 3 (29-09-2011) http://www.w3.org/TR/selectors/
- http://sizzlejs.com/

## Events
- `DOMContentLoaded`
- https://developer.mozilla.org/en-US/docs/Web/API/Element/matches

## Node trees

- **url**
- **ajax**
  + http://www.w3.org/TR/XMLHttpRequest/
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest
  + https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest

Use JSON rather than JSONP, if you can; JSONP is insecure (and as often practiced, synchronous). For loading cross-domain data, use the Access-Control-Allow-Origin: * header instead.

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

# CSS and drawing
- http://www.w3.org/TR/CSS2/
- https://developer.mozilla.org/en-US/docs/Web/CSS/text-transform
- https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing

# Optimizations
- js, css, html - minification
- js - obfuscation
- avoid reflow and redrawing

# Presentation
- https://github.com/mbostock/stack

# Twitter Bootstrap
- http://getbootstrap.com/
- http://themes.getbootstrap.com/
