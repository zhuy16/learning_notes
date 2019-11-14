Note 1, 11-13-2019
## tmux 
A very useful terminal multiplexer, using it I don't need to open so many terminals, and 
using the session funtionalities, I can handle qrsh without worrying closing my jobs at the end of the day, or instability of internet. 
# Contr + b, + d : dettaching a session
You cannot use the session feature on a qrsh node, as quiting that node will make tmux missing. you have to use tmux on the login node, then qrsh.

Note 2, 11-13-2019   
## sudo
To log in as a admin account doesn’t mean you are the root, to do some operation, you still have to turn your self as root before doing so. 
to login to the administrator account
# su aauser
To become root as a god to do everything
# sudo su

Note 3, 11-13-2019
## Knitr::spin and #'
When writing R codes, just use #' instead of # to make comments. This mark will make Knit automatically recognize the comments and R code sessions. So R script can be used to generate report, as well as to be run as Rscript directly. 

Note 4, 11-13-2019
## passing arguments to Rscript
This way you can run Rscript using commend lines without an interactive session. 
#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

Note 5, 11-13-2019
## Seurat is a S4 object in R
Object-oriented programing are considered advanced R, and is commonly used in almost all bioconductor packages. 
Objects are defined with slots denoted by object@slot, each slot could have it's own slots or could be a generic class object.
R is more function-oriented language, not a object-oriented programing language (OOP).

Note 6, 11-13-2019  
commonly used tools for data scientists
## Jupyter lab
## Cookiecutter 
To clone folder stucture, to regularize folders, keep them organized. 
## Singularity/Docker 
For reproducible programing, to control operating system, software and language installed. 
## git/github
For backup codes and for version control.
## Snakemake
To glue together pieces of codes and programs, to achieve pipeline automation
## All kinds of cheat_sheet
It is nice to have them as a personal dictionary, personally I found it convinient to print out some for checking and for revision.

## htop
You have to log into the specific node to use the htop, to visualize the resource usage on that node.
