## Some useful shortcuts in vifm

### 1. go to the head/end line in a vifm panel

```shell
gg # first line
shift + g # end line
```

### 2. toggle visibility of preview window

```shell
w # show or hide the preview window
```

This command is quite useful when you want to copy/move files from another folder to the current folder. 

```shell
w # hide the preview window
whitespace # switch between panels
```

You can copy the file you want at the right panel and return to the left panel and paste there, since the clipboard is shared.

### 3. Vew a file

```shell
shift + tab # switch to view mode and come back
```

### 4. Show and hide dot files

```shell
z + o # show hidden files
z + m # hide
```

### 5. Rename files

```shell
## single file
shift+a # rename a file

## multiple files
shift + v # select files or use t to tag several files
cw # change the names
```

### 6. Switch between shell and vifm 

```shell
s # open shell at the current directory
ctrl + d # return to vifm
```

You can also directory run a command in vifm, e.g., open a file via vim:

```bash
:!vim file.txt
```

### 7. Sort files

```shell
S # sort files by certain criterion
```

### 8. Resize panel window sizes

```shell
ctrl + w + + # increase sizes
ctrl + w + - # decrease sizes
```

### 9. Yank the path, file and name

```shell
yd # yank current directory path
yf # yank current file path
yn #  yank the current file name
```

### 10. Bookmark a folder

```shell
m + p # assign a shortcut \'p to the current folder
\'p # bring you back to the bookmarked address
```

You can check all the bookmarked folders via the following command.

```shell
:marks # show bookmarks
```