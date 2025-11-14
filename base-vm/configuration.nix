{
  networking.hostName = "base-vm";
  nixpkgs.hostPlatform = "x86_64-linux";

  services.qemuGuest.enable = true;

  virtualisation = {
    memorySize = 8182;
    cores = 2;
    diskSize = 8192;
    graphics = true;
    qemu.options = [
      "-device"
      "virtio-vga"
    ];
    spiceUSBRedirection.enable = true;
    forwardPorts = [
      {
        from = "host";
        host.port = 2222;
        guest.port = 22;
      }
      {
        from = "host";
        host.port = 8080;
        guest.port = 80;
      }
    ];
  };
}
