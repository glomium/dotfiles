# vim:filetype=zsh foldmethod=marker autoindent expandtab shiftwidth=4

# ============================
# .zshrc file
# ============================

autoload -U colors && colors

PROMPT="-%{$fg[cyan]%}%D{%H:%M:%S}%{$reset_color%}- %{$fg[yellow]%}%d
%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%{$reset_color%}%% "

eval `dircolors -b`

umask 0027

# append history list to the history file; this is the default but we make sure
# because it's required for share_history.
setopt append_history

# save each command's beginning timestamp and the duration to the history file
setopt extended_history

# remove command lines from the history list when the first character on the
# line is a space
setopt histignorespace

# If a new command line being added to the history list duplicates an older
# one, the older command is removed from the list
setopt histignorealldups

# if a command is issued that can't be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
setopt auto_cd

# report the status of backgrounds jobs immediately
setopt notify

# Don't send SIGHUP to background processes when the shell exits.
# setopt nohup

# avoid "beep"ing
setopt nobeep

# * shouldn't match dotfiles. ever.
setopt noglobdots

# ----------------------------
# ALIAS
# ----------------------------

# suffix alias

alias -s pdf='evince'
alias -s PDF='evince'

alias -s png='eog'
alias -s PNG='eog'
alias -s jpg='eog'
alias -s JPG='eog'

alias -s txt=$EDITOR
alias -s js=$EDITOR
alias -s htm=$EDITOR
alias -s css=$EDITOR
alias -s php=$EDITOR
alias -s html=$EDITOR

# command alias

alias cp='cp -pv'
alias mv='mv -v'
alias rm='rm -v'
alias scp='scp -p'
alias mkdir='mkdir -v'
alias :q='exit'

alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias la='ls -lah'
alias ltr='ls -ltrh'
alias grep='grep --color=auto'

# ----------------------------
# BINDS
# ----------------------------
#
# vi command line edit
#bindkey -v

#k# search history backward for entry beginning with typed text
bindkey "\e[5~" history-beginning-search-backward # PageUp
#k# search history forward for entry beginning with typed text
bindkey "\e[6~" history-beginning-search-forward  # PageDown

case $TERM in
  xterm*|rxvt*)
    precmd () {print -Pn "\e]0;%n@%M: %~\a"}
  ;;
esac
