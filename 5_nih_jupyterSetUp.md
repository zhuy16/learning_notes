# We can use jupyter lab/notebook on both Locus and Biowulf. (NIH)

# 1. Simplified procedures to start Jupyterlab on Biowulf. 
Add this line to the local ~/.bashrc file:

#### alias wulf="ssh -tX usr.name@biowulf.nih.gov 'echo ----hello loged-in!;bash -l'"
add these lines to the login ~/.bashrc file on biowulf

#### alias tm="module load tmux; tmux new -ct 'sinteractive --mem=50g --gres=lscratch:5 --tunnel'"

#### alias ju='conda activate jupyter && module load R/3.5 && jupyter lab --ip localhost --port $PORT1 --no-browser'
(Do `conda create jupyter` first to create a jupyter environment.
I set up my own jupyter environment for management purpose. It also allow you to install your own nbextensions. 
It is recommended but not absolutely required.)

## procedures to startup the jupyter lab with R kernal
on local machine type:
# wulf
it will automatically login into biowulf, and then type 
# tm
 it will load tmux, generate a new terminal and request a work node. and out put a tunnel. 
 copy and paste the tunnel onto a new local terminal to establish the tunnel. /n
 then type on the interactive node: 
# ju
 this will automatically load R module, and startup jupyter lab. 
 paste the new link to a web browser, and start working!


# 2. Using jupyter hub from Locus. 

Just go to https://ai-submit2.niaid.nih.gov:10101/ to start using the Jupyter hub like normal. 

## a, to install Python packages
To install python packages in the jupyter hub, module load Anaconda3/5.3.0 and activate the conda environment--jupyterenv and install packages in the --user option. This will make it available in the github. 

Tip: don't forget to restart the kernel before using the newly installed packages.
 
$ ~~module load Anaconda3/5.3.0~~ <br>
$ module load anaconda3/2020.07 

$ ~~source activate /sysapps/cluster/software/Anaconda3/5.3.0/envs/jupyterenv~~ <br>
$ source activate jupyterhub-1.1.0

$ pip install --user mypackage

For R packages, however, the R/3.6.1 kernel is managed by the Anaconda2/5.3.0 module. You should not activate the jupyterenv environment (which is essenntially managing the python packages in in the jupyter notebook). 

## b, To install R packages. you need to do this:

> module load Anaconda2/5.3.0 module

>R

inside R console: 

> install.packages("yourPackage")(Note that there are still significant number of packages that cannot be installed from the user end. Please contact the NIAID OEB HPC Team <NIAIDOEBHPCTeam@mail.nih.gov> for help.

See https://www.osc.edu/resources/getting_started/howto/howto_install_local_r_packages for more information.
 
If you’re given a choice of where to install the packages, make sure you use your home directory (or its shortcut, ‘~’).
After doing that, the package(s) you’ve installed should be available to any JupyterHub Portal session you sta/rt.
