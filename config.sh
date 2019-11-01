#! /usr/bin/bash

#install Linuxbrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >>~/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# install fish
sudo apt-get install fish

# make a .config folder
mkdir -p ~/.config/fish
echo "set fish_greeting ''" > ~/.config/fish/config.fish

# install fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# install omf
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install > install

# install vifm
sudo apt-get install vifm

wget https://raw.githubusercontent.com/vifm/vifm-colors/master/solarized-dark.vifm -P ~/.config/vifm/colors/


sed -i "" 's/colorscheme\ Default/colorscheme\ solarized-dark/g' ~/.config/vifm/vifmrc


