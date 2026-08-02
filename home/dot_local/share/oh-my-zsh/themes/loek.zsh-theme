INFO_COLOR=$'%{\e[90m%}' # bright gray
SEPARATOR_COLOR=$'%{\e[30m%}' # normal gray
RESET_COLOR=$'%{\e[0m%}'

SEPARATOR="$SEPARATOR_COLOR -> "

PROMPT=""
# only display hostname in prompt if connected over SSH
[ -n "$SSH_CLIENT" ] && PROMPT+="$INFO_COLOR%m$SEPARATOR"
PROMPT+="$INFO_COLOR%c$SEPARATOR" # working directory
PROMPT+="$INFO_COLOR\$(git_prompt_info)" # git info (if in repo)
PROMPT+="$RESET_COLOR"

ZSH_THEME_GIT_PROMPT_PREFIX="${INFO_COLOR}git "
ZSH_THEME_GIT_PROMPT_SUFFIX="$SEPARATOR"

# vim:ft=zsh
