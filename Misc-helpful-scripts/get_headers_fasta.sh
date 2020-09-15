#!/bin/bash
# Extract unique headers/geneIDs from fasta files in current directory. Outputs to headerlist_input.txt

# for all .fa files in current directory
here='./*.fasta'

for file in $here; do
    grep "^>" $file | sed -e "s/,/\t/g" | cut -f 1 | uniq > headerlist_${file##*/}.txt;
done
# find all lines starting with T (header lines)
# replace all underscores '_' with tabs '\t'
# display first column of results only
# print to file 
