- https://git-scm.com
- Bookmark: https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes
- https://git-scm.com/docs
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

# Concepts
- **distributed** (Git, Mercurial, Bazaar, Darcs)  and **centralized** (CVS, Subversion, Perforce) VCS differ in where all the deltas and associated metadata are stored.
- **difference-based** (CVS, Subversion, Perforce, Bazaar) vs **snapshot-based** (Git)
- **branch**

In git commits, trees and blobs are stored under the name equal to their hash values.

Commit
- type and size
- hash key of tree representing root directory
- author
- committer
- parent
- comment
- description

A tree is a blob which represents directory state
- type and size
- list of hash keys of trees and blobs that this directory contains

A blob
- type and size
- file contents

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
- `% git status -s` - compare files in working directory and index against the latest snapshot
- `% git checkout -- <file>` - replace file in the working directory with one from the latest snapshot (discard changes)
- `% git reset HEAD <file>` - unstage from index

## Rebasing
http://stackoverflow.com/questions/7744049/git-how-to-rebase-to-a-specific-commit

## Undo a commit 
- http://stackoverflow.com/questions/927358/how-do-you-undo-the-last-commit

## History
- `git log [<options>] [<revision range>] [[\--] <path>…​]`
The command takes options applicable to the `git rev-list` to control what is shown and how, and options applicable to the `git diff-*` to control how the changes each commit introduces are shown.

## log formatters
- `git log -p` - commits with diffs (patches) (helpful for code review)
- `git log --stat` - commits with stats
- `git log --shortstat`, `--name-only`, `--name-status`, `--abbrev-commit`, `--relative-date`
- `git log --pretty=oneline` - format
- `git log --oneline`
- `git log --decorate` - display which branches point to commits
- `git log --pretty=format:"h - %an, %ar : %s" - format
- `git log --graph` - ASCII graph showing your branch and merge history
- `git log --all` - log all refs
- `git log --graph --all` - nice staff
- `git shortlog` groups commits by author
- `git log --stat src/main/resources/assets/client` - see only commits to the files inside the folder (recursively) with stats

## log filters
- `% git log --format="%s" v0.1.0..v0.1.1` - see commits between 2 tags
- `git rev-list --max-parents=0 HEAD` - hash of first commit
- http://stackoverflow.com/questions/14247713/retrieve-the-list-of-child-commits-of-an-specific-commit-in-git`:`
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

# Diff
- `git diff branch1 branch2 [--]` - difference between tips of 2 branches
- `git diff branch1..branch2` - what's in branch2 that is not in branch1 (branch2 - branch1)
- `git diff branch1...branch2` - what's in branch1 or branch2 but not in their common ancestor (branch1 XOR branch2)
- http://stackoverflow.com/questions/3368590/show-diff-between-commits/29374476#29374476
If you run `git difftool` instead of `git diff`, you can view any of these diffs in software like `emerge`, `vimdiff` and many more. Run `git difftool --tool-help` to see what is available on your system.
- http://stackoverflow.com/questions/822811/showing-which-files-have-changed-between-two-revisions

`git mergetool --tool-help`

# Git Branching 
- Bookmark: https://git-scm.com/book/en/v2/Git-Branching-Branch-Management

A branch is a movable pointer to one of commits.
HEAD is a movable pointer to the latest commit in the current branch.

- A successful Git branching model http://nvie.com/posts/a-successful-git-branching-model/ 
- https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows
- `git branch feature` - create a new pointer to the commit pointed by HEAD.
- `git branch -d feature` - delete feature branch
- `git checkout branch_name` - 'HEAD = branch_name and revert files in working directory'
- `git checkout -b [local-branch-name] [remote-name]/[remote-branch-name]` - checkout a remote branch into a local branch and track remote branch from local one.

# Stashing
Stashing takes modified tracked files and staged changes and saves it on a stack of unfinished changes that you can reapply at any time.
- Bookmark: https://git-scm.com/book/en/v1/Git-Tools-Stashing#Un-applying-a-Stash 
- http://stackoverflow.com/questions/3040833/stash-only-one-file-out-of-multiple-files-that-have-changed-with-git/
- `git stash list` - show stash stack
- `git stash apply` - apply the stack top stash, by default changes that were staged are not staged again, you continue to have stash in a stack
- `git stash apply stash@{2}` - apply a particular stash
- `git stash apply --index` - try also to stage changes that were staged during saving a stash
- `git stash drop [stash@{2}]` - drop a (named) stash from the stack
- `git stash pop` - apply the topmost stash and drop it.

# Remotes
- `% git remote` - list remote names
- `% git remote -v` - list remote names and urls
- `% git remote add [name] [url]`
- `% git remote show [remote-name]`
- `% git fetch [remote-name]`
- `% git pull` - fetch and merge a tracked remote branch into a local branch
- `% git push [remote-name] [branch-name]` - send new snapshots upstream
- `% git remote rename [old-name] [new-name]` - renames a remote
- `% git remote rm [name]` - deletes a remote

# How to do a feature
1. Pick a Jira issue from the backlog
1. Discuss it with actual users, how are they going to use it
1. Fork `% git checkout -b feature`
1. Create an automated test case
1. Run a test case against existing code
1. Understand existing code behaviour
1. Change existing code
1. Make sure a test case succeeds against changed code
1. Commit with message prefixed as `JIRA_001: <message>`
1. Merge with `master` and delete feature branch
    - `git checkout master`
    - `git merge feature` (may be fast-forward or 3-way merge with common ancestor (merge-base))
        + if conflict:
        + git status
        + vim conflict-file
        + git add conflict-file
        + git commit
    - `git branch -d feature`
1. Push
1. Close Jira issue
1. Tag `% git tag -a v1.0 -m "version 1.0"` and push
1. Release, i.e. deploy to production

`git branch --contains <tag>` - find out which branch contains a specific tag

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

