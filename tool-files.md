# Bulk rename file using sed-like expressions

Syntax is `rename <sed expression> <files>`.

```shell
# dry-run
rename -n 's/sd/design/' sd*

# run
rename 's/sd/design/' sd*
```
