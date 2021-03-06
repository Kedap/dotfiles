if status is-interactive
    # Commands to run in interactive sessions can go here
end

# alias para los comandos
alias v="nvim"
alias less="bat"
alias ls="exa"
alias la="exa -a"
alias ll="exa -l -g --git --icons"
alias lg="exa -l -g --git --icons --tree --level=2 -a --git-ignore"
alias sdkmanager="sdkmanager --sdk_root=~/etc/android-sdk/"
alias yarn="yarn --emoji true"
alias icat="kitty +kitten icat"
alias dir="exa"
alias descanse="asciiquarium"

# Agregando path
fish_add_path ~/bin/

# Android sdk
fish_add_path ~/etc/android-sdk/cmdline-tools/
fish_add_path ~/etc/android-sdk/cmdline-tools/bin/
fish_add_path ~/etc/android-sdk/tools/
fish_add_path ~/etc/android-sdk/tools/bin/
fish_add_path ~/etc/android-sdk/build-tools/
fish_add_path ~/etc/android-sdk/build-tools/28.0.3
fish_add_path ~/etc/android-sdk/platform-tools/

# flutter
fish_add_path ~/etc/flutter/bin/
fish_add_path ~/.pub-cache/bin/

# Yarn bin
fish_add_path ~/.yarn/bin/

# Ruta para las gemas de ruby
fish_add_path ~/.local/share/gem/ruby/3.0.0/bin/

# Ruta de python
fish_add_path ~/.local/bin/

# Ruta de rust
fish_add_path ~/.cargo/bin/
