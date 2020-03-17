These tips can be transferable to other projects in the future.

1. Using different indices to call fastq sequences when using the "cellranger mkfastq" program. Try original sequence and reverse-complementary of them.
2. Supply a validated whitelist (generated from the cellranger program and even with further QC steps) can greatly facilitate the calculations. 
3. Use the grep function to manually test for the result generated from cite-seq-count program.
4. When running the Seurat pipeline, Don't assume that the gene name formate is always correct. For instance, for human mitochondria genes are "^MT-GENE", for the mouse it is "mt-Gene".
5. Use Cookiecutter to organize the folders and files. 
6. Develop snakemake to automate the process next time. 
7. Learn Knitr::spin and add more comments for a better reporting system. 
