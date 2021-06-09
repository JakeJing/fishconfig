# list files
alias lsf "clear ; and ls -v --group-directories-first"
alias lsd "clear ; and ls -d */"

# check the function descriptions
alias fns "functions"

# trash-cli
alias ts "trash"
alias sdts "sudo trash"
alias tsl "trash-list"
alias tsr "trash-restore"
alias tsep "trash-empty"
alias tsrm "trash-rm"

# Quick edits
alias ef 'vim ~/.config/fish/config.fish'
alias ev 'vim ~/.vimrc'
alias eb 'vim ~/.bash_profile'
alias ek 'vim ~/.config/kitty/kitty.conf'
alias er 'vim ~/.Rprofile'

# Quick go
alias gd 'pushd ~/Documents/ ; and lsf'
alias gD 'pushd ~/Downloads/ ; and lsf'
alias gh 'pushd ~ ; and lsf'
alias gg 'pushd ~/GoogleDrive/ ; and lsf'
alias gi 'pushd ~/git/ ; and lsf'
alias gs 'pushd ~/switchdrive/ ; and lsf'
alias gp 'pushd ~/switchdrive/phylogenetic-tools/simmap-eigendecomposition/Main/ ; and lsf'
alias gv 'pushd ~/.config/vifm/ ; and lsf'
alias gf 'pushd ~/.config/fish/ ; and lsf'
alias gk 'pushd ~/.config/kitty/ ; and lsf'
alias gm 'pushd ~/switchdrive/stochastic-process/ ; and lsf'
alias gc 'pushd ~/switchdrive/cpluswd/ ; and lsf'
alias gj '/Users/jakejing/switchdrive/juliawd ; and lsf'
alias gu '/Users/jakejing/git/uralic/uralic_webapp/uralic ; and lsf'

# alias for python
alias python3 'python3.9'

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

# pdf combine
alias pdfcombine '/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'
