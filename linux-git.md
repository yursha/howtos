- https://git-scm.com

# Help
```
$ git help <verb>
$ git <verb> --help
$ man git-<verb>
```

# Terminology
- **distributed** (Git, Mercurial, Bazaar, Darcs)  and **centralized** (CVS, Subversion, Perforce) VCS differ in where all the deltas and associated metadata are stored.
- **difference-based** (CVS, Subversion, Perforce, Bazaar) vs **snapshot-based** (Git)
- **branch**
- **commit/snapshot**
- **stashing**
- **commit ammending**
- **patch** - file format representing difference between files
- **workflow**
- **checkout** - decompressed snapshot in the working directory
- **tracking files**

# Areas
- **Working Directory** - modified files
- **Staging Area (index) - a special file in `.git`** - staged files (place where a new snapshot is being formed).
- **`.git` repository** - committed files (compressed metadata and object database). Git generally only adds data here. Everything in Git is check-summed before it is stored and is then referred to by that checksum for the purposed of **integrity**. You can’t lose information in transit or get file corruption without Git being able to detect it. The mechanism that Git uses for this checksumming is called a SHA-1 hash. This is a 40-character string composed of hexadecimal characters (0–9 and a–f) and calculated based on the contents of a file or directory structure in Git. Git stores everything in its database not by file name but by the hash value of its contents. 
  + `.git/hooks/`
  + `.git/info/`
  + `.git/logs/`
  + `.git/objects/`
  + `.git/refs/`
  + `.git/config` - repository local configuration
  + `.git/COMMIT_EDITMSG`
  + `.git/TAG_EDITMSG`
  + `.git/FETCH_HEAD` - hashes of all branches heads for fetching (txt file)
  + `.git/HEAD`
  + `.git/ORIG_HEAD`
  + `.git/description`
  + `.git/packed-refs`
  + `.git/index`

# Commands
- `% git clone` - create new project folder, download/copy `.git` folder, checkout latest snapshot into working copy.
- `% git init` - create new `.git` folder with skeleton contents
- `% git push` - upload `.git` folder.
- `% git pull` - download `.git` folder
- `% git rm --cached -r` - ??? 
- `% git add -A` - stage all
- `% git reset HEAD *` - unstage all
- `% git reset HEAD *.swp` - unstage all `.swp` files
- `% git commit -m 'my message'`

## Configuration
- `% git config --global user.name 'Alex Yursha'`
- `% git config --global user.email 'alexyursha@example.com'`
- `% git config --global core.editor vim`

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

# Installing from source
If you do want to install Git from source, you need to have the following libraries that Git depends on: `curl`, `zlib`, `openssl`, `expat`, and `libiconv`.
- https://www.kernel.org/pub/software/scm/git/
- https://github.com/git/git/releases

```
$ tar -zxf git-2.0.0.tar.gz
$ cd git-2.0.0
$ make configure
$ ./configure --prefix=/usr
$ make all doc info
$ sudo make install install-doc install-html install-info
```

After this is done, you can also get Git via Git itself for updates:

```
$ git clone git://git.kernel.org/pub/scm/git/git.git
```
