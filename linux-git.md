# Staging

- `> git rm --cached -r` - ??? 
- `> git add -A` - stage all
- `> git reset HEAD *` - unstage all
- `> git reset HEAD *.swp` - unstage all `.swp` files

# Configuration

- `> git config --global --unset <config.key>` - unset a configuration key globally
- `> git config --global <config.key> <value>` - set a configuration key globally

# History
- `% git log --format="%s" v0.1.0..v0.1.1` - see commits between 2 tags
