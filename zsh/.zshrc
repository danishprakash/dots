#source ~/spectrum.zsh               							# Make nice colors available 

autoload -U colors && colors
#prompt
PS1="%{$fg[red]%Bλ%b%} %{$fg[cyan]%~ %B>%b %}%{$reset_color%}"				#use this when spectrum is sorted out: $FG[154]   

#Auto-suggestions plugin (fish-term like)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#some defaults
export EDITOR=vim                           						# Set default editor to vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls -L1 $LS_OPTIONS'

#aliases#
#redshift
alias rs_eve='redshift -O 4800K && clear'
alias rs_mor='redshift -O 5900K && clear'

#git
alias ga='git add'
alias gm='git commit -m'
alias gp='git push -u origin master'

#misc
alias v='vim'
alias p3='python3'
alias sagi='sudo apt-get install'
alias cl='clear'
