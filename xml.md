# Linter
- `cat file.xml | xmllint --format -`

# C and XML
- `xmllint`

Grammar for writing serialized tree-structured mixed-content document text including DTDs, elements, attributes, comments, entity references and processing instructions. Can be reduced to simple-content data text. A program that works on fixed, internally generated data can afford to make simplifying assumptions: that processing instructions, comments, CDATA nodes, and entity references will not exist in the data structure. This allows for simpler and faster processing. **DOM4j** and **JDOM** are tailored to work with those simplifications in mind.
- Sample XML files - https://jaxp.java.net/downloads.html

## Validation

### XSD (instance of XML document)
- http://www.w3.org/TR/xmlschema-0/
- http://www.w3.org/TR/xmlschema11-1/
- http://www.w3.org/TR/xmlschema11-2/
- http://www.w3.org/XML/Schema

### Relax NG
- https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=relax-ng

### Schematron
- http://xml.ascc.net/resource/schematron/schematron.html

### DTD

## Java API for XML Processing (JAXP)
- https://docs.oracle.com/javase/tutorial/jaxp/dom/validating.html
- Project JAXP (part of Project GlassFish) - https://jaxp.java.net

### Stream Iteration
- memory efficient serial-access event-driven iteration over event (or, token) stream.
- cursor-based?
- state-independent vs state dependent
- pull-style vs push-style parsing

#### Streaming API for XML (StAX) (`javax.xml.stream`) (cursor-based event-driven state-dependent pull-style stream iteration) ([JSR-173](https://jcp.org/en/jsr/detail?id=173))
- https://docs.oracle.com/javase/tutorial/jaxp/stax/index.html
- https://docs.oracle.com/javase/7/docs/api/javax/xml/stream/XMLStreamReader.html
- https://github.com/FasterXML/woodstox
- The Sun Java Streaming XML Parser (SJSXP) (part of GlassFish) https://sjsxp.java.net/
- An Introduction to StAX - http://www.xml.com/pub/a/2003/09/17/stax.html
- http://www.developer.com/xml/article.php/3397691/Does-StAX-Belong-in-Your-XML-Toolbox.htm

#### Simple API for XML (SAX1/SAX2) (http://www.saxproject.org/)
  + state-independent push-style stream iteration

### Data Binding
#### JAXB (data binding)
- **Data Binding** - Binding Json data into Objects (of your favorite language).
- https://docs.oracle.com/javase/tutorial/jaxb/
- https://jaxb.java.net/

### In-memory tree and graph respresentations

#### DOM
DOM is an in-memory tree representation of a document (XML, HTML) or data (XML).
- Document (mixed) content model (allows intermixing of text and elements).
- `org.w3c.dom`

#### XOM

#### DOM4j (http://www.dom4j.org)
- Data (non-mixed) content model

#### JDOM (http://www.jdom.org)
- Data (non-mixed) content model

#### XMLBeans

#### SOAP

# Scala and XML
- http://docs.scala-lang.org/tutorials/tour/xml-processing
