# Created by newuser for 5.9
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Bind Alt + hjkl to cursor movement widgets
bindkey '^[h' backward-char      # Alt+h -> Left
bindkey '^[j' down-line-or-history # Alt+j -> Down
bindkey '^[k' up-line-or-history   # Alt+k -> Up
bindkey '^[l' forward-char     # Alt+l -> Right

# Exports and Alias
# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=200000

# force zsh to show the complete history
alias history="history 0"

# Some more ls aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ld='du -h -d 1'
alias nv='nvim'
alias neo='clear'
alias noe='neo'
alias cls='clear; fastfetch'
alias tr='tree -Ld 1'
alias trf='tree -I '.git' -I 'out' -L 2'
alias x='exit'
alias nvc='cd ~/dotfiles/nvim && nv'
alias cd='z'

# Path for custom scripts
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
alias tm='start_tmux'

# Git aliases
alias gitupd='git add .; git commit -m "upd"; git push'
alias gitnew='git add .; git commit -m "new"; git push'
alias gitadd='git add .; git commit -m "add"; git push'
alias gitfix='git add .; git commit -m "fix"; git push'
alias gitrebase='git pull --rebase'
alias gitbat='git add .; git commit -m "batman"; git push'
alias ga="git add .;"
alias gc="git commit -m"
alias gp="git push"
alias gpall="git remote | xargs -L1 git push"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export PATH="/home/dracuxan/projects/odin/Odin:$PATH"
eval $(opam env --switch=default)
