# General
## Three ways to parse structured data formats.
- **Stream Iteration** - Memory-efficient iterating over event (or, token) stream.
  + cursor-based event-driven pull-style parsing
  + serial-access event-driven push-style parsing
- **Data Binding** - Binding Json data into Objects (of your favorite language).
- **Tree Traversal** - Building an in-memory tree structure (from Json) and traversing it using suitable methods.

# XML

## Java API for XML Processing (JAXP)
### Resources
- https://docs.oracle.com/javase/tutorial/jaxp/index.html

### Libraries
- Streaming API for XML (StAX) (cursor-based event-driven pull-style stream iteration) (JSR-173)
  + https://github.com/FasterXML/woodstox
  + The Sun Java Streaming XML Parser (SJSXP) (part of GlassFish) https://sjsxp.java.net/
- Simple API for XML (SAX) (serial-access event-driven push-style stream iteration)
- JAXB (data binding)
- DOM, XOM, JDOM, DOM4j (tree traversal)
- XSL Transformations
  + http://www.w3.org/TR/xslt
- XMLBeans
- SOAP

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
