setopt interactivecomments

export TERM=screen-256color

# theme
export theme_color_scheme=terminal-dark
export fish_prompt_pwd_dir_length=1
export theme_display_user=yes
export theme_hide_hostname=no
export theme_hostname=always

# aliases
alias ls="ls -p --color=auto"
alias la="ls -A"
alias ll="ls -l"
alias lla="ll -A"
alias g="git"
alias gs="git status"
alias ide="tmux split-window -v -p 30; tmux split-window -h -p 66; tmux split-window -h -p 50"

# NVM
command -v nvim >/dev/null && alias vim=nvim

export EDITOR=nvim

function __check_rvm() {
  if [ -f .nvmrc ] && [ -r .nvmrc ]; then
    nvm use
  fi
}
add-zsh-hook chpwd __check_rvm

export PATH=bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/.local/bin:$PATH

# Homebrew
export HOMEBREW_PREFIX="$HOME/.homebrew"
export PATH="$HOMEBREW_PREFIX/bin:$PATH"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"

# Nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Docker
export PATH=$HOME/.docker/bin:$PAT

setopt magic_equal_subst

load_files_in_directory() {
  local directory="$1"
  local extension="$2"

  if [ -d "$directory" ]; then
    for file in "$directory"/*.$extension; do
      if [ -f "$file" ] && [ "$file" != "$HOME/.config/zsh/config.zsh" ]; then
        source "$file"
      fi
    done
  fi
}

load_files_in_directory "$HOME/.config/zsh/conf.d" "zsh"
load_files_in_directory "$HOME/.config/zsh/functions" "zsh"
load_files_in_directory "$HOME/.config/zsh" "zsh"
