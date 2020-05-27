## Passing Arguments to the Rscript
This way you can run Rscript using commend lines without an interactive session. 

#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

## Passing Arguments to the Shell Script
Arguments can be passed to the script when it is executed, by writing them as a space-delimited list following the script file name.

Inside the script, the $1 variable references the first argument in the command line, $2 the second argument and so forth. The variable $0 references to the current script. In the following example, the script name is followed by 6 arguments.

./bin/my_shopping.sh apple 5 banana 8 "Fruit Basket" 15

echo $3 --> results with: banana

BIG=$5

echo "A $BIG costs just $6" --> results with: A Fruit Basket costs just 15

The variable $# holds the number of arguments passed to the script

echo $# --> results with: 6

The variable $@ holds a space delimited string of all arguments passed to the script

ref: https://www.learnshell.org/en/Passing_Arguments_to_the_Script 

## Passing Arguments to the Python Scripts
https://stackabuse.com/command-line-arguments-in-python/ 
