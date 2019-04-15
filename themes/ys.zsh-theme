# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.

local git_info='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}|>%{$reset_color%} %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}𝝙"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"

local exit_code="%{$fg[red]%}%(?,,∅:%?)%{$reset_color%}"

PROMPT="
%(#,%n%{$reset_color%},%{$fg[cyan]%}%n)\
%{$fg[white]%}@\
%{$fg[green]%}%m \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${git_info} \
%{$fg[white]%}{%*} $exit_code
%{$terminfo[bold]$fg[magenta]%}λ %{$reset_color%}"

# Prompt format:
# USER@MACHINE DIRECTORY |> BRANCH STATE {TIME} ∅:LAST_EXIT_CODE
# λ COMMAND
#
# For example:
# ys@ys-mbp ~/.oh-my-zsh |> master ✓ {21:47:42} ∅:0
# λ git status
