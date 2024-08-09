* Use the shebang #! followed by the path to the interpreter.
```sh
#!/bin/bash
echo "Script running"
```
* assigning values to a variable and print it
```sh
greeting="Hello"
echo "$greeting"
```
* running command in shell and take the output as value
```sh
var_name=$(command)
```
*  Command substitution.
* **example**
```sh
time_now=$(date)
echo "Current time: $time_now
```
* capture input from the user
    * Use the read command.
```sh
echo "Enter your age:"
read age
echo "Your age is $age"
```
**exit code**
* It indicates the success (0) or failure (non-zero) of the last executed command.
```sh
ls /nonexistent
echo $?  # Output: non-zero (failure)
```
* include comments in your script
    * **Use the # symbol.**
```sh
# This is a comment
echo "Code execution"
```
**script parameters**
* parameters are accessed using $1, $2, etc.
```sh
echo "First parameter: $1"
```
* to find the number of arguments passed to a script
    **Use $#.**
```sh
echo "Number of arguments: $#"
```

* **single quotes vs double quotes**
* Use single quotes to prevent variable expansion and double quotes to allow it.
```sh
var="world"
echo 'Hello $var'  # Output: Hello $var
echo "Hello $var"  # Output: Hello world
```
**redirecting output to a file**
* Use > for overwrite and >> for append.
```sh 
echo "Hello, World!" > output.txt
```
* make a variable available to sub-processes
    * Use the export command.
```sh
export PATH=$PATH:/new/path
```
* stop script execution upon encountering an error
    * Use exit or set -e.
```sh
set -e
cp nonexistentfile /somewhere
echo "This won't be printed"
```
* perform arithmetic operations
    * **Use expr or $(( )).**
```sh
sum=$((3 + 5))
echo "Sum: $sum"
```
* extract specific fields from a line of text
    **Use the cut command.**
```sh
echo "name:age:location" | cut -d ':' -f 2
```
* to get the filename from a path
    **Use the basename command.**
```sh
path="/home/user/file.txt"
echo $(basename "$path")
```
* to check if a command exists
* **Use command -v or which.**
```sh
if command -v git >/dev/null 2>&1; then
  echo "Git is installed"
else
  echo "Git is not installed"
fi
```
* **convert a string to lowercase**
```sh
str="HELLO"
lower=$(echo "$str" | tr 'A-Z' 'a-z')
echo "$lower"
```
* **convert a string to uppercase**
```sh
str="hello"
lower=$(echo "$str" | tr 'a-z' 'A-Z')
echo "$upper"
```
* **list all environment variables**
*  Use the printenv command.
```sh
printenv
```
* **print a sequence of numbers**
*  Use the seq command.
```sh
seq 1 10
```
* to  find the type of a file
    * **Use the file command.**
```sh
file filename
```
* sort lines in a file
    * **Use the sort command.**
```sh
sort file.txt
```
* to remove duplicate lines from a file
    * **Use the sort and uniq commands.**
```sh
sort file.txt | uniq
```
* to merge multiple files into one
    * **Use the cat command.**
```sh
cat file1.txt file2.txt > merged.txt
```
* **system services**
```sh
systemctl status service_name

systemctl start service_name

systemctl rerstart service_name

systemctl stop service_name

systemctl enable service_name

systemctl disable service_name
```
* **package management**
```sh
yum update -y

yum install package_name -y

yum remove package_name -y

yum list available 

yum list installed
```
* to find the location of an executable
    * **Use the which command.**
```sh
which bash
```
* to check the version of a command
    * **Use the --version option.**
```sh
bash --version
```
* to display a calendar for a specific month and year
    * **Use the cal command.**
```sh
cal 12 2023
```