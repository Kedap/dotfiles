{
  plugins.snacks = {
    enable = true;
    settings = {
      image = {enabled = true;};
      scratch = {enabled = true;};
      statuscolumn = {enabled = true;};
      bigfile = {enabled = true;};
      words = {enabled = true;};
      scroll = {enabled = true;};
      indent = {
        enabled = true;
        animate = {
          enabled = {__raw = "vim.fn.has('nvim-0.10') == 1";};
          style = "out";
          easing = "linear";
          duration = {
            step = 8;
            total = 500;
          };
        };
      };
    };
  };
}
