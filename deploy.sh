#!/bin/sh

for f in `ls *.cast`; do
	sed "s/%%CAST%%/$f/g" < template.html > $f.html
done
