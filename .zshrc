#############################
########## Exports ##########
#############################

#export PATH="$PATH:$CYBER"
export PATH="$PATH:/home/nemo/Downloads/coding-style-checker"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# export for NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set editor for ssh or not
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='nvim'
fi

export DISABLE_LS_COLORS="true"

#############################

################################
########## ZSH config ##########
################################

ZSH_THEME="golgoth"

# auto update to 13 days
zstyle ':omz:update' frequency 13

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

################################

###########################
########## Alias ##########
###########################

# for Git
alias gti="git"

# for sys
alias ls="exa"
alias la="exa -la"
alias l="exa -l"
alias nv="nvim"
alias rr="ranger"

# for zsh
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# for nmap
alias nmp="sudo nmap -sS -Pn -sC -p1-65535 -A -T4"

# for docker epitest
alias epi="sudo docker run -it -v $(pwd):/tmp/epitech epitechcontent/epitest-docker /bin/bash"

###########################

#########################
######### Exec ##########
#########################

archey3

#########################
