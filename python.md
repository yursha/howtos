# Resources
- https://docs.python.org
- http://docs.python-guide.org/en/latest/
- http://www.alexkras.com/review-automate-the-boring-stuff-with-python-by-al-sweigart/
- [Dive into Python by Mark Pilgrim](http://www.diveintopython.net/)

Isolate python environment for a project
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

# Env
- http://stackoverflow.com/questions/633127/viewing-all-defined-variables

# Lists
- http://stackoverflow.com/questions/3451157/python-list-sublist-selection-1-weirdness
```
len(list) // size of the list
```

# String processing
- http://stackoverflow.com/questions/275018/how-can-i-remove-chomp-a-newline-in-python

# IO
- http://stackoverflow.com/questions/3277503/python-read-file-line-by-line-into-array

# Loops imperative
- http://stackoverflow.com/questions/2990121/how-do-i-loop-through-a-python-list-by-twos
- http://stackoverflow.com/questions/7423118/python-list-for-each-access-find-replace-in-built-in-list

# Loops functional
- http://www.diveintopython.net/native_data_types/mapping_lists.html

