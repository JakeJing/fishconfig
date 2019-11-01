#! /usr/bin/bash

# install fish
sudo apt-get install fish

# make a .config folder
mkdir -p ~/.config/fish

echo "set -g -x fish_greeting ''" > ~/.config/fish/config.fish

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install omf
curl -L https://get.oh-my.fish > install
fish install --path=/.local/share/omf --config=/.config/omf

# install vifm
sudo apt-get install vifm

wget https://raw.githubusercontent.com/vifm/vifm-colors/master/solarized-dark.vifm -P ~/.config/vifm/colors/

sed -i "" 's/colorscheme\ Default/colorscheme\ solorized-dark/g' ~/.config/vifm/vifmrc


