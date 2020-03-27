# Object_Oriented_Programing_in_R Introduction
> For data analysis in R, we routinely use functions to
extract/subset/tranform/visulize our data in an interactive interface,
or generate Rscript to reuse the code. This is powerful for big but
simple datasets.<br/> 
> When it comes to a complexed object, such as multiple
versions of functions/methods, and different aspects involved in each
dataset, Object-Orientied Programming will has to be involve to enhance
simplicity and increase the efficiency of work. These including almost
all the popular tools in the Bioconductor packages for genomic data.<br/>
> Eventhough experts are saying these are more for programmers, as a
genomic data scientist, I feel it becomes essential to know well the
theory and structures behind the objects. There are relatively very few
tutorials, here are some of the best videos I can find.<br/>
# Versions and systems
1. S3, a old/classical version of OOP in R. Classes are generated to
contain slots for different aspect of the data, each method has
polymorphism, and can be dispatched for different classes of data.
Classes are generally not well defined. the rationals for S3 was
explained in this seminar:
https://www.youtube.com/watch?v=VZkD7DXQ-fk&t=24s 
2. S4, in S4 each
classes are more formally defined. Other concepts are similar to S3.
classes in S4: https://www.youtube.com/watch?v=CeP-A__FroY&t=1s, methods
in S4: https://www.youtube.com/watch?v=wm-VCagXwj4 
3. R5/R6, these type of objects are good to store evolving data. Methods and data are 
stored together in one object. It looks more like a Python object. A
general view of R6: https://www.youtube.com/watch?v=3GEFd8rZQgY

