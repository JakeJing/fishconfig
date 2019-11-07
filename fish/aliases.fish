# list files
alias lsf "clear ; and ls -v --group-directories-first"

# trash-cli
alias ts "trash"
alias tsl "trash-list"
alias tsr "trash-restore"
alias tsep "trash-empty"
alias tsrm "trash-rm"
alias rm "trash"

# Quick edits
alias ef 'vim ~/.config/fish/config.fish'
alias ev 'vim ~/.vimrc'

# Quick go
alias gd 'cd ~/Documents/ ; and lsf'
alias gD 'cd ~/Downloads/ ; and lsf'
alias gh 'cd ~ ; and lsf'
alias gg 'cd ~/Google\ Drive/ ; and lsf'
alias gi 'cd ~/git/ ; and lsf'
alias gs 'cd ~/switchdrive/ ; and lsf'
alias gp 'cd ~/switchdrive/phylogenetic-tools/simmap-eigendecomposition/Main/ ; and lsf'

#yank directory and pbpaste
alias yd 'pwd|pbcopy'
alias pp 'pbpaste'

