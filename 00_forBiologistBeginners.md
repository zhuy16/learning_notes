Few things to note with my personal experience.

# Categories of bioinformatic tools

Generally, there are 4 main categories of bioinformatic tools. 

**1) in R** 

This could be the best to start with, as it handles visualization, and is simple and useful.

**2) in shell script**, alternatively called bash script. 

free codes/tools are mostly available in linux/unix systems. consider has such a system, be it either a mac computer, or a ubuntu OS installation, or simply register an AWS account in Amazon and start from a free EC2 instance.

Most tools for sequence analysis are written to work in a shell script. 

**3) in python**

Python is more for general purpose and recently adapted for data science. It is more for machine learning and deep learning. 

**4) Graphical user interface(GUI) tools** (mostly not free)

# misconception

1. Computational analysis is not easy, it takes a lot of time. 

2. It works very different ways from biological research experiments. You may spend days to debug to find that a lack/extra blank space that caused your code not running. This is not a waste of time. 

3. Do you need a master certificate? No, just learn from your work on it. Most conversion happens this way. You need youtube and google, you need to find the right keyword to get your answer. 

4. The organization is important. You will find yourself lost in massive file systems if you are not careful to pay attention to those tools that help you to organize. 


# **Common useful tools**

## Organizational

Jupyter lab/notebook: help to organize your code in blocks, with results, and show on the URL, very nice for reporting. For the use of R, Python and Shell, and other languages, the trend is here.

Conda environments, for taking good control of the packages and versions of software you are using. 

Snakemake, it is the way to make code run automatically, once build you don't need to keep watching and intervening. 

Singularity, or Docker for general purpose, to build a more solid control not only on the version of software but also the version and flavor of Linux OS. At the same time not that strict and big as a Virtual Machine. This is trendy. 

git/GitHub, push your code and result to the web, so people can share through URL.

# **for statistics, visualization, computation** 

R, ggplot2 (drawing graphs), dplyr(to allow pipes), pheatmap, etc 

# **for bulk RNA-seq**

Sequence analysis: Shell script and SED

Trimmomatic, for filtering each sequence to cut out low-quality bases at a random position. 

Fastqx for cutting manually defined beginning and tail sequences with bad quality. 

Bowtie2 to map to genome.

RSEM for making the transcriptome.

GTF file as a reference for genome regions that are genes and transcripts.

Packages in R, DE-Seq2, EdgeR, and various other tools in Bioconductor (all S3/S4 based Object-oriented programming tools. Sometimes confusing, more complicated than basic operation in R, which is procedure based programming) 


# **for single-cell RNA-seq**

## raw sequence count:

CellRanger for 10x genomics. 

CITE-seq count for CITseq and Hash-seq

## routine downstream analysis

Seurat pipelines for various types of experiments in R

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

--SCENIC(based on iRegulon, and Genie3--regression tree and bootstrapping)

--ARACNE(based on information theory)

--PIDC(information theory)

--bnlearn (R package for Bayes Net)

# It's never a waste of time to learn math and mathematics!

There are few different aspects of math we need to learn to grow

1. **linear algebra**. --you will understand how calculation works in the computer, and intuitive understanding or some of the most abstract notation representing how calculation are done in computer. refer to Youtube.

2. **calculus**, a central concept of gradient decent, is based on calculus. many of the cost function and likelihood maximisation algorithms are based on calculus.

3. **probability distributions and statistics** These are consideration and reasoning of different data type and statistical relationships. This is important for modling and inference. different distribution are assumptions of many algoriths, such as when doing differential expression, inputation, regulatory network analysis, etc.

4. **information theory, entropy and mutual information** this is essentially still statistics, but specifically dealing with all kinds of distribution without assumption, whether it is linear or non-linear.
 
5. **regression** for instance, linear regression, multiple regression, logistic regression, support vector machine, etc.

6. **bootstrapping/random forest and boosting** see how a stupid but fast machine can help us to solve large problems efficiently

7. **manifold, topology** this is usually considered for high dimensional data, in the problem of dimension reduction.

8. **graph/network theory** this has a very simple basic but is very popular to study interelationships between molecules.
 

**If you have doubt, please write to me at zzhonghua@gmail.com**
