# Emacs keymap
bindkey -e

# Spelling correction of commands
setopt CORRECT

# Completion
autoload -Uz compinit && compinit -i

# History search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# Show "^C" on intruptions
TRAPINT() {
  print -n "^C"
  return $(( 128 + $1 ))
}
