- https://docs.python.org
- https://docs.python.org/3/contents.html

Isolate pip dependencies for a project
```
% mkdir ~/.virtualenvs
% python3 -m venv ~/.virtualenvs/myproject
% . ~/.virtualenvs/myproject/bin/activate
```

# Libs
- https://urllib3.readthedocs.org/ - Connection pools
- http://docs.python-requests.org/ - HTTP client library

Parse a JSON string into Python object.
```python
import json
json.loads(string)
```

Load python util functions from a file in a REPL:
- `execfile('/path/to/file.py')`
