. ~/.config/fish/aliases.fish
. ~/.config/fish/abbr_fish.sh
set -x LC_ALL en_US.UTF-8
set -x BEAST_PACKAGE_PATH "/Users/jakejing/Library/Application\ Support/BEAST/2.5"

set -g -x PATH /usr/local/bin /usr/local/lib /Users/jakejing/.cargo/bin /opt/local/bin/ /Library/TeX/texbin /opt/local/bin /usr/bin /Applications/Julia-1.7.app/Contents/Resources/julia/bin /Users/jakejing/.config/vifm/scripts/ /usr/local/share/ /usr/local/share/fish/completions/ /Users/jakejing/.script/ /usr/local/bin/jupyter-nbextension /Library/Frameworks/Python.framework/Versions/3.11/bin /Users/jakejing/Library/Python/3.11/bin /Library/Frameworks/Python.framework/Versions/3.10/bin /Users/jakejing/Library/Python/3.8/bin /Users/jakejing/.nvm /Users/jakejing/switchdrive/uralic/TuLeD /Applications/BEAST\ 3.5.1/bin /Library/PostgreSQL/13/bin /Applications/Skim.app/Contents/MacOS /Applications/Skim.app/Contents/SharedSupport /usr/local/opt/ruby/bin /Users/jakejing/Library/Application\ Support/BEAST/2.5 $PATH

# -L/usr/local/opt/llvm/lib


set -gx LDFLAGS "-L/usr/local/opt/openssl@3/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl@3/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@3/lib/pkgconfig"

# set nvim as the default editor
set EDITOR nvim

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


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# Setting PATH for Python 3.10
# The original version is saved in /Users/jakejing/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# Setting PATH for Python 3.11
# The original version is saved in /Users/jakejing/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

# Setting PATH for Python 3.11
# The original version is saved in /Users/jakejing/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

# Setting PATH for Python 3.11
# The original version is saved in /Users/jakejing/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"
