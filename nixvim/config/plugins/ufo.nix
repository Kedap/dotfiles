{...}: let
  ufoFoldVirtTextHandler = ''
    function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      -- Aseguramos que se usa tu icono preferido
      local suffix = (" 󰁂 %d "):format(endLnum - lnum)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, "MoreMsg" })
      return newVirtText
    end
  '';
in {
  plugins = {
    nvim-ufo = {
      enable = true;
      settings = {
        fold_virt_text_handler = ufoFoldVirtTextHandler;
      };
    };
  };

  opts = {
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "zr";
      action = "<cmd>lua require('ufo').openAllFolds()<cr>";
      options.desc = "Abrir todos los folds";
    }
    {
      mode = "n";
      key = "zm";
      action = "<cmd>lua require('ufo').closeAllFolds()<cr>";
      options.desc = "Cerrar todos los folds";
    }
  ];
}
