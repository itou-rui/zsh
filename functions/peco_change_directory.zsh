function _peco_change_directory {
  if [ $# -gt 0 ]; then
    foo=$(peco --layout=bottom-up --query "$@" | perl -pe 's/([ ()])/\\\\$1/g')
  else
    foo=$(peco --layout=bottom-up | perl -pe 's/([ ()])/\\\\$1/g')
  fi

  if [ -n "$foo" ]; then
    builtin cd "$foo"
    zle reset-prompt
  else
   zle reset-prompt
  fi
}


peco_change_directory() {
  {
    echo "$HOME/.config"
    ghq list -p
    ls -ad */ | perl -pe "s#^#$PWD/#" | grep -v \.git
    ls -ad "$HOME/Github"/*/* | grep -v \.git
  } | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory "$@"
}

