{
  plugins = {
    web-devicons.enable = true;
    lspsaga = {
      enable = true;
      finder.default = "ref+imp";

      lightbulb = {
        enable = true;
        sign = false;
        signPriority = 40;
        virtualText = true;
      };

      symbolInWinbar = {
        enable = true;
        showFile = false;
      };

      ui = {
        title = true;
        border = "rounded";
        expand = "";
        collapse = "";
        codeAction = "💡";
      };
    };
  };
}
