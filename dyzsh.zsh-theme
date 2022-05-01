# Directory info.
CURRENT_DIR='${PWD/#$HOME/~} '

# ret status
RET_STATUS="(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# dy variable option
dy_prompt_prefix_1=" on %{$fg[magenta]%}"
dy_prompt_prefix_2="%{$fg_bold[white]%}[%{$reset_color%}%{$fg_bold[blue]%}"

PROMPT_BRACKET_BEGIN='%{$fg_bold[white]%}['
PROMPT_HOST='%{$fg_bold[cyan]%}%m'
PROMPT_SEPARATOR='%{$reset_color%}:'
PROMPT_DIR='%{$fg_bold[yellow]%}%c'
PROMPT_BRACKET_END='%{$fg_bold[white]%}]'

PROMPT_USER='%{$fg_bold[blue]%}%n'
PROMPT_SIGN='%{$reset_color%}%#'

# Git info & short sha
GIT_PROMPT_INFO='$(git_prompt_info)'
GIT_PROMPT_SHA='$(git_prompt_short_sha)'

# ZSH theme global variable.
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[red]%}("
ZSH_THEME_GIT_PROMPT_SHA_AFTER=")%{$reset_color%}%{$fg_bold[white]%}]%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="$dy_prompt_prefix_2"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}● "


# Prompt format: \n [HOST@USER]  DIRECTORY [GIT_BRANCH STATE GIT_SHA] [TIME] \n ➜
PROMPT_1="
[${PROMPT_HOST}@ ${PROMPT_USER}%{$reset_color%}] \
%{$terminfo[bold]$fg[yellow]%}${CURRENT_DIR}%{$reset_color%}\
${GIT_PROMPT_INFO}\
${GIT_PROMPT_SHA}\
%{$fg[white]%}[%*]
%${RET_STATUS}%{$reset_color%}"

# Prompt format: [host:current_dir] (git_prompt_info) \n [username]%
PROMPT_2="${PROMPT_BRACKET_BEGIN}${PROMPT_HOST}${PROMPT_SEPARATOR}${PROMPT_DIR}${PROMPT_BRACKET_END}${GIT_PROMPT_INFO}
${PROMPT_BRACKET_BEGIN}${PROMPT_USER}${PROMPT_BRACKET_END}${PROMPT_SIGN} "

# Prompt
PROMPT=${PROMPT_1}
