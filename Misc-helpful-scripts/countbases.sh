#!/bin/bash
# count total bases in a multi-fasta file $1(exclude header rows from count)

grep -v ">" $1 | wc | awk '{print $3-$1}'
