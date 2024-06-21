#!/bin/bash

# using caret "^" in linux command it gives the information about fist letter
# if i want to count total number of directories in a linix

D=$(ls -l | grep "^d" | wc -l)
echo "$D"