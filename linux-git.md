- https://git-scm.com
- https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#Short-Status
- https://www.atlassian.com/git/tutorials/

# Help
```
$ git help <verb>
$ git <verb> --help
$ man git-<verb>
```

# `.gitignore`
- https://github.com/github/gitignore
- https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#Ignoring-Files

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
- **tracked files** - files that are in the last snapshot
- **remote** (`https://`, `git://`, `user@server:path/to/repo.git` (ssh))
- three-way merging

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
- `% git rm --cached <pattern>` - remove files from git but keep it on disk
- `% git rm <pattern>` - remove files from git and disk
- `% git add <pattern>` - copy any new/changed file, directory, matches or everything into `.git/index` as they are now
- `% git reset HEAD *` - unstage all
- `% git reset HEAD *.swp` - unstage all `.swp` files
- `% git commit -m 'my message'` - create a new snapshot from staged changes.
- `% git commit -v` - open an editor with status and diff attached as comments.
- `% git commit -a -m 'added new benchmarks'` - skip `git add` and add and commit automatically what's tracked and changed. 
- `% git commit --amend` - fix the last commit (both contents and message)
- `% git status -s` - list filenames with their statuses in the working directory (recursively) [`--short` - succinctly].
- `% git checkout -- <file>` - replace file with one from the latest snapshot (discard changes)
- `% git reset HEAD <file>` - unstage from index
- `% git checkout -- <file>` - revert changes to a file in the working directory

## Git log formatters
- `% git log -p` - commits with diffs (patches) (helpful for code review)
- `% git log --stat` - commits with stats
- `% git log --shortstat`, `--name-only`, `--name-status`, `--abbrev-commit`, `--relative-date`
- `% git log --pretty=oneline` - format
- `% git log --pretty=format:"h - %an, %ar : %s" - format
- `% git log --graph` - ASCII graph showing your branch and merge history

## Git log filters
### By date/chronology
- `% git log -2` - last 2 commits
- `% git log --after=2.weeks`
- `% git log --before=2.weeks`
- `% git log --since="2008-01-15"`
- `% git log --since="2 years 1 day 3 minutes ago"`

### By people 
- `% git log --author`
- `% git log --committer`

### By message
- `% git log --grep` - grep through commit messages

### By changes
- `% git log -Sfunction_name` - grep through modifications

### By file path
- `% git log -- <filepath>` - files and directories of interest

### Commit which were not merged ?
- `% git log --no-merges`

### OR and AND
- `% git log --author --grep` - show either (OR) match
- `% git log --author --grep --all-match` - show both (AND) match

## Configuration
- `% git config --global user.name 'Alex Yursha'`
- `% git config --global user.email 'alexyursha@example.com'`
- `% git config --global core.editor vim`

# History
- `% git log --format="%s" v0.1.0..v0.1.1` - see commits between 2 tags

# Diff
- http://stackoverflow.com/questions/3368590/show-diff-between-commits/29374476#29374476
If you run `git difftool` instead of `git diff`, you can view any of these diffs in software like `emerge`, `vimdiff` and many more. Run `git difftool --tool-help` to see what is available on your system.

# Branching
- `% git checkout -b serverfix origin/serverfix` - checkout a remote branch into a local branch and track remote branch from local one.

# Stashing

# Remotes
- `% git remote` - list remote names
- `% git remote -v` - list remote names and urls
- `% git remote add [name] [url]`
- `% git remote show [remote-name]`
- `% git fetch [remote-name]`
- `% git pull` - fetch and merge a tracked remote branch into a local branch
- `% git push [remote-name] [branch-name]` - send new snapshots upstream

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
