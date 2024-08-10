### vim editor
* it stands as **visually improved**
**syntax**
```sh
vim file_name
```
* we have three modes
1. **ESC MODE**
    * it is the first mode after clicking the vim command 
2. **INSERT MODE**
    * when we are in ESC mode press i or I then we change to insert mode
    * do the necessary corrections and add the data or remove the data
3. **COLON OR COMMAND MODE**
    * press the colon : to chage to colon mode there we can change or quit the file
* **ESC ------------------> COLON MODE**
* **COLON MODE ------------------> ESC MODE**
* **ESC ------------------> INSERT MODE**
* **INSERT MODE ------------------> ESC MODE**
* **WE CAN NOT DIRECTLY GO THROUGH COLON MODE TO INSERT MODE**
    * **COLON MODE---->ESC MODE---->INSERT MODE**
### COLON MODE COMMANDS
* **:w**            to save the content
* **:q**            quite the file
* **:q!**           don't save just quite
* **:wq**           write and quite
* **:w file_name**  to save the content with file_name
* **:m**            it is used to move the lines
* **:3,6m 8**       move 3,4,5,6 lines to after line 8
* **:set nu**       it will show numbers
* **:set nonu**     it will remove numbers
* **noh**           clear last search highlights

### ESC MODE COMMANDS
* **G**     goto buttom
* **gg**    takes to top
* **u**     undo
* **yy**    copy
* **yny**   copy n no of lines
* **p**     paste
* **np**    paste n no of times

### CUT AND SELECT
* **v**     we can select the text which we requied
* **d**     we can cut the selected text
* **n**     next

### search command
* **:/word-to-search** write the text which you want to search from **top**
* **?/word-to-search** write the text which you want to search from **buttom**

### replaceing the content or word
#### syntax
* **:[area]s/word-to-find/word-to-replace/occurence**
1. area
    * **n** particular line number
    * **%** all lines
4. occurences 
    * **n** to change nth occurence by default 1st occurence
    * **g** to change it globally


