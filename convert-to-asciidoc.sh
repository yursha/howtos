#!/usr/bin/env sh

files=$(ls *.md)

for file in $files
do
	# ${parameter%word} shell parameter expansion
	newfile="${file%.*}".adoc
	echo $newfile
done
