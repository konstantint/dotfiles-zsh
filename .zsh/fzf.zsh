alias preview="fzf --preview 'batcat --color \"always\" {}'"

# add support for ctrl+o to open selected file in Vim 
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort' --height=50% --border"

