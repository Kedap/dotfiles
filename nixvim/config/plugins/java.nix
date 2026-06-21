{pkgs, ...}: {
  extraPackages = with pkgs; [
    pkgs.jdk21
  ];

  plugins = {
    jdtls = {
      enable = true;
      settings = {
        cmd = ["jdtls"];
        root_dir = {
          __raw = ''
            vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1])
          '';
        };
      };
    };
  };
}
