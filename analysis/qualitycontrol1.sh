#!/bin/bash

# INPUT : Raw FastQ files
# OUTPUT : FastQC reports in HTML format

# this command creates a directory for storing results
# be sure to inlcude the path and name where the file should be stored

mkdir /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/FastQC_report

# this command excecutes the FastQC anlysis 
# the first path in this command indicates the fastq files used as input
# the second path indicates the output directory created in the previous command

fastqc /Users/hawacoulibaly/Downloads/FASTQfiles/FastQfiles/*.fastq -o /Users/hawacoulibaly/Documents/GitHub/TuxedoRNASeqAnalysis/output/FastQC_report/

# remove unwanted/duplicated files (if necessary)
rm *.zip

