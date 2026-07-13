if status is-interactive
    # Starship custom prompt
    starship init fish | source

    command -v direnv &> /dev/null && direnv hook fish | source

    # Better ls
    alias ls='eza --icons --group-directories-first -1'

    # Abbrs
    abbr gd 'git diff'
    abbr ga 'git add .'
    abbr gc 'git commit -am'
    abbr gl 'git log'
    abbr gs 'git status'
    abbr gst 'git stash'
    abbr gsp 'git stash pop'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gsw 'git switch'
    abbr gsm 'git switch main'
    abbr gb 'git branch'
    abbr gbd 'git branch -d'
    abbr gco 'git checkout'
    abbr gsh 'git show'

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end

    # Custom fish config
    source ~/.config/caelestia/user-config.fish 2> /dev/null
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

alias v="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim"
alias edit="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim"
alias open="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim . +NvimTreeOpen"
alias abrir="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim ."
alias editar="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim ."
alias oilvim="/home/kedap/Documentos/repos/dotfiles/nixvim/result/bin/nvim . +Oil"

alias less="bat"
alias ls="eza"
alias la="eza -a"
alias ll="eza -l -g --git --icons"
alias lg="eza -l -g --git --icons --tree --level=2 -a --git-ignore"
alias lt="eza -l -g --icons --tree -a"
alias lw="eza -l -g --icons --tree -a"
alias icat="kitty +kitten icat"

set -U fish_greeting

# composer
set -gx HERD_LITE_HOME "/home/kedap/.config/herd-lite/bin"
set -gx PATH "$HERD_LITE_HOME" $PATH

# pnpm
set -gx PNPM_HOME "/home/kedap/.local/share/pnpm"
if not string match -q -- $PNPM_HOME/bin $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

zoxide init fish | source

# Added by Antigravity CLI installer
set -gx PATH "/home/kedap/.local/bin" $PATH
fish_add_path ~/bin/
