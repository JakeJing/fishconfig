# kittyconfig
configuration file for my kitty on mac

### 1. install kitty on mac

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

### 2. download the plug-in deafault app in this repository, and copy the RCDefaultApp.prefPane file to the folder

```bash
git clone https://github.com/JakeJing/kittyconfig.git
sudo mv kittyconfig/RCDefaultApp.prefPane /Library/PreferencePanes/
```

### 3. set the kitty as the default terminal

```shell
system preference - default Apps - click the "default Apps" - URLS - x-man-page - set iTerm as the default application
```

### 4. set shortcut to initialize the terminal

```shell
System Preferences -> Keyboard -> Shortcuts -> Services -> New iTerm2 window here/New kitty window here
```

### 5. I set the shortcut as: (shift+command+1)

### 6. put the **kitty.conf** and **open-actions.conf** inside the folder of ~/.config/kitty/

```bash
wget https://raw.githubusercontent.com/JakeJing/kittyconfig/master/kitty.conf -P ~/.config/kitty/
```

Note the open-actions.conf allows some useful features in kitty shell, such as hyperlinked ls and grep.

```bash
## list all files
ls # list files allow hyperlinks
ctrl + shift + click # open the file in vim or kitty shell
```

```bash
# search a keyword of "food" in current directory
hg food
ctrl + shift + click # open the file in vim or kitty shell

# search "food" in a file
hg "form of" script.Rmd 
```

