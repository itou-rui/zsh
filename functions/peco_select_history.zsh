function peco_select_history {
  if [[ $# -eq 0 ]]
  then
    peco_flags="--layout=bottom-up"
  else
    peco_flags="--layout=bottom-up --query $1"
  fi

  local selected_command=$(history | peco $peco_flags | awk '{ print $NF }')

  if [[ -n $selected_command ]]
  then
    BUFFER=$selected_command
    zle end-of-line
  else
    zle reset-prompt
  fi
}
