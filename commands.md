* to genrate a key in git bash
* ```
    ssh-keygen -f file-name
  ```
* connect to linux by using below syntax
* ```
    ssh -i path/to/private-key-name user_name@ip_address
  ```
* **#** 
    * to become root user run **sudo su -**
    * root user click **exit** to get back to narmal user 
* **$** 
    * Narmal user 
* **-** 
    * for single charector
* **--** 
    * for word or sentence
### PATH
1. Absolute Path
    * It gives the location from starting to current path
2. Relative Path
    * It gives the location from current path(where you are now actually) to requied path
* **uname** 
    * kernal name
* **cd** 
    * change directory
* **cd..** 
    * one step back from parent folder
* **ls** 
    * list of sub-directoryes
* **ls -l** 
    * long listing with types of files in alphabatical order
* **ls -lr** 
    * long listing with types of files in reverse alphabatical order
* **ls -la** 
    * long listing with types of files includeig hidden files 
* **ls -lt** 
    * latest files on the top
* **ls -ltr** 
    * old files are on the top
* **ls -R** 
    * it shows the directories and sub-directoryies at a time
* **tab**
* when we have unique name type first letter and enter tab no need to type full name tab gives the name
* **ctrl+c**
* use above command to stop the command process and restore the terminal window
* **clear**
* to clear everything
* **exit**
* to exit from terminal
 
### CRUD
#### Create
* **touch**
    * to create an empty file
   * **syntax**
```sh
touch file_name
```
* **mkdir**
    * make directory
  * **syntax**
```sh
mkdir directory_name
mkdir -p give/path/directory_name
```
#### Update
* **cat > file_name**
    * to update a file with content
* **cat >> file_name**
    * to append a file with content
* use **ctrl+d and hit enter**
#### Read
* **cat file_name**
    * to read the data from top to buttom
* **tac file_name**
    * to read the data from buttom to top 
#### remove file and folder
*   **rm file_name**
    * to delete or remove a file
*   **rm directory_name**
    * to delete or remove a empty directory
*   **rm -r directory_name**
    * to delete or remove a directory haveing folders and data
#### Copy
* **cp source_file_name destination_file_name**
    * to copy one file to other
* **cp -r**
    * to copy directories recurcively we use above command
* **mv source_file_name destination_file_name**
    * to move one file to other
    * with in the same folder we run mv command it works as rename
*   **pipeing |**
    * | one command output will become the input to another command
*   **cut -d "delimiter" -f n file_name**
    * it will cut a portion of data based on the delimiter given
    * where
        "d" type of dlimited (, : / - _  )
        "f" field
        "n" field number
#### example
```sh
 cut -d ':' -f 2 fifile_name
 cut -d ':' -f 2,3 file_name
 ```
* **awk**
    * awk command is used to divide the data based on columns
    **awk -F 'dlimitter' '{print $1, $2}' file_name** for first fragment
    **awk -F 'dlimitter' '{print $NF}' file_name** for last fragment
* **example**
```sh
awk -F ','  '{print $1, $2}' file_name
```

* **head**
    * to display the first few lines of a file
    * by default it will give 10 first lines
```sh
head -n 5 file.txt
```
* **tail**
    * to display the last few lines of a file
    * by default it will give 10 first lines
```sh
tail -n 5 file.txt
```
* **sed**
    * it is used to you replace text in a file
```sh
sed -i 's/old_text/new_text/g' file.txt
```
* **grep**
    * it is usd to search the data in a file 
    * by default linux is case-sensitive to make it case insensitive in grep while searching use "-i"
```sh
grep -i "word-to-search" file-name
```
* by using below command it avide or display do not match  word given on result
```sh
grep -VE "word-to-search" file-name
```
* by using below command we can highlight the searching text in colur
```sh
grep --color "word-to-search" file-name
```
* by using below command we can search the string recursively
```sh
grep -r "word-to-search" file-name
```
* by using below command we can see all the options of grep
```sh
grep --help 
```
* to find files containing specific text use below grep command
```sh
grep -rl "search_text" /path/to/dir
```
* **word count**
* to count the number of lines in a file
```sh
wc -l < file.txt
```
* to count the number of words in a file
```sh
wc -w < file.txt
```
* to pause the execution of a script for a specific time
```sh
sleep 5
```
* to display the system's hostname
```sh
hostname
```
* to change the system's hostname
```sh
hostnamectl set-hostname new_hostname
```
* to avide the duplicates in a file using below command
* **Use the sort and uniq commands.**
```sh
sort file.txt | uniq
```
* to  sort lines in a file
```sh
sort file.txt
```
* converting a string to lowercase and uppercase
    * **Use tr. (translator)**
```sh
str="hello"
upper=$(echo "$str" | tr 'a-z' 'A-Z')
echo "$upper"
str="HELLO"
lower=$(echo "$str" | tr 'A-Z' 'a-z')
echo "$lower"
```
* To change shell options and positional parameters.
```sh
set -x  # Enable debugging
```
 **find**
* it is used to find the file based on the name, type, -mtime +0 to +n -0 to -n
* we use . for existing folder
* **syntax**
```sh
find. /path/to/search options]
find. -name file_name
find. -iname file_name  # to make case in-sensitive
find. -name *file_name_part* or *.txt
find. -type d/f/l file_name
find. -empty 
find. /path/to/search -mtime +0 to +n file_name
find. /path/to/search -mtime -0 to -n file_name
```
* **-mtime n**
* where n value is positive or negitive starts from 0 
* to find the id of a user use below command
    **id -u**
* to find thev id of a particular user use below command
    **id user_name -u**
* to print the account user_name use below command
    * **whoami**
* to know the hostname use below command
    **hostname**
### colors
```sh
READ="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NARMAL="\e[0m"
# $R $G $Y $N for best practice store it in variable and use as shown 
* to enable this color use -e as below 
    * ***echo -e $R failure $G sucess $Y highlate $N narmal***
```
**note**
    * starting and stoping of the colur is very importent
     $R error message $N 
* download the files using line use below command
    * **wget link**
* download the text content directly on the terminal using use below command
    * **curl link**
    * **curl -o link** it is used as wget
* **~ ----> home folder**
* **./ ----> current folder**
* **../ ----> child folder one step back to parent folder**
* to pass the arguments use below command
    * **sh file_name argument1 argument2 argument3**
* **tee command**
    * Reads from standard input and writes to standard output and files.
    ```sh
    echo "Hello, World!" | tee output.txt
    ```

* **zip command**
```sh
zip -r file_name what_you_want -x what_you_dont_want
```
* **file_name** with what file_name you want to store your zip file
* **what_you_want** what you want from the folder your ziping
* **what_you_dont_want** what you don't want from the folder your ziping
* **-r** ===> include what_you_want
* **-x** ===> exclude what_you_dont_want
* ./* everything from current folder
* -x "*.zip" next time your ziping the ziped file it wont include it
* **example**
```sh
zip -r catlogue.zip ./* -x ".git" -x "*.zip"
```
* zip contains more logs that consumes jenkins master memory
* use below command to quite the zip log
```sh
zip -q -r catlogue.zip ./* -x ".git" -x "*.zip"
```
    * q - quite
* **unzip**
* to unzip the ziped file use below command
```sh
unzip ziped_file_name
unzip catalogue.zip
```
