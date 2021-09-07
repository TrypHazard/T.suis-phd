#!/bin/bash
# convert all genomes in a directory in .fa format into blast databases
#
# for all files ending in .fa in a given directory
for file in ~/phd/genomes/*.fa; do
#send each to makeblastdb as a nucleotide job, and name from file name 
makeblastdb -in $file -dbtype nucl -title ${file##*/}_db;
done
