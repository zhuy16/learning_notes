#Training#
Title proposal: 
# Using single-cell RNA-seq to advance your study: workflow and considerations. 

### Self-introduction: previous projects on single cell RNAseq
>> #### Wetlab background in stem cell biology and neurodegeneration.
> ### Current function: 
>> #### Promote/support scRNA seq 
>> #### Service scope: Consultation/bioinformatic analysis

# Major modules: 
## Biological question--stay focused on your question. 
#### Well-known advantages
>> -> Heterogeneity
>> -> Transitions 
>> -> Rare cell popolations
>> -> High resolution
>> -> _Be-aware of known challenges_
>> -> It's only about transcriptional regulation
>> -> High dropout rates
>> -> Platform setup money/time consuming
>> -> Accessible to professionals and instruments
>> -> Analysis is a huge part
>> -> Validate is critical
>> #### Computationally intensive
## Experimental setup, 
-> 10x Genomics / dropseq
-> Smart II pipeline
-> Nextseq 500/Novaseq /Hiseq
-> Other considerations —scATAC, scCite-seq.
## Bioinformatic analysis, 
> ### Languages : shell script/linux + HPC, R, Python
>> -> Shell script -- for handling raw sequences and aligning/counting reads
>> -> R/Rstudio/Rmarkdown (a useful tip, how to use knitr::spin to generate report, and use it to demonstrate passing parameters as a software)
>> -> Python/Jupyter lab/ Notebook -- for reporting analysis
>> ### Organization
>>> ####  -> Scripts: Version control git/github
>>> #### -> Folder organization: cookiecutter
>>> #### -> Automation: Snakemake
>>> #### -> Reproduciability: Singularity/ Docker.
> ### Approaches
>> #### Pipelines
>> -> Pipelines are available, Seurat, you just need to figure out input/output (different workflow in Seurat)
>> -> Troubleshooting, you need to know R/Shell, R S4 class and methods.
> ### Consisiderations 
>>> #### Alignment
>>> -> FastQC
>>> -> Trimmomatic and fastx_trimmer, RSEM
>>> -> Cellranger (a simple example here?)
>>> -> Cite-seq-count
>>> #### Routine analysis (Seurat)
>>>> -> Clustering (unsupervised clustering, dynamic tree cutting with WGCNA, tSNE/UMAP/auto-encoder)
>>>> -> Temporal/spatial progression (Monocle3, Wishbone, Waterfall, and spatial analysis)
>>>> -> Differential expression —> pathway/GO analysis. (Deseq2, IPA, David, GSEA)
>> #### Selecting candidate for validations
>>> -> Regulatory analysis (iRegulon, Scenic, IPA) (Could be a practice on how to export networks from IPA into Cytoscape?)
>>> -> Overlap with existing data/cross validation with other conditions. (Geo datasets, SRA etc)
>>> #### Literature search
## Downstream validations
> ### Expresssional : FISH/IHC
>> -> FISH are timeconsuming 
>>> -> IHC needs good antibodies <--analysis need to know what kind of molecules to find for validation.
> ### Functional validation: Virus, Drugs
>> -> Selection of candidates has to be informed by the domain knowledge and must involve intensive discussions. 



