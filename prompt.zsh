PROMPT=""
PROMPT=$PROMPT"%F{green}%B→%b%f "
if [ $SHLVL -gt 1 ]; then
    PROMPT=$PROMPT"("$SHLVL") "
fi
if $PROMPT_USERNAME; then
    PROMPT=$PROMPT"%F{red}%B%n%b%f@%F{yellow}%B%m%b%f:"
fi
PROMPT=$PROMPT"%F{blue}%B%~%b%f %# "
