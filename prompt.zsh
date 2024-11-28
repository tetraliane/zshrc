PROMPT=""
PROMPT=$PROMPT'%(1j.[%j] .)'
if $PROMPT_USERNAME; then
    PROMPT=$PROMPT"%F{red}%B%n%b%f@%F{yellow}%B%m%b%f:"
fi
PROMPT=$PROMPT"%F{blue}%B%~%b%f"
PROMPT=$PROMPT" %# "
