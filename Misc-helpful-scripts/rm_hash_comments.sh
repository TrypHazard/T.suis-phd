#! /bin/bash
#removes comment lines (starting with a #) from fasta files in the current directory

files='./*.fasta'
for i in $files;
do
	sed '/^#.*$/d' $i > $i.out
	mv $i.out $i
done
