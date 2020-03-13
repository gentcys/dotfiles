# fish
set fish_pager_color_progress cyan

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# dotfiles
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/Codes/personal/dotfiles/ --work-tree=$HOME"

# Homebrew's sbin
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# golang
set -gx GOPATH $HOME/Codes/gocode
set -gx PATH $PATH $GOPATH/bin

# java
set -gx JAVA_HOME (/usr/libexec/java_home)
set -gx PATH (/usr/libexec/java_home)/bin $PATH

set -gx PATH $HOME/Codes/flutter/bin $PATH

# android
set -gx ANDROID_HOME /usr/local/share/android-sdk
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/build-tools $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# pyenv
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
