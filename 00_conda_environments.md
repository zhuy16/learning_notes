# conda installation and environment setup on a local computer

Depending how do you installed your Python (and R), you could have multiple installations of them. After that, you could have installed different set of packages to different installation of Python and R. This make things very complicated and it could really mass up your memory and analysis. 

Conda can deal with this with this called environment control. you could set up a environment and make only one installation of R and Python available to your specific environment. This way you just need to remember your environment (most often specific to one of your project).

Further more, you could store your version of R, Python and each packages in your YAML file, so you could replicate your envrionment for reproducing your analysis. 

# choice of different version of conda
Anaconda3 navigator provide a good navigator and a ecosystem of useful softwares, such as jupyter lab, jupyter notebook, vscode, pycharm etc. However, anaconda3 binary installation is big and doesn't provide an easy command line access. I personally like to use a miniconda3 installation. 

To install that, I just download and unziped the miniconda3 at home directory and export the bin to PATH. 

Now I can create environments like this:

> conda create -n mypython3 python=3

(but depending on the system, the "conda activate" may not work. In my case I have to do it in an old way:)

> source activate mypython3 

Because I only have one python3, now I can find my python location only in one place:

> /Users/zhuy16/miniconda3/envs/mypython3/bin/python

I will install all packages in this build.
(accordingly, an build was created as myPython3 in the sublime text, it is a good editor with many convinient features)

Now I can do 

> conda install numpy

so numpy can be recognized in this python installation. 

# sublime text is a free, small and convinient program 

It is crucial to have this for learning python, because many of the tutorials are using similar environment. 

For configuration, please follow this video:

https://www.youtube.com/watch?v=xFciV6Ew5r4

**in the command line, we enter and get evaluation printed. but in sublime text, you have to use print() function to get out the value!**

# jupyterhub setup on Locus (NIAID HPC system)

** don't confuse myself with different environment with the same name** 
This one is the system jupyterenv environment that need to be modified. 

>source activate /sysapps/cluster/software/Anaconda3/5.3.0/envs/jupyterenv

>pip install --user bokeh 

>pip install --user holoviews

# Now I can go to the jupyter hub web server to work within jupyter notebooks with Locus as my server. 

 https://ai-submit2.niaid.nih.gov:10101/user/"yourID"/tree
 
# load dataframe in .txt or .csv format to python. 

dataframe is very common format for gene expression matrix. It is a entry point from where I got familar with python.

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

Even though python 2 has deprivated on Jan of 2020, there are many python codes online that doesn't have specification somewhere, wheter it is version 2 or version 3, Professionals can tell it straight away because of some signature syntex. But it is difficult for the begainers as we often get confused. 
