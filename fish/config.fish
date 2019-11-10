. ~/.config/fish/aliases.fish
. ~/.config/fish/abbr_fish.fish
set -x LC_ALL en_US.UTF-8


set -g -x PATH /usr/local/bin /opt/local/bin $PATH
set -gx LDFLAGS "-L/opt/local/lib -L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl/lib/pkgconfig"

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

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish




