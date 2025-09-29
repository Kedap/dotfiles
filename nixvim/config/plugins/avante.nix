{pkgs, ...}: let
  avante-src = pkgs.fetchFromGitHub {
    owner = "yetone";
    repo = "avante.nvim";
    rev = "main";
    hash = "sha256-x2lb7k/qfERXYMdM+Upf6kmsYS3Qp9iz2KEvzvgb8P4=";
  };

  # 2. Define the custom avante package, based on nixpkgs logic
  myAvantePkg = let
    version = "HEAD";
    avante-nvim-lib = pkgs.rustPlatform.buildRustPackage {
      pname = "avante-nvim-lib-custom";
      inherit version;
      src = avante-src;
      cargoHash = "sha256-pTWCT2s820mjnfTscFnoSKC37RE7DAPKxP71QuM+JXQ=";
      nativeBuildInputs = with pkgs; [pkg-config makeWrapper perl];
      buildInputs = with pkgs; [openssl];
      buildFeatures = ["luajit"];
      checkFlags = [
        "--skip=test_hf"
        "--skip=test_public_url"
        "--skip=test_roundtrip"
        "--skip=test_fetch_md"
      ];
    };
  in
    pkgs.vimUtils.buildVimPlugin {
      pname = "avante-nvim-custom";
      inherit version;
      src = avante-src;
      dependencies = with pkgs.vimPlugins; [
        dressing-nvim
        img-clip-nvim
        nui-nvim
        nvim-treesitter
        plenary-nvim
      ];
      postInstall = let
        ext = pkgs.stdenv.hostPlatform.extensions.sharedLibrary;
      in ''
        mkdir -p $out/build
        ln -s ${avante-nvim-lib}/lib/libavante_repo_map${ext} $out/build/avante_repo_map${ext}
        ln -s ${avante-nvim-lib}/lib/libavante_templates${ext} $out/build/avante_templates${ext}
        ln -s ${avante-nvim-lib}/lib/libavante_tokenizers${ext} $out/build/avante_tokenizers${ext}
        ln -s ${avante-nvim-lib}/lib/libavante_html2md${ext} $out/build/avante_html2md${ext}
      '';
      nvimSkipModules = [
        "avante.providers.azure"
        "avante.providers.copilot"
        "avante.providers.gemini"
        "avante.providers.ollama"
        "avante.providers.vertex"
        "avante.providers.vertex_claude"
      ];
    };
in {
  # 3. Add avante and its dependencies to extraPlugins
  extraPlugins = with pkgs.vimPlugins; [
    myAvantePkg
    dressing-nvim
    img-clip-nvim
    nui-nvim
    nvim-treesitter
    plenary-nvim
  ];

  # 4. Configure avante using Lua
  extraConfigLua = ''
    require('avante').setup({
      diff = {
        autojump = true,
        debug = false,
        list_opener = "copen",
      },
      highlights = {
        diff = {
          current = "DiffText",
          incoming = "DiffAdd",
        },
      },
      hints = {
        enabled = false,
      },
      mappings = {
        diff = {
          both = "cb",
          next = "]x",
          none = "c0",
          ours = "co",
          prev = "[x",
          theirs = "ct",
        },
      },
      provider = "gemini-cli",
      acp_providers = {
        ['gemini-cli'] = {
          command = "gemini",
          args = {"--experimental-acp"},
          env = {
            NODE_NO_WARNINGS = "1",
          },
        },
      },
      windows = {
        sidebar_header = {
          align = "center",
          rounded = true,
        },
        width = 30,
        wrap = true,
      },
    })
  '';
}
