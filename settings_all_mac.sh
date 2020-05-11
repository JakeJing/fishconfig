#! /usr/bin/bash

# update apt-get
# sudo apt-get update

# install homebrew for mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install fish
brew install fish

# make a .config folder
mkdir -p ~/.config/fish
echo "set fish_greeting ''" > ~/.config/fish/config.fish

# install fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# install vifm
brew install vifm

# download colorscheme
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/vifm/solarized-dark.vifm -P ~/.config/vifm/colors/

# download vifmrc
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/vifm/vifmrc -P ~/.config/vifm/
mkdir ~/.config/vifm/Trash

# download functions
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/autocomp.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/autoweave.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/chd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/compile.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/fd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/gu.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/ina.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/mkd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/new.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/op.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/rd.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/trash.fish -P ~/.config/fish/functions/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/functions/vp.fish -P ~/.config/fish/functions/

# download abbr and alias
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/abbr_fish.fish -P ~/.config/fish/
wget https://raw.githubusercontent.com/JakeJing/fishconfig/master/fish/aliases.fish -P ~/.config/fish/

# add the path for aliases and abbrs to the config.fish
echo ". ~/.config/fish/aliases.fish" >> ~/.config/fish/config.fish
echo ". ~/.config/fish/abbr_fish.fish" >> ~/.config/fish/config.fish

# change the prompt setting

# sed -i "" 's/colorscheme\ Default/colorscheme\ solarized-dark/g' ~/.config/vifm/vifmrc


