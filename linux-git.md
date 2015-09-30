# Terminology
- **integrity** - Everything in Git is check-summed before it is stored and is then referred to by that checksum. You can’t lose information in transit or get file corruption without Git being able to detect it. The mechanism that Git uses for this checksumming is called a SHA-1 hash. This is a 40-character string composed of hexadecimal characters (0–9 and a–f) and calculated based on the contents of a file or directory structure in Git. Git stores everything in its database not by file name but by the hash value of its contents. Git generally only adds data.
- **distributed** (Git, Mercurial, Bazaar, Darcs)  and **centralized** (CVS, Subversion, Perforce) VCS differ in where all the deltas and associated metadata are stored.
- **difference-based** (CVS, Subversion, Perforce, Bazaar) vs **snapshot-based** (Git)
- **branch**
- **commit**
- **stashing**
- **commit ammending**
- **patch** - file format representing difference between files
- **workflow**

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

# Diff
- http://stackoverflow.com/questions/3368590/show-diff-between-commits/29374476#29374476

# How to do a feature
1. Pick a Jira issue from the backlog
1. Discuss it with actual users, how are they going to use it 
1. Fork `% git checkout -b <feature>`
1. Create an automated test case
1. Run a test case against existing code
1. Understand existing code behaviour
1. Change existing code
1. Make sure a test case succeeds against changed code
1. Commit with message prefixed as `JIRA_001: <message>`
1. Merge with `master`
1. Push
1. Close Jira issue
1. Tag `% git tag -a v1.0 -m "version 1.0"` and push
1. Release, i.e. deploy to production 


# Deployment
- **hot deployment** - deployment of code when an application continues to run.
