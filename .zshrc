# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh   # Path to oh-my-zsh installation.
ZSH_CUSTOM=$HOME/.zsh         # Path to extra .zsh files and plugins

HYPHEN_INSENSITIVE="true"     # Treat - and _ equivalently in autocompletion
zstyle ':omz:update' mode disabled  # disable automatic updates
HIST_STAMPS="yyyy-mm-dd"

plugins=(
        colored-man-pages
        fast-syntax-highlighting
        fzf
        git
        z
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

