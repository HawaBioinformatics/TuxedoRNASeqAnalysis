#!/bin/bash

# create a directory for salmon quantification
mkdir /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/salmon_quant


# download the reference transcriptome

# wget ftp://ftp.ensembl.org/pub/release-101/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz
# gunzip Homo_sapiens.GRCh38.cdna.all.fa.gz

# transcriptome reference directory
# cd /Users/hawacoulibaly/Downloads/TestFiles

# rename reference genome file
# mv Homo_sapiens.GRCh38.cdna.all.fa transcripts.fa

# Create Salmon index
salmon index -t transcripts.fa -i transcripts_index

# output directory
cd /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/salmon_quant

# Run Salmon quantification for paired-end reads
salmon quant -i /Users/hawacoulibaly/Downloads/TestFiles/transcripts_index -l A \
  -1 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_1.fastq  -2 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_2.fastq \
  -p 8 -o SRR1027185_salmon_output

