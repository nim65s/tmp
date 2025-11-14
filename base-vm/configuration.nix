{
  networking.hostName = "base-vm";
  nixpkgs.hostPlatform = "x86_64-linux";

  services.qemuGuest.enable = true;

  virtualisation = {
    cores = 2;
    memorySize = 8182;
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
    ];
  };
}
