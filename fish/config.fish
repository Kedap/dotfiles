if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Variables de uso
set --export EDITOR "nvim"

# Aqui van los alias (heradado desde Zsh)
alias v="nvim"
alias less="bat"
alias ls="exa"
alias la="exa -a"
alias ll="exa -l -g --git --icons"
alias lg="exa -l -g --git --icons --tree --level=2 -a --git-ignore"
alias sdkmanager="sdkmanager --sdk_root=$HOME/etc/android-sdk/"
alias yarn="yarn --emoji true"
alias icat="kitty +kitten icat"
alias dir="exa"

# configurando atajos
function fish_user_key_bindings
  bind \c] peco_select_ghq      # Ctrl-]
  bind \cr peco_select_history  # Ctrl-r
  bind \cj peco_select_z        # Ctrl-j
  bind \cf peco_select_file     # Ctrl-f
end

# configurando el tema
source ~/.config/fish/conf.d/mocha.fish

# Configurando starship
starship init fish | source
