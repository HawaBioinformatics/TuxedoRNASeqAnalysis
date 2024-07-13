# TuxedoRNASeqAnalysis
A bulk-RNA pipeline using a reference genome to guide transcriptome assembly from RNA sequencing data and including differential expression analysis

## 1.	Quality control
•	[FastQC](http://www.bioinformatics.bbsrc.ac.uk/projects/fastqc/) was used to evaluate the quality of the raw sample reads
•	Adapter trimming (if necessary) using [Cutadapt](https://cutadapt.readthedocs.io/en/stable/) to remove all reads that have the adaptor on them and keep reads with no adaptor

The new Tuxedo method for RNA-Seq, often referred to as Tuxedo 2, is an updated and improved version of the original Tuxedo pipeline. It incorporates several enhancements to increase accuracy, speed, and ease of use. 

## 2.	Read Alignment 
•	[HISAT2](http://daehwankimlab.github.io/hisat2/manual/): Raw RNA-Seq reads are mapped to the reference genome using HISAT2. HISAT2's use of a hierarchical graph FM index allows it to handle complex read alignments quickly and efficiently.
Other Tools: HISAT2, STAR, Bowtie2*

## 3.	Transcript Assembly
•	[StringTie](https://ccb.jhu.edu/software/stringtie/index.shtml): The aligned reads from HISAT2 are assembled into transcripts using StringTie. StringTie accurately reconstructs the transcripts and quantifies their abundances using a novel network flow algorithm.
Other Tools: Cufflinks*

## 4.	Quantification
•	[FeatureCounts](https://academic.oup.com/bioinformatics/article/30/7/923/232889): If you don’t care about novel transcripts and have a reference genome, go straight to “FeatureCounts” which quantifies known transcripts using a reference genome, and the analysis generates a GTF annotation, while StringTie accounts for novel transcripts/genes if the known annotation is included. If you don’t include known annotation, only counts based on the regions your read data represents (transcripts/genes) will be generated – and that may be where the biggest differences are coming from.
Other Tools: StringTie*

## 5.	Differential Expression Analysis
•	[DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html): Ballgown was not designed for *gene*-level differential expression analysis -- it was written specifically to do *isoform*-level DE. Using DESeq2 with FeatureCounts is a much better-supported operation if your main interests are in gene-level DE. Count-based models like those in DESeq2 are appropriate for gene-level DE (whereas Stringtie and Ballgown are tools for when the count-based models *don't* work). So Hisat2 -> FeatureCounts -> DESeq2 would be a great workflow if you don't need isoform-level results
Other Tools: EdgeR and Ballgown*


Scripts and workflow necessary to reproduce the BulkRNA-Seq analysis can be found in the [scHumanBcellFlu/analysis]() sub-directory.
