#!/bin/bash
 
# *--> if we want to search a file we have less information we use this

cat names.txt | grep "*hna" 
cat names.txt | grep "man*"

# ? --> we use this we dont know some words of text and we use ? in unknown words

cat names.txt | grep "ha?"

# ^ if we known the fist letter of the text

cat names.txt | grep "^h"

# $ if we known the last letter of the text

cat names.txt | grep "$u"



