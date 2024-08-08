# true if the file is a regular file 
if [ -f "$file" ]; then
  echo "$file is exists"
else
  echo "$file does not exist"
fi

# # true if the file is DIRECTORY 
# if [ -d "/path/to/dir" ]; then
#   echo "Directory exists"
# else
#   echo "Directory does not exist"
# fi

# # true if the file is exists 
# if [ -e "/path/to/dir" ]; then
#   echo "file is exists"
# else
#   echo "file does not exist"
# fi


# # true if the file is readable , writeable, executable
# if [ -r "/path/to/dir" ]; then
#   echo "file is readable"
# else
#   echo "file does not readable"
# fi

# if [ -w "/path/to/dir" ]; then
#   echo "file is writeable"
# else
#   echo "file does not writeable"
# fi

# if [ -e "/path/to/dir" ]; then
#   echo "file is executable"
# else
#   echo "file does not executable"
# fi

