Data Formats (structured/unstructured)
===================

# Unstructured Text Formats

# Structured Text Formats (Tree | Table)
- **Parser** - parses text into tokens. Only *well-formed* text is parseable.
  + bidirectional vs unidirectional
  + validating vs non-validating (against DTD, Schema, etc.). Validation mechanisms allow to add additional constraints beyond bare syntax.
- **Generator** - generates text from tokens?

## Three ways to parse structured data formats.
- **Stream Iteration**
  + memory efficient serial-access event-driven iteration over event (or, token) stream.
  + cursor-based?
  + state-independent vs state dependent
  + pull-style vs push-style parsing
- **Data Binding** - Binding Json data into Objects (of your favorite language).
- **Tree Traversal**
  + builds an in-memory tree structure

# XML (Tree)
- Sample XML files - https://jaxp.java.net/downloads.html

## Validation

### XSD
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
### Resources
- https://docs.oracle.com/javase/tutorial/jaxp/sax/events.html
- Project JAXP (part of Project GlassFish) - https://jaxp.java.net

### Libraries

#### Streaming API for XML (StAX) (`javax.xml.stream`) (cursor-based event-driven state-dependent pull-style stream iteration) ([JSR-173](https://jcp.org/en/jsr/detail?id=173))
  + https://github.com/FasterXML/woodstox
  + The Sun Java Streaming XML Parser (SJSXP) (part of GlassFish) https://sjsxp.java.net/
  + An Introduction to StAX - http://www.xml.com/pub/a/2003/09/17/stax.html

#### Simple API for XML (SAX1/SAX2) (http://www.saxproject.org/)
  + state-independent push-style stream iteration

#### TrAX

#### JAXB (data binding)

#### DOM
DOM is an in-memory representation of a document tree (XML, HTML). DOM follows *mixed content model*, i.e. allows intermixing of text and elements.
  + `org.w3c.dom`

#### XOM 

#### DOM4j (http://www.dom4j.org)
Non-mixed content model

#### JDOM (http://www.jdom.org)
Non-mixed content model

#### Extensible Stylesheet Language Transformations (XSLT) (http://www.w3.org/TR/xslt)
  + `javax.xml.transform`

#### XMLBeans

#### SOAP

# JSON (Tree)

## Big JSON files
- https://github.com/zeMirco/sf-city-lots-json

## Libraries
- **http://mvnrepository.com/open-source/json-libraries** - lookup the relevant libraries here.

### Jackson 
(iteration | data binding | tree traversal)
- https://github.com/FasterXML/jackson
- https://github.com/FasterXML/jackson-databind

### GSON
- https://github.com/google/gson

# CSV (Table)
