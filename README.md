# fishconfig

## Install fish on mac and ubuntu

For simplicity, you simply need to download the config_fish_all_mac.sh or config_fish_all_ubuntu.sh and run the following comand:

Mac Users:

> wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/settings_all_mac.sh

Switch to zsh or bash terminal, and do not use fish. Otherwise, it may have some problem to install homebrew.

> bash

> chmd +x settings_all_mac.sh

> source settings_all_mac.sh

You may need to set the default shell for vifm as fish shell in the vifmrc (see line 371 in vifmrc).

> nnoremap s :!fish<cr>

Ubuntu Users:

> wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/settings_all_ubuntu.sh

> chmd +x settings_all_mac.sh

> source settings_all_mac.sh
