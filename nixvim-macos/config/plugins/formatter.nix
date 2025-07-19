{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    shfmt
    prettierd
    nodePackages.prettier
    nodePackages.sql-formatter
    black
    cmake-format
    go
    rustfmt
    clang-tools
    stylua
    taplo
    rubocop
    php83Packages.php-cs-fixer
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        timeout_ms = 5000;
        lsp_fallback = true;
      };
      log_level = "warn";
      notify_on_error = false;
      formatters = {
        stylua_custom = {
          command = "stylua";
          args = ["--config-path" "~/.config/stylua/stylua.toml" "-"];
          stdin = true;
        };
        shfmt_custom = {
          command = "shfmt";
          args = ["-i" "2"];
          stdin = true;
        };
      };

      formatters_by_ft = {
        # Formateadores preconfigurados
        javascript = ["prettierd"];
        typescript = ["prettierd"];
        typescriptreact = ["prettierd"];
        javascriptreact = ["prettierd"];
        json = ["prettierd"];
        jsonc = ["prettierd"];
        python = ["black"];
        markdown = ["prettier"];
        toml = ["taplo"];
        html = ["prettier"];
        ruby = ["rubocop"];
        cpp = ["clang-format"];
        cmake = ["cmake-format"];
        go = ["gofmt"];
        php = ["phpcbf"];
        yaml = ["prettierd"];
        css = ["prettierd"];
        liquid = ["prettierd"];
        graphql = ["prettier"];
        sql = ["sql-formatter"];
        rust = ["rustfmt"];
        nix = ["alejandra"];

        # Formateadores personalizados (definidos arriba)
        lua = ["stylua_custom"];
        sh = ["shfmt_custom"];
      };
    };
  };
}
