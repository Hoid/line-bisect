function line-bisect-left {
  NEW_CURSOR=`expr $#LBUFFER / 2`
  CURSOR=$NEW_CURSOR
}

zle -N line-bisect-left
bindkey '^[[1;3D' line-bisect-left

function line-bisect-right {
  NEW_CURSOR_OFFSET=`expr $#RBUFFER / 2`
  CURSOR=`expr $CURSOR + $NEW_CURSOR_OFFSET`
}

zle -N line-bisect-right
bindkey '^[[1;3C' line-bisect-right
