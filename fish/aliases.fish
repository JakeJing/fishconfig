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

# pdf combine
alias pdfcombine '/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# java apps
alias densitree 'java -jar /Users/jakejing/switchdrive/phylogenetic-tools/apps/DensiTree.v2.2.5.jar'
alias figtree 'java -jar /Applications/FigTree\ v1.4.4.app/Contents/Resources/Java/figtree.jar'
