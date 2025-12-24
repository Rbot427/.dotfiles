P10K_DIR="$ZDOTDIR/plugins/p10k"

[[ -o interactive ]] || return
[[ -d $P10K_DIR ]] || return

case "$TERM" in
  dumb|linux) return ;;
esac

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$P10K_DIR/powerlevel10k.zsh-theme"
[[ -f $P10K_DIR/p10k.zsh ]] && source $P10K_DIR/p10k.zsh
