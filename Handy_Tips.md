## 1. tmux 
Note 1, 11-13-2019
A very useful terminal multiplexer, using it I don't need to open so many terminals, and using the session functionalities, I can handle qrsh without worrying closing my jobs at the end of the day, or instability of internet. 
# Contr + b, + d : detaching a session
You cannot use the session feature on a qrsh node, as quitting that node will make tmux missing. you have to use tmux on the login node, then qrsh.

## 2. sudo
Note 2, 11-13-2019
To log in as an admin account doesn’t mean you are the root, to do some operation, you still have to turn your self as root before doing so. 
to login to the administrator account
# su aauser
To become root as a god to do everything
# sudo su

## 3. Knitr::spin and #'
Note 3, 11-13-2019
When writing R codes, just use #' instead of # to make comments. This mark will make Knit automatically recognize the comments and R code sessions. So a R script can be used to generate a report, as well as to be run as Rscript directly. 

## 4. passing arguments to Rscript
Note 4, 11-13-2019
This way you can run Rscript using commend lines without an interactive session. 
#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

## 5. Seurat is a S4 object in R
Note 5, 11-13-2019
Object-oriented programing are considered advanced R and is commonly used in almost all Bioconductor packages. 
Objects are defined with slots denoted by object@slot, each slot could have its slots or could be a generic class object.
R is more function-oriented language, not an object-oriented programing language (OOP).

## 6. commonly used organizational tools for data scientists
Note 6, 11-13-2019
## Jupyter lab
## Cookiecutter 
To clone the folder structure, to regularize folders, keep them organized. 
## Singularity/Docker 
For reproducible programming, to control operating system, software and language installed. 
## git/GitHub
For backup codes and version control.
## Snakemake
To glue together pieces of codes and programs, to achieve pipeline automation
## All kinds of cheat_sheet
It is nice to have them as a personal dictionary, personally, I found it convenient to print out some for checking and for revision.

## htop
You have to log into the specific node to use the htop, to visualize the resource usage on that node.

## "|" in the shell script, pipe sign!
This sign generates data flow in shell scripts. 

## 7. "!" magic sign for shell script in Jupyter notebook.
## 8. To exit from emacs or xemacs press CTRL-X CTRL-C.