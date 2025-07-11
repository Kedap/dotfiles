{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        indicator = {
          style = "underline";
        };
        diagnostics = "nvim_lsp";
        diagnostics_update_on_event = true;
        diagnostics_indicator = ''
          function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
              local sym = e == "error" and " " or (e == "warning" and " " or "󰋼")
              s = s .. n .. sym
            end
            return s
          end
        '';
        separator_style = "slant";
      };
    };
  };
}
