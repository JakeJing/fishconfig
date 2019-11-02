#! /usr/bin/bash

# update apt-get
sudo apt-get update

# install Linuxbrew
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

# install vifm
sudo apt-get install vifm

# download colorscheme
wget https://raw.githubusercontent.com/vifm/vifm-colors/master/solarized-dark.vifm -P ~/.config/vifm/colors/

# download vifmrc
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/vifm/vifmrc -P ~/.config/vifm/

# download functions
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/chd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/mkd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/gu.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/fish_user_key_bindings.fish -P ~/.config/fish/functions/

# download abbr and alias
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/abbr_fish.fish -P ~/.config/fish/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/aliases.fish -P ~/.config/fish/

# add the path for aliases and abbrs to the config.fish
echo ". ~/.config/fish/aliases.fish" >> ~/.config/fish/config.fish
echo ". ~/.config/fish/abbr_fish.fish" >> ~/.config/fish/config.fish

# change the prompt setting

# sed -i "" 's/colorscheme\ Default/colorscheme\ solarized-dark/g' ~/.config/vifm/vifmrc


