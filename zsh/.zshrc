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

#some git aliases
alias gc='sudo git checkout'
alias ga='sudo git add'
alias gpu='sudo git push -u origin'
alias gm='sudo git commit -m'
alias gs='sudo git status'
alias gp='sudo git pull'

autoload -Uz compinit
compinit
# End of lines added by compinstalla
