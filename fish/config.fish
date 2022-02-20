. ~/.config/fish/aliases.fish
. ~/.config/fish/abbr_fish.sh
set -x LC_ALL en_US.UTF-8

set -g -x PATH /usr/local/bin /usr/local/lib /Library/TeX/texbin /opt/local/bin /usr/bin /Applications/Julia-1.5.app/Contents/Resources/julia/bin/ /Users/jakejing/.config/vifm/scripts/ /usr/local/share/ /usr/local/share/fish/completions/ /Users/jakejing/.script/ /Users/jakejing/.rvm/bin /usr/local/bin/jupyter-nbextension /usr/local/lib/python3.9/site-packages /Library/Frameworks/Python.framework/Versions/3.7/bin /Users/jakejing/.nvm /Users/jakejing/switchdrive/uralic/TuLeD /Applications/BEAST\ 3.5.1/bin /usr/local/opt/openssl@1.1/bin /Library/PostgreSQL/13/bin /Applications/Skim.app/Contents/MacOS /Applications/Skim.app/Contents/SharedSupport $PATH


set -gx LDFLAGS "-L/usr/local/lib/python3.9"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
set -gx PKG_CONFIG_PATH "/usr/local/Cellar/python@3.9/3.9.7_1/lib/pkgconfig /usr/local/opt/python@3.9/lib/pkgconfig"

# set the default keybinding
set -U fish_key_bindings fish_default_key_bindings

set fish_greeting ""

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy bobthefish
set theme_color_scheme bobthefish

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

set fish_plugins autojump vi-mode tacklebox_plugins python extract
# set vi_mode_default vi_mode_normal */

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

# set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish



# set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

# kitty + complete setup fish | source

# status is-login; and pyenv init --path | source



# Setting PATH for Python 3.10
# The original version is saved in /Users/jakejing/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"
