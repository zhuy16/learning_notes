Few things to note with my personal experience.

# Categories of bioinformatic tools
Generally, there are 4 main categories of bioinformatic tools. 

**1) in R** 
This could be the best to start with, as it handles visulization, and is simple and useful.

**2) in shell script**, alternatively called bash script. 
free codes/tools are mostly available in linux/unix systems. consider has such a system, be it either a mac computer, or a ubuntu OS installation, or simply register a AWS account in Amazon and start from a free EC2 instance.
Most tools for sequence analysis are written to work in shell script. 

**3) in python**
Python is more for general purpose and recently adapted for data science. It is more for machine learning and deep learning. 

**4) Graphical user interface(GUI) tools** (mostly not free)

# misconception

1. Computational analysis is not easy, it takes a lot of time. 

2. It works very different ways from biological research experiments. You may spend days to debug to find that an lack/extra blank space that caused your code not runing. This is not a waste of time. 

3. You need a master certificate? No, just learn from your work on it. Most conversion happens this way. You need youtube and google, you need to find the right keyword to get your answer. 

4. Organization is important. You will find yourself lost in massive file systems if you are not careful pay attention to those tools that help you to organize. 


# **Common useful tools**

## Organizationl

Jupyter lab/notebook: help organizing your code in blocks, with results, and show on the url, very nice for reporting. For use of R, Python and Shell and other languages, the trend is here.

Conda environments, for taking good control of the packages and versions of software you are using. 

Snakemake, it is the way to make code run automatically, once build you don't need to keep watching and intervening. 

Singularity, or Docker for general purpose, to built a more solid control not only on version of software, but also the version and flavor of linux OS. At the same time not that strict and big as a Virtual Machine. This is trendy. 

git/github, push your code and result to the web, so people can share through url.

# **for statistics, visualization, computation** 

R, ggplot2 (drawing graphs), dplyr(to allow pipes), pheatmap etc 

# **for bulk RNA-seq**

Sequence analysis: Shell script and SED

Trimmomatic, for filtering each sequence to cut out low quality bases at random position. 

Fastqx for cutting manually defined begining and tail sequences with bad quality. 

Bowtie2 to map to genome.

RSEM for making the transcriptome.

GTF file as reference for genome regions that are genes and transcripts.

Packages in R, DE-Seq2, EdgeR and various other tools in bioconductor (all S3/S4 based Object-oriented programming tools. Sometime comfusing, more complicated than basic operation in R, which is procedure based programming) 


# **for single-cell RNA-seq**

## raw seqence count:

CellRanger for 10x genomics. 

CITE-seq count for CITseq and Hash-seq

## routine downstream analysis

Seurat pipelines for various types of experiment in R

--general pipeline
--compare different conditions
--Multimodule (CITEseq, etc)
--Batch effect correction.

## dimension reduction
--PCA
--TSNE
--UMAP
--Autoencoder (Neural Network)

## others
for imputation --MAGIC --autoencoder
for trajectory --monocle (R,python), Wishbone(python)
for temporal inference --velocity

## gene regulatory network analysis

--SCENIC(based on iRegulon, and Genie3--regression tree and bootStraping)

--ARACNE(based on information theory)

--PIDC(information theory)

--snlearn (R package for Bayes Net)

**If you have doubt, please write to me at zzhonghua@gmail.com**
