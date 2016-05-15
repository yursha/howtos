- TechNet Library https://technet.microsoft.com/en-us/library/aa991542.aspx

# Command-Line
- Command-Line Reference https://technet.microsoft.com/en-us/library/cc754340.aspx
- Environment variable expansion occurs when the command is read https://blogs.msdn.microsoft.com/oldnewthing/20060823-00/?p=29993/
- http://ss64.com/nt/delayedexpansion.html
- http://www.dostips.com/DtTipsStringManipulation.php

# PowerShell
- `$LastExitCode` - exit value of a program
- `$env:path`
- `$env:path.Split(';')`
- `New-Item c:\myfile.txt -type file`
- `echo "" >> filename.bat`
- `$PSVersionTable.PSVersion`
- `dir`

# Recursively process all files in a directory
- http://stackoverflow.com/questions/180741/how-to-do-something-to-each-file-in-a-directory-with-a-batch-script

# Looks for all unique file extensions in the folder
- `dir -recurse | select-object extension -unique`

http://ggajos.com/environment-variables-management/

#### Configure Microsoft Visual C++ for command line use.
- install Microsoft Visual Studio 2015 Community (remember to include Visual C++ library as its not included by default)
- launch Visual Studio Developer Command Prompt

- `NTSTATUS` values (MSDN Library error codes) https://msdn.microsoft.com/en-us/library/cc704588(d=lightweight,l=en-us,v=PROT.10).aspx

# `cmd.exe`
- `copy`
- `mkdir`
- `echo %path%`

To open a file in a default program just type file path on the command line

# `nmake`
- https://msdn.microsoft.com/en-us/library/dd9y37ha.aspx

# PowerShell
- https://technet.microsoft.com/en-us/library/bb978526.aspx
- https://technet.microsoft.com/en-us/library/ee221100.aspx

# Tools
- http://arstechnica.com/information-technology/2016/03/ubuntus-bash-and-linux-command-line-coming-to-windows-10/
- http://blog.dustinkirkland.com/2016/03/ubuntu-on-windows.html
