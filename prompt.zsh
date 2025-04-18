PROMPT=""
# The user name and the host, if configured
if $PROMPT_USERNAME; then
    PROMPT=$PROMPT"%F{red}%B%n%b%f@%F{yellow}%B%m%b%f:"
fi
# The current directory, with the length limitted
PROMPT=$PROMPT"%F{blue}%B%50<..<%~%b%f"
PROMPT=$PROMPT" %# "

# Background jobs, if any
RPROMPT="%(1j.[%j].)"
