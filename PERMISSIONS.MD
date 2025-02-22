### permissions
* **- --- --- ---**
* it divided into 4 parts
1. file type
2. user
3. group
4. other
* **1. file type**
* if the firstletter was **-** it is a narmal file 
* if the firstletter was **d** it is a directory type
* if the firstletter was **l** it is a linked file
* **permissions**
* we have 3 permissions in all file, group, other
    * **rwx------>read_write_execute**
#### NOTE
    * in linux if you create a user a group with same will be created
    * to change the permission recursively use -R
#### EX
* in linux if you create a user name hari a group with same name hari also created
    * user_name -----> hari
    * group_name -----> hari
* to change the permissions we use  **chmod command**
#### syntax
```sh
chmod ugo+rwx file_name
chmod ugo+rw file_name
chmod ugo+r file_name
chmod ug+rwx file_name
chmod u+rwx file_name
chmod g+rw file_name
chmod u+r file_name


chmod ugo+r file_name
chmod u+r -R file_name 
```
#### syntax
```sh
chmod ugo-rwx file_name
chmod u-r file_name
chmod g-x file_name
chmod o-w file_name
chmod ugo-r file_name
chmod ug-r -R file_name 
```
* Read - 4, Write - 2, eXecute - 1
#### NUMBERS
* 0 ----> NO Permission
* 4 ----> **R**
* 2 ----> **W**
* 1 ----> **X**
* 7 ----> **RWX** ( R+W+X (4+2+1) )
* 3 ----> **WX** ( W+X (2+1) )
* 5 ----> **RX** ( R+X (4+1) )
* 6 ----> **RW** ( R+W (4+2) )
#### syntax
```sh
chmod 777 file_name
chmod 1 file_name
chmod 12 file_name
chmod 123 file_name
chmod 007 -R file_name 
```
### user management
* only root user can create or remove a user so first become root user
    * **sudo su -**
* instand of using above command we can directly use **sudo** and continue with command
* **create a user with user_name and password**
```sh
sudo useradd user_name
sudo passwd user_name
```
#### note
* when user is created automaticaly group also created with same user_name
* to see all user entrys
    * **cat /etc/passwd**
* to see all group entrys
    * **getent groups**
* by default password authontication is disabled to enable it to make sure user to login with password we have to a small configureation as shown below
    * **#vim /etc/ssh/sshd-config** enable password authontication here
* check for the syntax errors of the file use below command
```sh
sshd -t
systemctl restart sshd
```
* to check user belongs to which group use below command
```sh
id user_name
```
* to login with user_name and password use below command
```sh
ssh user_name@ip_address
password: enter your password
```
* **createing a group**
```sh
groupadd group_name
```
#### Note
* every user will have primary group and sacandary or supplamentary group
* by default user is added to a group with user_name
* **adding user to a group by using below command**
```sh
usermod -g group_name user_name
```
* **adding user to a secondary group and giveing seconary access by using below command**
```sh
usermod -aG group_name user_name
# g - primary group
# G - secondary group for temparary access
```
### deleteing
* deleteing user use below command
```sh
userdel user_name
```
* deleteing group use below command
```sh
groupdel group_name
```
* deleteing a user from a group use below command
```sh
gpasswd -d user_name group_name
```
#### Note
* to delete any user fist make the user to logoff then remove him from all the group which he added then delete him
* it is big process the best way was add that user to his name group now delete user by using below command
```sh
 userdel user_name 
 ```
* in this way both user and user_group also deleted automatically
to  display the groups a user belongs to
```sh
groups user_name
```
#### NOTE
* The user_id and group_id of a root user is **ZERO** 0
### chown
* to change the ownership of a group and user we use chown command
* even file owner can't run this command only sudo user can change ownership
* **changeing the owner of a file**
 ```sh
chown user_name file_name
 ```
* **changeing the owner of a group**
 ```sh
chown :group_name file_name
 ```
* **changeing the owner of a file and group at a time**
 ```sh
chown user_name:group_name file_name
chown user_name:group_name -R directory_name
 ```

* To switch the users use below command
```sh
su user_name
```
### process management
* everything in linux is a process whatever we do in linux a process id will be genrated and reported back
* to check the process id use below command
```sh
ps
```
* to see all the process running in linux use below command
```sh
ps -ef
```
* to find the process ID of a running process
```sh
pidof process_name
```
* when process stucks we need to kill it to kill any process we use below command
```sh
pkill pid
# pid - process instance id
```
* when some process stucks even kill cannot kill it we have to forcefully kill it by useing below command
```sh
pkill -9 pid
```
* process is of two types
1. forground process
    * it will block the terminal
2. background process
    * runs in background
    * to make any command runs in background use & symbol
```sh
sleep 10 &
```

### Network Management
* to check whethere ports are running or not we use below command
```sh
netstat -lntp
# netstat - network statistics
# l - listing
# n - process number
# t - tcp protocal
# p - protocal
* to display which process is running and its port number use below command
```sh
sudo netstat -lntp
```
### system resources
* to known CPU utilisation
```sh
top
```
* to known hard disk utilisation
```sh
df -ht
```
* to known RAM utilisation
```sh
free
```
* to known directory utilisation
```sh
du directory_name
```
### LOG MESSAGES
* to find the log messages use below command
```sh
tail -f /var/log/messages # it will give info about last 10 logs
less /var/log/messages # it will give complete info about logs
```
### EXIT STATUS
* shell script will store the privious command result in exit status
* we can get it through **$?** (exit status of privious command stored here)
#### syntax
```sh
echo $? 
# $? - 0 sucess
# $? - non zero (any number other than zero) is FAILURE
```
* if we get error to stop the program there it self use below command
```sh
exit 1
```
* we can use any number other than zero
* to store the command result in a file we use below numbers
    * 1 - sucess
    * 2 - failure 
    * & - both sucess and faiure
**command 1/2/&> file_name**
* to store only sucess outputs
**syntax**
```sh
ls -l 1> hari.txt
```
* by default sucess output will be stored
```sh
ls -l > hari.txt
```
* by store only failure output
```sh
lsdtdff 2> hari.txt
```
* to store both sucess and failure outputs
**syntax**
```sh
ls -l &> hari.txt
```
* **no space between 1,2,& and > it must be like 1>, 2>, &> otherwise it through an error**
### LINK FILE
**i-node** 
    * i node is a reparasentation of file and folder inside the memory
* **syntax**
```sh
ls -li file_name
```
* unlinking the linked file
```sh
unlink link_file_name
```
* remove a link file
```sh
rm file_name
```
#### symlink
* if you delete the actuall file then no use of symbolic link
* if original file is deleted we can access the link_file
* we can create soft link between files and directoryes
* to create a symlink use below command
```sh
ln -s source_file_name link_file_name
```
#### hard link
* these links are mirror copy of the actual file with different names
* **Syntax**
```sh
ln source_file_name hardlink_file_name
```

