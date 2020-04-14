Few things to note with my personal experience.

# Categories of bioinformatic tools

Generally, there are 5 main categories of bioinformatic tools. 

**1) in R** 

This could be the best one to start with, as R specializes in making good visualization and is straightforward and useful for research work.

**2) in shell script**, alternatively it is called bash script. 

Free codes/tools are mostly available in linux/unix systems. consider to have such an OS system, be it either a mac computer, or a ubuntu OS installation, or simply an AWS account on Amazon EC2 instance.

Most tools for sequence analysis are written to work in shell script. 

**3) in python**

Python is more for general purposes and recently adapted for data science. It is more popular for machine learning and deep learning applications. 

**4) Graphical user interface(GUI) tools** (mostly not free)

Cytoscape (free) is for network analysis and visualization, IPA (expensive) is for GO analysis, regulatory analysis and others. IDE examples include Rstudio for R, Jupyter lab for Python, R and Julia.

**5) Web-based tools and databases**

For example, there are David, Toppgene, Webgestalt for gene ontology analysis, ReviGO could help to remove redundancy of your GO terms. Galaxy is for RNA-seq anlysis, String is for protein-protein interaction, etc.

# misconception

1. Computational analysis is not easy, it takes a lot of time. 

2. Computational work progress very differently from biological research experiments. You may spend days to debug your code, just to find that a lack/extra blank space caused your broken code. This is not a waste of time. 

3. Do you need a master certificate? No, just learn bioinformatics from your work. Most career switchs I know happen this way. What you need is only youtube and google, but you need to find the right keyword to get your answer. 

4. The organization of your workplace and file system are important. You will find yourself lost in a massive file system if you are not careful. Pay attention to those tools that help you to organize. 

# **Love linux systems**


**With regards to linux systems**

Linux system is much more customizable, and efficient for command-line operations than Windows, Mac, Ubuntu, many HPC OS are just different versions of the Linux system. 

Command lines are more efficient in handling large data systematically. if you don't have a Mac or Ubuntu systems. Go to Amazon to start a free EC2 instance will do. https://aws.amazon.com/ec2/getting-started/ 

You don't need to have Linux for R and python, but better get familiar with it because it forms the base of the ecosystem. 

> different types of user accounts exist, the root(administrator), a regular user and a guest.

> each file and folder is managed by the permission system, has an owner, who will set different permissions for the user, group member, and others to read, write and execute. 

> for a script (a piece of code that can do an operation) to work. you have to, first to make sure the code has no problem; second, define the shell in the header so the machine knows what to use to execute the script; third, make the file executable my 'chmod' function; forth, you have to put the file in a directory into $PATH, and source it, so the OS knows where to find it. 

> symbolic links are very useful, so you can skip typing many "cd"s. 

> don't use the root privilege unless necessary, otherwise, you may end up destroying your important file or the entire file system by accident.  

> Customize dotfiles and snippets. 

in linux, a file, with a .name indicate a hidden file. you will need to use 

> ls -lah 

to see this type of files. This type of files can be very useful for configuring your system. Important ones are .bashrc, .ssh, .git etc. You could watch the following video to see details.

https://github.com/CoreyMSchafer 

1. define alias (defined command line shortcuts used throught your machine) to avoid repeatitive typing in the ~/.bashrc file. 

2. customize your $PS1 environmental variable so you can always know the folder and path you are in, which account/privillege are you using, and on what host.  

# **Common useful tools**

## Organization of workplace

Without this, it's easy to get lost in file systems and you may find most of the time you spend are on struggling to understand what you have done few weeks ago. 

Jupyter lab/notebook: help to organize your code in blocks, with results, and show on the URL, very nice for reporting. For the use of R, Python and Shell, and other languages, the trend is here.

Conda environments, for taking good control of the packages and versions of software you are using. 

Snakemake, it is the way to make code run automatically, once build you don't need to keep watching and intervening. 

Singularity, or Docker for general purpose, to build a more solid control not only on the version of software but also the version and flavor of Linux OS. At the same time not that strict and big as a Virtual Machine. This is trendy. 

git/GitHub, push your code and result to the web, so people can share through URL.

I would say [Justin Fear's handy tips](https://github.com/jfear/datascience_presentations) are especially inspiring to me.

# **for statistics, visualization, computation** 

R, ggplot2 (drawing graphs), dplyr(to allow pipes), pheatmap, etc 

# **for bulk RNA-seq**

Sequence analysis: Shell script and 'sed' and 'awk'.

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

# It's never a waste of time to learn math and statistics!

There are a few different aspects of math we need to learn to grow. Not in a hurry but good to learn:
1. **linear algebra** --you will understand how the calculation works in the computer, and intuitive understanding or some of the most abstract notation representing how the calculation is done in the computer. refer to Youtube.

2. **calculus** a central concept of gradient descent, is based on calculus. many of the cost function and likelihood maximization algorithms are based on calculus.

3. **probability distributions and statistics** These are consideration and reasoning of different data types and statistical relationships. This is important for modeling and inference. Distributions are assumptions behind many algorithms, such as when doing differential expression, imputation, regulatory network analysis, etc.

4. **information theory, entropy, and mutual information** this is essentially still statistics, but specifically dealing with all kinds of distribution without assumption, whether it is linear or non-linear.

5. **regression** for instance, linear regression, multiple regression, logistic regression, support vector machine, etc.

6. **bootstrapping/random forest and boosting** see how a stupid but fast machine can help us to solve large problems efficiently

7. **manifold and topology** this is usually considered for high dimensional data, in the problem of dimension reduction.

8. **graph/network theory** this has a very simple basic but is very popular to study interrelationships between molecules.
 

**If you have doubts, please write to me at zzhonghua@gmail.com**
