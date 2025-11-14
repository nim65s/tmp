{
  networking.hostName = "base-pi";
  nixpkgs.hostPlatform = "aarch64-linux";

  networking.interfaces.end0.ipv4.addresses = [
    {
      address = "192.168.100.100";
      prefixLength = 24;
    }
  ];
}
