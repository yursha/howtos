# Loop over a list
*python*
```python
fruits = ['apples', 'oranges', 'pears', 'apricots']
for fruit in fruits:
    print "A fruit of type: %s" % fruit
```

# Loop over a range
*python*
```python
elements = []
for i in range(0, 7): # exclusive
    print "Adding %d to the list." % i
    elements.append(i)
```

# While loop
*python*
```python
i = 0
while i < 7:
    print i
    i = i + 1
```

# Bash Loops
- `until test-commands; do consequent-commands; done`
- `while test-commands; do consequent-commands; done`
- `for name [ [in [words...] ; ] do commands; done`
- `for (( expr1 ; expr2 ; expr3 )) ; do commands ; done`

