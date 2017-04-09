# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/danishprakash/.zshrc'
export PS1="[%*] %d % > "
eval "$(thefuck --alias fuck)"
alias python='/usr/bin/python3.6'
alias su='sudo'

#some git aliases
alias gc='git checkout'
alias ga='git add'
alias gpu='git pull -u origin'
alias gm='git commit -m'
alias gs='git status'


autoload -Uz compinit
compinit
# End of lines added by compinstalla
