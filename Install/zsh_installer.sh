echo "Start Install"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'local user_host="%B%(!.%{$fg[red]%}.%{$fg[red]%})%m%{$reset_color%} » "
local ret_status="%(?:%{$fg_bold[blue]%}:%{$fg_bold[red]%})%?%{$reset_color%}"
local user_symbol="%(!.#.$)"

PROMPT=" ╭─%{$fg[green]%}[%D{%H:%M:%S}]%  ${user_host}"
PROMPT+="%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
 ╰─>[${ret_status}] "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"' > ~/.oh-my-zsh/themes/golgoth.zsh-theme
echo "exec zsh" >> ~/.bashrc
echo "Install Done"
