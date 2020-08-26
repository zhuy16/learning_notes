## tmux 
You may find that you are opening too many command-line terminals because you cannot close terminals that are in the process of running programs, minimizing them to the taskbar maybe not enough because you have already too many of them. Tmux can free you up by making terminal detached to the background, so you can focus on a few terminals that you are actively working on. You can list and re-attach these background terminals whenever you want to go back for a check.   

It is called a terminal multiplexer, by using the session functionalities, I can handle qrsh on HPC without worrying closing my jobs at the end of the day, before leaving my office, and don't worry about the instability and disconnection of the internet when working on HPC through VPN. 

#### Contr + b, + d : detaching a session
You cannot use the session feature on a qrsh node, as quitting that node will make tmux missing. you have to use tmux on the login node, then qrsh.

## Knitr::spin and #'

When writing R codes, just use #' instead of # to make comments. 

This mark will make Knitr automatically recognize the comments sections, at the same time you don't need to add any mark for the R code sections. 

A R script with this style can be used to generate a report as a markdown file (knitr::spin("filename.r")), at the same time it can be run as Rscript file without worrying about the marks (that can be in a regular .rmd markdown file) that may stop the process. 

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

## 2 factor authentification
2-factor authentification adds factor for authentification. usually using your smartphone with your fingerprint. 
Whenever you log in, after entering a password, you will also need to enter a 6 digit number appearing on your phone. to see this number, you will need to unlock your phone and enter an app such as 'LastPass authenticator', which will show these digits associated with your account. 
This authentification will provide some recovery codes when you pair with your account. when you accidentally lose the authenticator (resetting your phone for instance), you can enter the recovery mode and enter one of the recovery codes, which will lead you to a new set of recovery code for later use, and a barcode for you to scan from your newly installed authenticator to reconfigure the 2FA setup. 
