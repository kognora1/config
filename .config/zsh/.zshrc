# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

# Aliases Folder
source $HOME/.config/zsh/aliasrc

# No Beep Conf
unsetopt beep

# Basic auto/tab complete
autoload -Uz compinit
compinit

# .zcompdum location
compinit -d $HOME/.config/zsh/zcompdump

## case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## case-insensitive (all) completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
## case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
