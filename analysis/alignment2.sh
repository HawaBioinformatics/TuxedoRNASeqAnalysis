#!/bin/bash

# create directory for HISAT2 alignment sam files
mkdir /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/HISAT2_alignment

/Users/hawacoulibaly/Downloads/hisat2-2.2.1/hisat2 -p 8 -x /Users/hawacoulibaly/Downloads/grch38_tran/genome_tran -1 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_1.fastq -2 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_2.fastq -S /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/HISAT2_alignment/SRR1027185_aligned.sam

