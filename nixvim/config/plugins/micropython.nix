{pkgs, ...}: let
  micropython-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "micropython-nvim";
    version = "2026-01-03";
    src = pkgs.fetchFromGitHub {
      owner = "jim-at-jibba";
      repo = "micropython.nvim";
      rev = "f124d6b166bd370338481e225f7a39b7d4a56742";
      hash = "sha256-tJ50rgrhPYZ0LPjN90nz7JwEtyAZH97YnHFK4SPaYZc=";
    };
    dependencies = [pkgs.vimPlugins.snacks-nvim];
  };
in {
  extraPlugins = [micropython-nvim];
  extraPackages = with pkgs; [mpremote uv python3];

  extraConfigLua = ''
    require('micropython_nvim').setup()

    -- Los nuevos proyectos usan los stubs instalados por uv en su propia .venv.
    require('micropython_nvim.project').TEMPLATES.pyright_config = [[
    {
      "venvPath": ".",
      "venv": ".venv",
      "typeCheckingMode": "basic",
      "reportMissingModuleSource": false
    }
    ]]
  '';

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>mp";
      group = "MicroPython";
    }
    {
      __unkeyed-1 = "<leader>mpi";
      __unkeyed-2 = "<cmd>MPInit<CR>";
      desc = "Inicializar proyecto MicroPython";
    }
    {
      __unkeyed-1 = "<leader>mpp";
      __unkeyed-2 = "<cmd>MPSetPort<CR>";
      desc = "Seleccionar puerto de la placa";
    }
    {
      __unkeyed-1 = "<leader>mpd";
      __unkeyed-2 = "<cmd>MPListDevices<CR>";
      desc = "Listar placas conectadas";
    }
    {
      __unkeyed-1 = "<leader>mpr";
      __unkeyed-2 = "<cmd>MPRun<CR>";
      desc = "Ejecutar archivo en la placa";
    }
    {
      __unkeyed-1 = "<leader>mpu";
      __unkeyed-2 = "<cmd>MPUpload<CR>";
      desc = "Subir archivo a la placa";
    }
    {
      __unkeyed-1 = "<leader>mpa";
      __unkeyed-2 = "<cmd>MPUploadAll<CR>";
      desc = "Subir proyecto a la placa";
    }
    {
      __unkeyed-1 = "<leader>mpe";
      __unkeyed-2 = "<cmd>MPRepl<CR>";
      desc = "Abrir REPL de MicroPython";
    }
    {
      __unkeyed-1 = "<leader>mps";
      __unkeyed-2 = "<cmd>MPSync<CR>";
      desc = "Montar directorio local en la placa";
    }
  ];
}
