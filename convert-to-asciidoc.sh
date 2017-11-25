#!/usr/bin/env sh

paths=$(find -name '*.md')

for path in $paths
do
	# new path will have extension changed
	newpath="${path%.*}".adoc

	# take last element of the path
	title=$(basename "$path")

	# trim file extension
	title=${title%.*}

	# replace hyphens with spaces
	title=$(echo $title | sed 's/-/ /g')

	# capitalize every word
	title=$(echo $title | sed -e "s/\b\(.\)/\u\1/g")

	toc="= $title"
	toc="$toc\n:toc:\n:toc-placement!:\n\ntoc::[]\n\n"

	echo $toc >> $newpath
	pandoc -f markdown -t asciidoc $path >> $newpath
done
