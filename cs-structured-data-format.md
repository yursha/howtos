# General
## Three ways to process structured data formats.
- **Iteration** - Iterating over Event (or, token) stream.
  + pull parsing
  + push parsing
- **Data Binding** - Binding Json data into Objects (of your favorite language).
- **Tree Traversal** - Building a tree structure (from Json) and traversing it using suitable methods.

# XML
- SAX (iteration, push)
- STAX (iteration, pull) (JSR-173)
- JAXB (data binding)
- DOM, XOM, JDOM, DOM4j (tree traversal)
- XSL Transformations
  + http://www.w3.org/TR/xslt

# JSON

## Big JSON files
- https://github.com/zeMirco/sf-city-lots-json

## Libraries
- **http://mvnrepository.com/open-source/json-libraries** - lookup the relevant libraries here.

### Jackson (iteration | data binding | tree traversal)
- https://github.com/FasterXML/jackson
- https://github.com/FasterXML/jackson-databind

### GSON
- https://github.com/google/gson
