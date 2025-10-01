{pkgs, ...}: {
  extraPackages = with pkgs; [
    pkgs.jdk21
  ];

  plugins = {
    jdtls = {
      enable = true;
      settings = {
        cmd = [
          "jdtls"
          {
            __raw = "'--jvm-arg='..vim.api.nvim_eval('g:NVIM_LOMBOK')";
          }
        ];
        root_dir = {
          __raw = ''
            vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1])
          '';
        };
      };
    };
  };
}
