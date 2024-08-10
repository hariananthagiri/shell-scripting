### case statement
* To handle multiple conditions.
```sh
case "$1" in
  start) echo "Starting";;
  stop) echo "Stopping";;
  *) echo "Unknown option";;
esac
```
### IFS 
* it stands for Internal Field Sepereter
* IFS is a shell variable that contains list of charectors as its value 
* it is used to seperate the word in command line
* IFS shell variable is used during the field splitting during parameter expansion during command substitution and arthamatic expansion it is also used during the expansion of  * in position arguments
* it is used to split the lines into fields by using read utility
* the default value of IFS is white spaces(' '), tap, new line charector

### while loop
* to process a file line by line use while loop with read
* where IFS is internal field saperator
```sh
while IFS= read -r line; do
  echo "Line: $line"
done < "file.txt"
```
* How can you split a string into an array
```sh
string="a,b,c"
IFS=',' read -r -a array <<< "$string"
echo "${array[0]}"
```
### for loop
* To repeatedly execute commands.
```sh
for file in *.txt; do
  echo "File: $file"
done
```
### untill loop
* To repeat commands until a condition is true.
```sh
counter=1
until [ $counter -gt 5 ]; do
  echo "Counter: $counter"
  counter=$((counter + 1))
done
```
### array
```sh
#!/bin/bash

FRUITS=("Apple" "Banana" "Mango")

echo "First value: ${FRUITS[0]}"

echo "Second value: ${FRUITS[1]}"

echo "Second value: ${FRUITS[2]}"

echo "All Fruits: ${FRUITS[@]}"
```
### functions
* when the code is repeated again and again we can keep it in function and call it when ever we want
* **syntax**
```sh
function_name() {
    # code
}
# when you want to use the code use like below
function_name
```
* we can use arguments in the function
**syntax**
```sh
function_name argument1 argument2 ....
```sh
validate(){
   if [ $1 -gt $2 ]
   then
      echo "$1 is bigger"
   else
      echo "$2 is bigger"
   fi 

}

validate 20 30
```