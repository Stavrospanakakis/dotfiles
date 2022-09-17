ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[magenta]%}"

PROMPT='
%{$fg_bold[magenta]%}$(whoami)@macbookpro%{$fg_bold[white]%}
%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info) $ '
