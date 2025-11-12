{
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  console.keyMap = "fr";

  users.users.moi = {
    isNormalUser = true;
    initialPassword = "moi";
    extraGroups = [ "wheel" ];
  };

  security.sudo.wheelNeedsPassword = false;
  programs = {
    vim.enable = true;
    git.enable = true;
    sway.enable = true;
  };

  system.stateVersion = "25.05";
}
