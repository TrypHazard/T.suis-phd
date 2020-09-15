#! /bin/bash
reference=$1
query=$2
promer --maxgap=500 --mincluster=100 --prefix=NUCMER $1 $2
show-coords -r NUCMER.delta > NUCMER.coords
show-aligns NUCMER.delta > NUCMER.aligns
delta-filter -q -r NUCMER.delta > NUCMER.filter
mummerplot --png --large NUCMER.filter -R $1 -Q $2 --prefix=NUCMER
