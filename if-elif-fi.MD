## IF CONDITION

### FRAGS 
* **-f**  true if the file is a regular file 
* **-d**  true if the file is a directory 
* **-e**  true if the file is exists 
* **-r**  true if the file is a regular file 
* **-w**  true if the file is a regular file 
* **-x**  true if the file is a regular file 
* **-z**  true if the string is null
* **-n**  true if the string is not null
* **-s**  true if the file has non-zero size

##### Syntax
**$frag = -d/-f/-r/-w/-x/-z/-n/-s/-e**
```sh
if [ $frag "/path/to/dir/file" ]; then
  echo "Directory/file exists"
else
  echo "Directory/file does not exist"
fi
string="hari"
if [ -z "$string" ]; then
  echo "String is empty"
else
  echo "String is not empty"
fi

string="123"
if [ -n "$string" ]; then
  echo "String is non-zero"
else
  echo "String is zero"
fi

string=""
if [ -s "$string" ]; then
  echo "String is empty"
else
  echo "String is not empty"
fi
```

### COMPARITIONS
* **-eq**   equal to  
* **-ne**   not equal to  
* **-gt**   greater than    
* **-ge**   greater than or equal to 
* **-lt**   less than 
* **-le**   less than or equal to  
* **!**     false  

### LOGICAL COMPARITIONS
* **==**  equal
* **!=**  not equal
* **&&**  and
* **||**  or

* **==**  equal
```sh
if [ -f "file1" ] == [ -f "file2" ]; then
  echo "Both files exist"
fi
```
* **&&**  AND
```sh
if [ -f "file1" ] && [ -f "file2" ]; then
  echo "Both files exist"
fi
```
* **||**  OR
```sh
if [ -f "file1" ] || [ -f "file2" ]; then
  echo "Both files exist"
fi
```
