alias g="git status"
alias ga="git add"
alias gl="git log --oneline"
alias gu="git stash"

alias ls='ls $LS'
alias la='ls $LS -A'
alias ll='ls $LS -l'
alias lla='ls $LS -lA'
alias tree="tree -C"

function l() {
    local command=ls
    local options=$LS
    local arg

    for arg; do
	if [[ $arg == -* ]]; then
	    continue
	fi

	if [ ! -d $arg ]; then
	    command=less
	    options=
	fi
	break
    done

    $command $options $*
}
