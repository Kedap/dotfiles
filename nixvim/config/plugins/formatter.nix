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
    google-java-format
    (texlive.combined.scheme-small.withPackages (texPackages: [
      texPackages.latexindent
    ]))
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        timeout_ms = 1000;
        lsp_fallback = true;
      };
      log_level = "warn";
      notify_on_error = false;
      formatters = {
        rustfmt_custom = {
          command = "rustfmt";
          args = ["--emit=stdout" "--edition" "2024"];
          stdin = true;
        };
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
        latexindent_custom = {
          command = "latexindent";
          args = ["-"];
          stdin = true;
        };
      };

      formatters_by_ft = {
        # Formateadores preconfigurados
        javascript = ["prettier"];
        typescript = ["prettier"];
        typescriptreact = ["prettier"];
        javascriptreact = ["prettier"];
        json = ["prettier"];
        jsonc = ["prettier"];
        python = ["black"];
        markdown = ["prettier"];
        toml = ["taplo"];
        html = ["prettier"];
        ruby = ["rubocop"];
        c = ["clang-format"];
        cpp = ["clang-format"];
        arduino = ["clang-format"];
        cmake = ["cmake-format"];
        go = ["gofmt"];
        php = ["phpcbf"];
        yaml = ["prettier"];
        css = ["prettier"];
        java = ["google-java-format"];
        liquid = ["prettierd"];
        graphql = ["prettier"];
        sql = ["sql-formatter"];
        nix = ["alejandra"];

        # Formateadores personalizados (definidos arriba)
        rust = ["rustfmt_custom"];
        lua = ["stylua_custom"];
        sh = ["shfmt_custom"];
        tex = ["latexindent_custom"];
      };
    };
  };
}
