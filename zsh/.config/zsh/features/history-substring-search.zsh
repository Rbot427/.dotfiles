PLUGIN_DIR="$ZDOTDIR/plugins/history-substring-search"

source "$PLUGIN_DIR/zsh-history-substring-search.zsh"

# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

