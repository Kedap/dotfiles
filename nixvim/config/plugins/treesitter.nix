{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        auto_install = false;
        ensure_installed = [
          "git_config"
          "git_rebase"
          "gitattributes"
          "gitcommit"
          "gitignore"
          "bash"
          "comment"
          "dart"
          "fish"
          "go"
          "haskell"
          "html"
          "http"
          "javascript"
          "json"
          "jsonc"
          "latex"
          "lua"
          "markdown"
          "python"
          "ruby"
          "rust"
          "sql"
          "tsx"
          "typescript"
          "yaml"
          "http"
          "nix"
        ];
      };
    };

    rainbow-delimiters = {
      enable = true;
      strategy = {
        "" = "global";
        "vim" = "local";
      };
      query = {
        "" = "rainbow-delimiters";
        "lua" = "rainbow-blocks";
      };
      highlight = [
        "RainbowDelimiterRed"
        "RainbowDelimiterYellow"
        "RainbowDelimiterBlue"
        "RainbowDelimiterOrange"
        "RainbowDelimiterGreen"
        "RainbowDelimiterViolet"
        "RainbowDelimiterCyan"
      ];
    };
    ts-autotag.enable = true;
    treesitter-refactor.enable = true;

    treesitter-textobjects = {
      enable = true;
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
}
