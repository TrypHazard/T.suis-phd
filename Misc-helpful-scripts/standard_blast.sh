#! /bin/bash
# blast query
for file in ~/phd/genomes/*.fa; do
blastn -query ~/phd/seq_lib/input.fa -db $file -max_target_seqs 1 -max_hsps 1 -evalue 10e-8 -parse_deflines -out ~/phd/blast_results/maxiblast_${file##*/} -outfmt "6 qseqid sseq";
done

# Where:
# input.fa = query
# databases are present for all files ending in .fa in genome directory
