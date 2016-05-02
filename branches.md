*java*
```java
if (age > 35) {
    System.out.println("You can be U.S. President.");
} else if (age > 18) {
    System.out.println("You can vote.");
} else {
    System.out.println("You can't vote yet");
}

```
*perl*
```perl
if ($age > 35) {
    print "You can be U.S. President.\n";
} elsif ($age > 18) {
    print "You can vote.\n";
} else {
    print "You can't vote yet.\n";
}
```

*python*
```python
if age > 35:
    print "You can be U.S. President."
elif age > 18:
    print "You can vote."
else:
    print "You can't vote yet."
```


*bash*
```bash
if test-commands; then
  consequent-commands;
[elif more-test-commands; then
  more-consequents;]
[else alternate-consequents;]
fi
```

## switch
- `case word in [ [(] pattern [| pattern]...) command-list ;;]... esac`

```bash
echo -n "Enter the name of an animal: "
read ANIMAL
echo -n "The $ANIMAL has "
case $ANIMAL in
  horse | dog | cat) echo -n "four";;
  man | kangaroo ) echo -n "two";;
  *) echo -n "an unknown number of";;
esac
echo " legs."
```

