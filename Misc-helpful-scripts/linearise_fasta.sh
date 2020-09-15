#! /bin/bash
# remove new line command for every non-header line in fasta file $1 
# output all linearised sequence lines under their respective header lines to file **lin_$1.fa**

sed -e 's/\(^>.*$\)/#\1#/' $1 | tr -d “\r” | tr -d “\n” | sed -e ‘s/$/#/#’ | tr “#” “\n” |sed -e '/^$/d' > lin_$1.fa 
done
