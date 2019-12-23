# SIMPLIFIED PROCEDURES TO START JUPYTERLAB ON BIOWULF 
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
 copy and paste the tunnel onto a new local terminal to establish the tunnel. \n
 then type on the interactive node: 
# ju

 this will automatically load R module, and startup jupyter lab. 
 paste the new link to a web browser, and start working!
