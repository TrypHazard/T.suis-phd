#!/bin/bash
#Remove everything after first space in header lines of linearised fasta file $1, name of output $2

sed '/^>/ s/ .*//' $1 > $2
