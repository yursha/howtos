- https://en.wikipedia.org/wiki/Universally_unique_identifier
- A Universally Unique IDentifier (UUID) URN Namespace http://tools.ietf.org/html/rfc4122
- https://en.wikipedia.org/wiki/Globally_unique_identifier
- `java.util.UUID` - 128-bit value
- https://en.wikipedia.org/wiki/Collision_(computer_science)
- https://www.uuidgenerator.net/

The intent of UUIDs is to enable distributed systems to uniquely identify information without significant central coordination. In this context the word unique should be taken to mean "practically unique" rather than "guaranteed unique". Since the identifiers have a finite size, it is possible for two differing items to share the same identifier. This is a form of hash collision. The identifier size and generation process need to be selected so as to make this sufficiently improbable in practice. Anyone can create a UUID and use it to identify something with reasonable confidence that the same identifier will never be unintentionally created by anyone to identify something else. Information labeled with UUIDs can therefore be later combined into a single database without needing to resolve identifier (ID) conflicts.
