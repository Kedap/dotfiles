{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        make
        markdown
        nix
        regex
        toml
        vim
        vimdoc
        xml
        yaml
        git_config
        git_rebase
        gitattributes
        gitcommit
        gitignore
        comment
        dart
        fish
        go
        haskell
        html
        http
        javascript
        jsonc
        latex
        lua
        python
        ruby
        rust
        sql
        tsx
        typescript
      ];
      settings = {
        highlight.enable = true;
      };
    };

    rainbow-delimiters = {
      enable = true;
      strategy = {
        "" = "global";
        "vim" = "local";
      };
      settings = {
        highlight = [
          "RainbowDelimiterRed"
          "RainbowDelimiterYellow"
          "RainbowDelimiterBlue"
          "RainbowDelimiterOrange"
          "RainbowDelimiterGreen"
          "RainbowDelimiterViolet"
          "RainbowDelimiterCyan"
        ];
        query = {
          "" = "rainbow-delimiters";
          "lua" = "rainbow-blocks";
        };
      };
    };
    ts-autotag.enable = true;
    treesitter-refactor.enable = true;

    treesitter-textobjects = {
      enable = true;
      settings = {
        select = {
          enable = true;
          lookahead = true;
          keymaps = {
            "af" = "@function.outer";
            "if" = "@function.inner";
            "ac" = "@conditional.outer";
            "ic" = "@conditional.inner";
            "al" = "@loop.outer";
            "il" = "@loop.inner";
          };
          selectionModes = {
            "@parameter.outer" = "v";
            "@function.outer" = "V";
            "@class.outer" = "<c-v>";
          };
          includeSurroundingWhitespace = true;
        };
      };
    };
  };
}
