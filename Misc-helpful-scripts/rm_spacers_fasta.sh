#! /bin/bash
# removes -- spacer lines from a linearised fasta file, $1
# outputs to new file (tidy_input)

grep "\>" -A 1 $1 | grep -v "^--$" >> tidy_$1
