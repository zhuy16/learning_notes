**I found conda environment management + Jupyter lab (file browser, kernal manager) + Jupyter Notebook (coding and reporting in a URL interface) + git/github (version control over your code, keep tracking of the changes) + sublime text (for editing code and control the style) make the best development evironment for my work.** 

# conda installation and environment setup on a local computer

Depending on how did you install your Python (and R) on different occasions, you could end up having multiple installations of them in your computer. More problematically, you could have installed a different set of packages onto the different installation of Python and R, and forgot about which is which. This can make things very complicated and it could mass up your memory and analysis. 

Conda can deal with this using so-called environment control. you could set up an environment and make only one (or specific) installation/s of R and Python available to your specific environment. This way you just need to remember your environment (most often specific to one of your projects).

Furthermore, you could store your version of R, Python and each package in your YAML file, so you could replicate your environment for reproducing your analysis. 

# choice of different version of conda

Conda is initially developed for Python installation, so installing an anaconda3 or miniconda3 will install a python3 into your computer, and that will be your default python in Conda managed environments. don't install anaconda2 or miniconda2 because that is for python2, which has been deprived.

Anaconda3 comes with an anaconda navigator and provides a good GUI and an ecosystem of useful software, such as jupyter lab, jupyter notebook, vscode, pycharm etc. However, anaconda3 binary installation is big and doesn't provide an easy command-line access for me. I like to use a miniconda3 installation. 

To install that, I just download and unzip the miniconda3 at home directory and export the bin to PATH. 

**don't confuse anaconda/miniconda with bioconda.** 
bioconda is just a place/source/project there conda go to find packages. 
There are 3 most commonly used sources are default, conda-forge, and bioconda. These are equivalent to bioconductor, and CRAN in R world.

>conda config --add channels defaults

>conda config --add channels bioconda

>conda config --add channels conda-forge

Now I can create environments like this:

> conda create -n mypython3 python=3

(but depending on the system, the "conda activate" may not work. In my case I have to do it in an old way:)

> source activate mypython3 

Because I only have one python3, now I can find my python location only in one place:

> /Users/zhuy16/miniconda3/envs/mypython3/bin/python

I will install all packages in this build.
(accordingly, an build was created as myPython3 in the sublime text, it is a good editor with many convenient features)

Now I can do 

> conda install numpy

so numpy can be recognized in this python installation. 

you could also install now with jupyter lab. 

> conda install -c conda-forge jupyterlab


### to make a specific R installation available to the conda 
you need to install the package "IRkernel" in R and configure it to notebook. 

>install.packages('IRkernel')

and make jupyter see your R kernal

> IRkernel::installspec()

ref: https://irkernel.github.io/installation/

# sublime text is a free, small and convenient program 

It is crucial to have this for learning python because many of the tutorials are using a similar environment. 

For the initial stage, it provide me some critical conviniences. I don't need to count how many white spaces are in each indentation, and I can have multiple cursors in different location of one documents to type in an identical piece of text. etc

For configuration, please follow this video:

https://www.youtube.com/watch?v=xFciV6Ew5r4

In the command line, we enter and get evaluation printed. but in sublime text, you have to use print() function to get out the value!

# jupyterhub setup on Locus (this is specific to the NIAID HPC system)

** don't confuse myself with a different environment with the same name** 
This one is the system jupyterenv environment that needs to be modified. 

>source activate /sysapps/cluster/software/Anaconda3/5.3.0/envs/jupyterenv

>pip install --user bokeh 

>pip install --user holoviews

# Now I can go to the jupyter hub webserver to work within jupyter notebooks with Locus as my server. 

 https://ai-submit2.niaid.nih.gov:10101/user/"yourID"/tree
 
# load dataframe in .txt or .csv format to python. 

data frame is a very common format for gene expression matrix. It is an entry point from where I got familiar with python.

### importing pandas module
>>> import pandas as pd
   
### making data frame
>>> data = pd.read_csv("nba.csv") 

>>> df = pd.read_csv('filename.txt', delimiter= '\t', index_col=0)

### find the type of a variable
>>> "type(df)"

### find dimension of a dataframe
>>> 'df.shape', where df is your DataFrame.

### convert panda.dataframe to np arrary
>>> npy=dataset.to_numpy()

>>> np.save(outfile, x)

>>> np.load(outfile)

# Other Python topics:

### data types and scipy

https://docs.scipy.org/doc/numpy/user/basics.types.html

### convert your python script to a program using argparser

http://omgenomics.com/python-command-line-program/

https://www.youtube.com/watch?v=zi-FIG3efag

### check for function and arguments 
>>> import inspect

>>> 'def magical_way(f):'

>>> return inspect.getargspec(f)[0]

https://docs.scipy.org/doc/numpy/reference/generated/numpy.save.html

# variable types

>List ［ ］
>Tuple ()
>Set { }

>Set.Intersection()
>Set.difference()
>Set.union()

> disctionary
>Dictionary.get('key')
>Dictionary.Items()

### python3 vs python2

Even though python 2 has deprived on Jan of 2020, there are many python codes online that don't have specification somewhere, whether it is version 2 or version 3, Professionals can tell it straight away because of some signature syntex. But it is difficult for the beginners as we often get confused. 
