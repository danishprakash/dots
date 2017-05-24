#source ~/spectrum.zsh               							# Make nice colors available 

autoload -U colors && colors
#prompt
PS1="%{$fg[red]%Bλ%b %} %{$fg[cyan]%~ %B>%b %}%{$reset_color%}"								#use this when spectrum is sorted out: $FG[154]   

#Auto-suggestions plugin (fish-term like)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#some defaults
export EDITOR=vim                           						# Set default editor to vim
