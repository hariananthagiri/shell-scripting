#!/bin/bash
 
# *--> if we want to search a file we have less information we use this

cat names.txt | grep "*hna" | wc -l 
cat names.txt | grep "man*" | wc -l

# ? --> we use this we dont know some words of text and we use ? in unknown words

cat names.txt | grep "ha?" | wc -l

# ^ if we known the fist letter of the text

cat names.txt | grep "^h" | wc -l

# $ if we known the last letter of the text

cat names.txt | grep "$u" | wc -l



