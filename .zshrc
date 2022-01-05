# Created by andre for 5.8

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
HISTFILESIZE=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

#PROMPT=$'%F{red}%n@%m:%B%F{blue}%~%f%F{white}$%f%b '

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.
alias v='~/nvim.appimage'
export EDITOR='nvim'

#scripts
home () {
    cd $HOME/$1
}

#Config bare repository - git
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME';
#Download video link
alias yt="youtube-dl --add-metadate -ic --verbose"
#Download video audio
alias yta="youtube-dl --add-metadata -xic --verbose"
alias zsource="source ~/.zshrc"

#Git Aliases
alias gca="git commit -a"
alias gpo="git push origin"
alias gc="git checkout"
alias g="git"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

