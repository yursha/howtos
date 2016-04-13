# Declare a function
*python*
```python
def print_two(*args):
    arg1, arg2 = args
    return arg1 + arg2
```

# Return a tuple from a function
*python*
```python
def plus_one(a):
    return a, a + 1

one, two = plus_one(1)
```
