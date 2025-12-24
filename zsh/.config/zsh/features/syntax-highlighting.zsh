PLUGIN_DIR="$ZDOTDIR/plugins/syntax-highlighting"

source "$PLUGIN_DIR/zsh-syntax-highlighting.zsh"

# Customize syntax highlights coloring
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=white'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue'
