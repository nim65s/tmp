{
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  # console.keyMap = "fr";

  console.useXkbConfig = true;
  services.xserver.xkb = {
    layout = "fr";
    variant = "ergol";
  };

  users.users.toto = {
    isNormalUser = true;
    initialPassword = "toto";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFPWyZK9yJEyY7DqxN+A2h4+LccOoZGt2OdWEYvwzXzT nim@yupa"
    ];
  };
  security.sudo.wheelNeedsPassword = false;

  programs = {
    vim.enable = true;
    git.enable = true;
    sway.enable = true;
  };

  services = {
    httpd.enable = true;
    openssh.enable = true;
  };

  system.stateVersion = "25.05";
}
