# Add /usr/local/bin
export PATH=/usr/local/bin:$PATH

# Node 14
export PATH="/usr/local/opt/node@14/bin:$PATH"

# Default Editor
export EDITOR="vim"

# xdg config home
export XDG_CONFIG_HOME=$HOME/.config

# Homebrew's sbin
export PATH=/usr/local/sbin:$PATH

# Golang
export GOPATH=$HOME/Codes/gocode
export PATH=/$GOPATH/bin:$PATH

# Rust
export PATH=$HOME/.cargo/bin:$PATH

# Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
