# neovim editor
alias nv neovide

# list files
# alias lsf "clear ; and ls -v --group-directories-first"
# alias lsd "clear ; and ls -d */"

# need `brew install coreutils` to get gls
alias ls "clear ; and gls --hyperlink=auto --color=auto"
alias lsd "clear ; and ls -d */"
alias lsa "clear ; and gls -al --group-directories-first --color=auto --hyperlink=auto"

# hyperlinked grep
alias hg='kitty +kitten hyperlinked_grep'


# check the function descriptions
alias fns "functions"

# trash-cli
alias ts "trash-put"
alias sdts "sudo trash"
alias tsl "trash-list"
alias tsr "trash-restore"
alias tsep "trash-empty"
alias tsrm "trash-rm"

# Quick edits (first go to the dir and open via nvim)
alias ef 'cd ~/.config/fish; and nvim config.fish'
# alias ev 'cd ~/.config/nvim/lua/yq; and nvim maps.lua end' # replaced with ev.fish for better performance
alias evf 'cd ~/.config/vifm; and nvim vifmrc'
alias eb 'nvim ~/.bash_profile'
alias ek 'cd ~/.config/kitty; and nvim kitty.conf'
alias er 'nvim ~/.Rprofile'

# Quick go
alias gd 'pushd ~/Documents/ ; and ls'
alias gD 'pushd ~/Downloads/ ; and ls'
alias gh 'pushd ~ ; and ls'
alias gg 'pushd ~/GoogleDrive/ ; and ls'
alias gi 'pushd ~/git/ ; and ls'
alias gs 'pushd ~/switchdrive/ ; and ls'
alias gp 'pushd ~/switchdrive/phylogenetic-tools/simmap-eigendecomposition/Main/ ; and ls'
alias gv 'pushd ~/.config/vifm/ ; and ls'
alias gf 'pushd ~/.config/fish/ ; and ls'
alias gk 'pushd ~/.config/kitty/ ; and ls'
alias gm 'pushd ~/switchdrive/stochastic-process/ ; and ls'
alias gc 'pushd ~/switchdrive/cpluswd/ ; and ls'
alias gj '/Users/jakejing/switchdrive/juliawd ; and ls'
alias gU '/Users/jakejing/git/uralic/uralic_webapp/uralic ; and ls'
alias pd popd

# alias for python
#alias python3 'python3.9'

# alis for R
alias r radian

# alis for jupyter notebook
alias jn "jupyter notebook"
alias jpl "jupyter-lab"
alias jl "julia "

#yank directory and pbpaste
alias yd 'pwd|pbcopy'
alias pp 'pbpaste'

#kitty
alias kt 'kitty +kitten '
alias icat="kitty +kitten icat"

# pdf combine
alias pdfcombine '/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# java apps
alias beast='sh /Applications/BEAST\ 2.5.1/bin/beast'
alias densitree='sh /Applications/BEAST\ 2.5.1/bin/densitree'
alias beauti='sh /Applications/BEAST\ 2.5.1/bin/beauti'
alias treeannotator='sh /Applications/BEAST\ 2.5.1/bin/treeannotator'

alias figtree 'java -jar /Applications/FigTree\ v1.4.4.app/Contents/Resources/Java/figtree.jar'

# alias densitree 'java -jar /Users/jakejing/switchdrive/rwd/phylogenetic-tools/Backup/phylogenetic-tools/apps/DensiTree.v2.2.5.jar'
