set -U fish_greeting

# alias para los comandos
alias v="nvim"
alias edit="nvim"
alias open="nvim ."
alias abrir="nvim ."
alias editar="nvim ."
alias oilvim="nvim . +Oil"
alias less="bat"
alias ls="eza"
alias la="eza -a"
alias ll="eza -l -g --git --icons"
alias lg="eza -l -g --git --icons --tree --level=2 -a --git-ignore"
alias lt="eza -l -g --icons --tree -a"
alias lw="eza -l -g --icons --tree -a"
alias sdkmanager="sdkmanager --sdk_root=~/etc/android-sdk/"
alias yarn="yarn --emoji true"
alias icat="kitty +kitten icat"
alias dir="eza"
alias descanse="asciiquarium"
alias openemm="emacsclient -n"

# Agregando path
fish_add_path ~/bin/

# Android sdk
#fish_add_path ~/etc/android-sdk/cmdline-tools/
#fish_add_path ~/etc/android-sdk/cmdline-tools/bin/
#fish_add_path ~/etc/android-sdk/tools/
#fish_add_path ~/etc/android-sdk/tools/bin/
#fish_add_path ~/etc/android-sdk/build-tools/
#fish_add_path ~/etc/android-sdk/build-tools/28.0.3
#fish_add_path ~/etc/android-sdk/platform-tools/

# flutter
#fish_add_path ~/etc/flutter/bin/
#fish_add_path ~/.pub-cache/bin/

# Yarn bin
fish_add_path ~/.yarn/bin/

# Ruta para las gemas de ruby
fish_add_path ~/.local/share/gem/ruby/3.0.0/bin/

# Ruta de python
fish_add_path ~/.local/bin/

# Ruta de rust
fish_add_path ~/.cargo/bin/

# Ruta de doom emacs
# fish_add_path ~/.emacs.d/bin/

# Ruta de scala
#fish_add_path ~/.local/share/coursier/bin

# Ruta de Go
# fish_add_path /home/d4n/go/bin


# Starshiop
starship init fish | source
