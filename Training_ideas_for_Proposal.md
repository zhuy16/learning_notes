#Training proposal#
Title proposal: 
# How to use single-cell RNA-seq to advance your study: workflow and considerations. 

# Self-introduction
•	Did two projects on single cell RNAseq
•	Wetlab background in stem cell biology and neurodegeneration.
•	Current function
o	Promote/support scRNA seq 
•	Service scope
o	Consultation/bioinformatic analysis

# 3 big modules: 
•	### Biological question--stay focused on your question. 
o	> Well known advantages
	>> Heterogeneity
	>> Transitions 
	>> Rare cell popolations
	>> High resolution
o	> Be-aware of known challenges
	>> Transcriptional regulation
	>> High dropout rates
	>> Platform setup money/time consuming
•	>>> Accessible to professionals and instruments
	>> Computationally intensive
•	### experimental setup, 
o	> 10x Genomics / dropseq
o	> SmartII pipeline
o	> Nextseq 500/Novaseq /Hiseq
o	> Other considerations —scATAC, scCite-seq.
•	### bioinformatic analysis, 
o	> Languages	: shell script/linux + HPC, R, Python
	>> Organization
•	>>> Scripts: Version control git/github
•	>>> Folder organization: cookiecutter
•	>>> Automation: Snakemake
•	>>> Reproduciability: Singularity/ Docker.
	>> Shell script
	>> Rstudio/Rmarkdown
	>> Jupyter lab/ Notebook
o	> Approaches
	>> Pipelines
Pipelines are available, you just need to figure out input/output
Consisiderations 
•	>>> Alignment
o	>>> Cellranger
o	>>> Cite-seq-count
•	>>> Regular analysis (Seurat)
o	>>>> Clustering
o	>>>> Temporal/spatial progression
o	>>>> Differential expression —> pathway/GO analysis.
	>>>>> Deseq2, IPA, David, GSEA
	>> Selecting candidate for validations
•	>>> Regulatory analysis (iRegulon, Scenic, IPA) 
•	>>> Overlap with existing data/cross validation with other conditions. (Geo datasets, SRA etc)
•	>>> Literature search
•	### downstream validations
o	> Expresssional : FISH/IHC
	>> FISH are timeconsuming 
	>>> IHC need good antibodies <--analysis need to know what kind of molecules to find for validation.
o	> Functional validation: Virus, Drugs
	>> Selection of candidates has to be informed by the domain knowledge and must involve intensive discussions. 

