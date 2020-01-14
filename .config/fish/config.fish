# fish
set fish_pager_color_progress cyan

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# dotfiles
alias dotfiles="/usr/local/bin/git --git-dir=/Users/gentcys/Codes/personal/bare/ --work-tree=/Users/gentcys"

# rbenv
status --is-interactive; and source (rbenv init -|psub)

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