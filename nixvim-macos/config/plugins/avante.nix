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
      provider = "openai";
      providers = {
        openai = {
          endpoint = "https://api.openai.com/v1";
          model = "gpt-4.1-nano";
          extra_request_body = {
            timeout = 100000;
            temperature = 0;
            max_completion_tokens = 8192;
          };
        };
      };
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
