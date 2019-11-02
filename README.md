# fishconfig

## Install fish in ubuntu

For simplicity, you simply need to download the config_fish_all.sh 
and run the following comand:
> wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/config_fish_all.sh

> chmd +x config_fish_all.sh 

> source config_fish_all.sh 


> sudo apt-get install fish

2. create config file
> mkdir -p ~/.config/fish

> vim ~/.config/fish/config.fish

add the following commands inside the config.fish

> set -g -x fish_greeting ''

3. install fzf
> git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

> ~/.fzf/install

4. install oh-my-fish
> curl -L https://get.oh-my.fish > install

> fish install --path=~/.local/share/omf --config=~/.config/omf

5. install vifm
> sudo apt-get install vifm

6. download and change the colorscheme in vifm
> wget https://raw.githubusercontent.com/vifm/vifm-colors/master/solarized-dark.vifm -P ~/.config/vifm/colors/

change the vifmrc and set the "colorschme solarized-dark"

Here is the config file for fish.
1. abbr_fish.sh includes all the abbreviations used in fish.
> source abbr_fish.sh

