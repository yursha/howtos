# Command line progress logger
- use `\r` to print progress bar on the same line.

This means that while a logger tracks the progress of a task all other STDOUT output should be turned off.
Since progress logger is only usefull during interactive debugging it should be possible to *turn it off* during 
non-interactive sessions. A convenient option is to use command-line flag for this (or environment variable).
