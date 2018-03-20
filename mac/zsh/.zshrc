# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/danishprakash/.zshrc'

source ~/z.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U colors && colors

PROMPT="%F{yellow}%3~ %F{red}» "

export EDITOR="/usr/local/bin/nvim"

#some git aliases
alias gc='sudo git checkout'
alias ga='sudo git add'
alias gpu='sudo git push -u origin'
alias gm='sudo git commit -m'
alias gs='sudo git status'
alias gp='sudo git pull origin master'
#alias vim='sudo /usr/local/Cellar/vim/8.0.0604/bin/vim'
alias v='sudo nvim'
alias cl='clear'
alias gis='git status'
alias rm='rm -i'
alias rmf='rm -rfi'

autoload -Uz compinit
compinit
# End of lines added by compinstalla
export PATH=/usr/local/bin:/usr/local/Cellar:/bin:/usr/sbin:/sbin:/usr/bin
#export PATH=/usr/local/bin:$PATH
source ~/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
