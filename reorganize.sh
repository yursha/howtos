#!/usr/bin/env sh

files=$(ls *-*)

for file in $files
do
	dir=${file%%-*}    # if file='tool-vim.md' dir='tool'
	newfile=${file#*-} # if file='tool-vim.md' newfile='vim.md'
	mkdir $dir
	mv $file $dir/$newfile
done
