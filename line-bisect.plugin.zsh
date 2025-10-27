function line-bisect-left {
  NEW_CURSOR=$(($#LBUFFER / 2))
  CURSOR=$NEW_CURSOR
}
function line-bisect-right {
  NEW_CURSOR_OFFSET=$(($#RBUFFER / 2))
  CURSOR=$((CURSOR + NEW_CURSOR_OFFSET))
}
function set-up-windows {
  bindkey '^[[1;3D' line-bisect-left
  bindkey '^[[1;3C' line-bisect-right
}
function set-up-mac {
  bindkey '^[b' line-bisect-left
  bindkey '^[f' line-bisect-right
}

zle -N line-bisect-left
zle -N line-bisect-right

unameOut="$(uname -s)"
echo "${unameOut}"
case "${unameOut}" in
Linux*)
  echo "No Linux setup fn. Please create one in $ZSH/custom/plugins/line-bisect."
  ;;
Darwin*)
  set-up-mac
  ;;
CYGWIN*)
  set-up-windows
  ;;
*)
  echo "machine=UNKNOWN:${unameOut}"
  ;;
esac
