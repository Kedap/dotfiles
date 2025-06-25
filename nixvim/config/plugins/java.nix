{pkgs, ...}: {
  extraPackages = with pkgs; [
    pkgs.jdk21
  ];

  plugins = {
    jdtls = {
      enable = true;
    };
  };
}
