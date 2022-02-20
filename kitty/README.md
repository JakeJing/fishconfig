# kittyconfig
configuration file for my kitty on mac

1. install kitty on mac
> curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

2. download the plug-in deafault app in this repository, and copy the RCDefaultApp.prefPane file to the folder
> git clone https://github.com/JakeJing/kittyconfig.git

> sudo mv kittyconfig/RCDefaultApp.prefPane /Library/PreferencePanes/

4. set the kitty as the default terminal

> system preference - default Apps - click the "default Apps" - URLS - x-man-page - set iTerm as the default application

5. set shortcut to initialize the terminal

> System Preferences -> Keyboard -> Shortcuts -> Services -> New iTerm2 window here/New kitty window here

I set the shortcut as: (shift+command+1)

6. put the **kitty.conf** and **open-actions.conf** inside the folder of ~/.config/kitty/

> wget https://raw.githubusercontent.com/JakeJing/kittyconfig/master/kitty.conf -P ~/.config/kitty/

