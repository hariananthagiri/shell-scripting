#!/bin/bash

# we are using redirection
# > ---> it takes the output (i.e what we see in terminal as result) and overwrite the output / output redirection
# >> ---> it takes the output and append the output
# < --->  it takes the input (i.e what we type by key board) / input redirection

ls -l > output.txt # here the output is stored to file1.txt
echo "hari krishna" >> output.txt   # here the output is stored and appended to file1.txt

wc -l < output.txt  # it will take the input as data from output.txt file and give to wc command
wc -l;wc -c << output.txt  # it will append the take  input from output.txt file and give to wc command

wc -l 1> sucess.txt # it will store only sucessfull output to sucess.txt file
wrong 2> error.txt  # it will store only failure output to errors.txt file     
ls -l; hhhh &> all.txt  # it will store both sucess and failure output in all.txt

