## tmux 

A very useful terminal multiplexer, using it I don't need to open so many terminals, and using the session functionalities, I can handle qrsh without worrying closing my jobs at the end of the day, or instability of internet. 
# Contr + b, + d : detaching a session
You cannot use the session feature on a qrsh node, as quitting that node will make tmux missing. you have to use tmux on the login node, then qrsh.

## Knitr::spin and #'

When writing R codes, just use #' instead of # to make comments. This mark will make Knit automatically recognize the comments and R code sessions. So a R script can be used to generate a report, as well as to be run as Rscript directly. 

## passing arguments to Rscript

This way you can run Rscript using commend lines without an interactive session. 
#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

## commonly used organizational tools for data scientists

## Jupyter lab
jupyter notebook is not good for interactive work, as when the machine want you "yes" or "no" response, notebook will not let you.
To install packages, should be done through the terminal instead of inside the notebook. Jupyter lab offer that flexibility, and various other functionalities, such as file navigator in the same window. Jupyter lab extensions will allow you to enhance further the convinience of Jupyter lab.

## Cookiecutter 

To clone the folder structure, to regularize folders, keep them organized. 

## Singularity/Docker 
For reproducible programming, to control operating system, software and language installed. 

## git/GitHub
For backup codes and version control.
For git push without using keys. First add key of the host computer to the github account; second, have to make sure the .git/config has the setting of ssh address.

For example, 

Open .git/config and find the [remote "origin"] section. Make sure you're using the SSH one:
## attention to the format:
ssh://git@github.com/username/repo.git

And NOT the https or git one:

https://github.com/username/repo.git or 
git://github.com/username/repo.git 


## it may be troublesome to type this string all the time. 
you could put it as a bash executable file, into a folder in your PATH. so you could call the program to change the page.
gitCode
'
#! /usr/bin/sh
git add -u . && git commit -m $1 && git push
'
You could pass the comment as the $1 argument in your shell.

## Snakemake
To glue together pieces of codes and programs, to achieve pipeline automation
## "|" in the shell script, pipe sign!
This sign generates data flow in shell scripts. 

## 7. "!" magic sign for shell script in Jupyter notebook.
## 8. To exit from emacs or xemacs press CTRL-X CTRL-C.
## 9 rSync to synchronize folders
rSync -av --delete --exclude 'data' -e ssh usr.name@biowulf.nih.gov:/path/to/the/folder ./
rSync can be dangerous as well. For the destination, it is always good have a designated folder. otherwise you may accidentaly erase all the files in you distination!!!

## htop
You have to log into the specific node to use the htop, to visualize the resource usage on that node.

# NIH specific:
## sudo

To log in as an admin account doesn’t mean you are the root, to do some operation, you still have to turn your self as root before doing so. 
to login to the administrator account
# su aauser
To become root as a god to do everything
# sudo su

## Seurat is a S4 object in R
Object-oriented programing are considered advanced R and is commonly used in almost all Bioconductor packages. 
Objects are defined with slots denoted by object@slot, each slot could have its slots or could be a generic class object.
R is more function-oriented language, not an object-oriented programing language (OOP).


## All kinds of cheat_sheet
It is nice to have them as a personal dictionary, personally, I found it convenient to print out some for checking and for revision.
