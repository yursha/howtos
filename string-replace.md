# Replace by index

## Replace first occurence
```bash
# bash - parameter expansion
str="The good weather is good"
echo ${str/good/bad}
```

```bash
# bash - sed
sed 's/good/bad/' <<< 'The good weather is good'
```
## Replace all occurences
```bash
# bash - parameter expansion
str="The good weather is good"
echo ${str//good/bad}
```

```bash
# bash - sed
sed 's/good/bad/g' <<< 'The good weather is good'
```

# Replace chars
- `tr ' ' '_' <<< "string with spaces"` - replace spaces with underscores
- `tr -s ' ' '_' <<< "string with spaces"` - squeeze replace spaces with underscores

