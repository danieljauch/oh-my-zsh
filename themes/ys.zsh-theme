# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.

local git_info='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}±%{$reset_color%} git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}▴"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"

local exit_code="%{$fg[red]%}%(?,,∅:%?)%{$reset_color%}"

PROMPT="
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n)\
%{$fg[white]%}@\
%{$fg[green]%}%m \
%{$fg[white]%}> \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${git_info} \
%{$fg[white]%}{%*} $exit_code
%{$terminfo[bold]$fg[red]%}... %{$reset_color%}"

# Prompt format:
# USER@MACHINE > DIRECTORY ± git:BRANCH STATE {TIME} ∅:LAST_EXIT_CODE
# ... COMMAND
#
# For example:
# ys@ys-mbp > ~/.oh-my-zsh ± git:master x {21:47:42} ∅:0
# ... git status
