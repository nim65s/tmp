{
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  # console.keyMap = "fr";
  console.useXkbConfig = true;

  users.users.moi = {
    isNormalUser = true;
    initialPassword = "moi";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINlKH10l4IazTlC2UC0HV44iw/p7w7ufxaOk7VLX9vTG nim@ashitaka"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFPWyZK9yJEyY7DqxN+A2h4+LccOoZGt2OdWEYvwzXzT nim@yupa"
    ];
  };
  security.sudo.wheelNeedsPassword = false;

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  programs = {
    vim.enable = true;
    git.enable = true;
    sway.enable = true;
    tmux.enable = true;
  };

  services = {
    httpd.enable = true;
    openssh.enable = true;
    xserver.xkb = {
      layout = "fr";
      variant = "ergol";
    };
  };

  networking.firewall.allowedTCPPorts = [ 80 ];

  system.autoUpgrade = {
    enable = true;
    flake = "github:nim65s/tmp";
  };

  system.stateVersion = "25.05";
}
