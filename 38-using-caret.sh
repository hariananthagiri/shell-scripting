#!/bin/bash

# using caret "^" in linux command it gives the information about fist letter
# if i want to count total number of directories in a linix

TOTAL_NO_OF_DIRECTORYS=$(ls -l | grep "^d" | wc -l)
echo "$TOTAL_NO_OF_DIRECTORY"