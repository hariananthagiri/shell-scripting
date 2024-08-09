# WILDCARDS
* wildcards are used for searching multiple files 
#### * ---> everything 
*  it means everything by using this we can search, create, remove e.t.c..
#### $ ---> end of the line 
*  it gives information about ending letter instad of using ending letter we can use it
####  ^ --->  start of the line
* it gives information about starting letter instad of using starting letter  we can use it
####  ? ---> single charector
* if we dont know what is there at that position we can use single ? and multipule ??..?  
* it maches with the every possible charector by using it we can search  multipule files
#### [] --->  single charectors in provided set of charectors
* it maches any of the charector included between the brakets. matches exactly one charector
* we sepecify the set of charectors to match with we can use it in any other position like middile starting ending like any other wild card
* give multipule conditions without using camas , dont use cama if we use cama it through error
#### [!] ---> it avide the provided single charector in given  set of charectors 
* it will match every other charector except that defind in the squre bracket
#### [-] ---> by using hypan we can give range 
* [1-9] it match the file rom 1 to 9
#### {} ----> it is used to perform single or multipule conditions
* using curly brases we can specify the multy expressions at once spareted by cama , 
* / ----> when we want to use wild cards as a narmal charector we use it
##### ex */?
* match all the files that ends with the ? 
#### using multipule WILDCARDS
* h?[ri]
* fille*
* rm *
* sh*va
* sh[iv]a
* sh[a-z0-9]iva the second letter must be in 0 to 9 or a to z
* sh[!iv]a
* sh[!^i] it avide "i" in search
* file[1-9], file[a-z]
* hari$
* ra{j,m}u
* touch file{1..10}
