# We can use jupyter lab/notebook on both Locus and Biowulf. 

# 1. SIMPLIFIED PROCEDURES TO START JUPYTERLAB ON BIOWULF 
Add this line to the local ~/.bashrc file:
#### alias wulf="sshpass -p ******** ssh -tX zhuy16@biowulf.nih.gov 'echo ----hello loged-in!;bash -l'"
add these lines to the login ~/.bashrc file on biowulf
#### alias tm="module load tmux; tmux new -ct 'sinteractive --mem=50g --gres=lscratch:5 --tunnel'"
#### alias ju='conda activate jupyter && module load R/3.5 && jupyter lab --ip localhost --port $PORT1 --no-browser'

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

Just go to https://ai-submit2.niaid.nih.gov:10101/user/zhuy16/tree to start using the Jupyter hub like normal. 

To install packages in the jupyter hub, just activate the jupyterenv and install packages in the --user option. This will make it available in the github. 
Tip: don't forget to restart the kernel before using the newly installed packages.

 
$ module load anaconda3/5.3.0
$ source activate jupyterenv
$ pip install --user mypackage

For R packages:
See https://www.osc.edu/resources/getting_started/howto/howto_install_local_r_packages for more information.
 
If you’re given a choice of where to install the packages, make sure you use your home directory (or its shortcut, ‘~’).
After doing that, the package(s) you’ve installed should be available to any JupyterHub Portal session you start.
