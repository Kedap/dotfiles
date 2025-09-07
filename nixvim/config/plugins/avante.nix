{
  plugins.avante = {
    enable = true;
    settings = {
      diff = {
        autojump = true;
        debug = false;
        list_opener = "copen";
      };
      highlights = {
        diff = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
      };
      hints = {
        enabled = false;
      };
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "ct";
        };
      };
      # provider = "gemini-cli";
      # acp_providers = {
      #   gemini-cli = {
      #     command = "gemini";
      #     args = ["--experimental-acp"];
      #     env = {
      #       NODE_NO_WARNINGS = "1";
      #       # GEMINI_API_KEY = os.getenv("GEMINI_API_KEY");
      #     };
      #   };
      # };
      windows = {
        sidebar_header = {
          align = "center";
          rounded = true;
        };
        width = 30;
        wrap = true;
      };
    };
  };
}
