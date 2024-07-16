#!/bin/bash
# install brew 
# eval "$(/opt/homebrew/bin/brew shellenv)"

# https://github.com/signalbash/how_are_we_stranded_here
# create a directory for salmon quantification
mkdir /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/salmon_quant


# download the reference transcriptome

# https://www.gencodegenes.org/human/release_46.html
# gunzip gencode.v46.transcripts.fa.gz

# transcriptome reference directory
# cd /Users/hawacoulibaly/Downloads/TestFiles

# rename reference genome file
# mv gencode.v46.transcripts.fa transcripts.fa

# Create Salmon index
salmon index -t transcripts.fa -i transcripts_index

# output directory
cd /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/salmon_quant

# Python package for testing strandedness of RNA-Seq fastq files
# https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-022-04572-7
# check_strandedness --gtf /Users/hawacoulibaly/Downloads/TestFiles/gencode.v38.annotation.gtf --transcripts /Users/hawacoulibaly/Downloads/TestFiles/transcripts.fa --reads_1 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_1.fastq --reads_2 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027185_2.fastq

# Run Salmon quantification for paired-end reads
# Library type: IU (an unstranded paired-end library where the reads face each other)

salmon quant -i /Users/hawacoulibaly/Downloads/TestFiles/transcripts_index -l A \
  -1 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027186_1.fastq  -2 /Users/hawacoulibaly/Downloads/TestFiles/SRR1027186_2.fastq \
  -p 8 --validateMappings --outFilterMultimapNmax -o SRR1027186_salmon_output

