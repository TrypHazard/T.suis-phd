#! /bin/bash

reference=$1
query=$2
promer --maxgap=500 --mincluster=100 --prefix=PROMER $1 $2
show-coords -r PROMER.delta > PROMER.coords
show-aligns PROMER.delta > PROMER.aligns
delta-filter -q -r PROMER.delta > PROMER.filter
mummerplot --png --large PROMER.filter -R $1 -Q $2 --prefix=PROMER
