# General
## Three ways to parse structured data formats.
- **Stream Iteration**
  + memory efficient serial-access event-driven iteration over event (or, token) stream.
  + cursor-based?
  + state-independent vs state dependent
  + pull-style vs push-style parsing
- **Data Binding** - Binding Json data into Objects (of your favorite language).
- **Tree Traversal**
  + builds an in-memory tree structure

# XML

## Java API for XML Processing (JAXP)
### Resources
- https://docs.oracle.com/javase/tutorial/jaxp/index.html
- Project JAXP (part of Project GlassFish) - https://jaxp.java.net

### Libraries
- Streaming API for XML (StAX) (`javax.xml.stream`) (cursor-based event-driven state-dependent pull-style stream iteration) (JSR-173)
  + https://github.com/FasterXML/woodstox
  + The Sun Java Streaming XML Parser (SJSXP) (part of GlassFish) https://sjsxp.java.net/
- Simple API for XML (SAX) (http://www.saxproject.org/)
  + state-independent push-style stream iteration
- TrAX
- JAXB (data binding)
- DOM
  + `org.w3c.dom`
- XOM 
- DOM4j (http://www.dom4j.org)
- JDOM (http://www.jdom.org)
- Extensible Stylesheet Language Transformations (XSLT) (http://www.w3.org/TR/xslt)
  + `javax.xml.transform`
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
