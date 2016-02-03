# Mercurial
- https://www.mercurial-scm.org/
- https://www.mercurial-scm.org/wiki/ColorExtension
- `hg help`

- `hg log file` - see file history
- `hg diff -r 10:20 file` - see changeset
- `hg cat path_to/myfile.cpp -r 46` - see specific file revision
- `hg log -v -p -r522` - see commit summary with patch

# SVN
- http://svnbook.red-bean.com/
- https://subversion.apache.org/
- http://tortoisesvn.net/

`svn` has no cloning but one can do `svn checkout URL`

# CVS
- http://www.nongnu.org/cvs/
- Bookmark: 2.4 The administrative files - https://web.archive.org/web/20140709051732/http://ximbiot.com/cvs/manual/
- Migration to Git - http://git-scm.com/docs/gitcvs-migration
- Centralized, ureserved checkouts, 

CVS stores individual file history in the same format as RCS.

- `cvs checkout folder` - clone a folder
- `cvs commit -m "Added an optimization pass" backend.c` - commit a file
- `cvs release -d folder` - push and delete (cvs checks that all modified files are committed).
- `cvs diff driver.c` - see diff between working copy and checked out file.

Which files are changed is tracked by mtime of last checkout/commit vs current mtime of files

# RCS
- http://www.gnu.org/software/rcs/rcs.html

# PRCS
- http://prcs.sourceforge.net/

# Aegis
- http://aegis.sourceforge.net
