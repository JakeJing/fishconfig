# fishconfig

## Install fish in ubuntu
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


Here is the config file for fish.
1. abbr_fish.sh includes all the abbreviations used in fish.
> source abbr_fish.sh

