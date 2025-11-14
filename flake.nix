{
  description = "NixOS: stratégies de déploiment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs: {
    nixosConfigurations = {
      base = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          ./base/configuration.nix
          ./common.nix
        ];
      };
      base-vm = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          "${inputs.nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"
          ./base-vm/configuration.nix
          ./common.nix
        ];
      };
      base-vm-pi = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          "${inputs.nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"
          ./base-vm-pi/configuration.nix
          ./common.nix
        ];
      };
      base-pi = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          "${inputs.nixpkgs}/nixos/modules/installer/sd-card/sd-image-aarch64.nix"
          ./base-pi/configuration.nix
          ./common.nix
        ];
      };
    };
  };
}
