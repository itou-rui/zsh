
source ~/.config/zsh/functions/peco_select_history.zsh
source ~/.config/zsh/functions/peco_change_directory.zsh

# peco
zle -N peco_select_history
bindkey -M emacs '^R' peco_select_history

zle -N peco_change_directory
bindkey -M emacs '^F' peco_change_directory
 
# vim-like
# bindkey -M emacs '^l' forward-char

# prevent iTerm2 from closing when typing Ctrl-D (EOF)
bindkey -M emacs '^D' delete-char
