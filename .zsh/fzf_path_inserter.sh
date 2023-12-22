# Opens a fzf selector to pick from filenames present in the current window

__path_inserter() {
    tmux capture-pane -pJ -S 0 | grep -o '/[^" '"'"']*' | awk '!x[$0]++' | fzf
}

fzf-path-inserter-widget() {
    LBUFFER+="$(__path_inserter)"
    local ret=$?
    zle reset-prompt
    return $ret
}
zle -N fzf-path-inserter-widget
bindkey ^f fzf-path-inserter-widget

