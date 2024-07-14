#!/bin/bash

# INPUT : Raw FastQ files
# OUTPUT : FastQC reports in HTML format

mkdir qc_reports1

fastqc /Users/hawacoulibaly/Downloads/FASTQfiles/FastQfiles/*.fastq -o qc_reports1/

