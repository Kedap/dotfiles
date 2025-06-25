{...}: {
  globals.mapleader = " ";

  opts = {
    # Apariencia y UI
    number = true;
    relativenumber = true;
    termguicolors = true;
    cursorline = true;
    colorcolumn = "105"; # Los valores de string se mantienen como strings
    signcolumn = "auto:5";
    conceallevel = 2;
    lazyredraw = true;

    # Comportamiento del texto y la indentación
    fileencoding = "utf-8";
    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    wrap = false;

    # Búsqueda
    incsearch = true;
    ignorecase = true;

    # Misceláneos
    mouse = "a";
    errorbells = false;
    clipboard = "unnamedplus";
    showmatch = true;
    backup = false;
    spelllang = "es";
  };

  highlight = {
    ColorColumn = {
      bg = "lightgrey";
      ctermbg = "Black";
    };
  };

  autoCmd = [
    {
      event = "TextYankPost";
      pattern = "*";
      command = ''lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}'';
    }
    {
      event = "FileType";
      pattern = "json";
      command = "setlocal formatexpr= | setlocal formatprg=jq";
    }
  ];
}
