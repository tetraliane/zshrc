ELLIPSIS_CHAR="${ELLIPSIS_CHAR:-..}"
CWD_COLOR="${CWD_COLOR:-blue}"


function cwd_trunc() {
    local echar="$ELLIPSIS_CHAR"
    local cwdc="$CWD_COLOR"
    local len=$1

    echo "%F{$cwdc}%B%$len<$echar<%~%b%f"
}


MNML_USER_CHAR='%#'
MNML_PROMPT=(mnml_ssh 'cwd_trunc 40' mnml_status)
MNML_RPROMPT=(mnml_git)
