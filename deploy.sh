#!/bin/sh

cat head.html > index.html

for f in `ls *.cast`; do
	sed "s/%%CAST%%/$f/g" < template.html > $f.html
	sed "s/%%CAST%%/$f/g" < snippet.html >> index.html
done

cat tail.html >> index.html
