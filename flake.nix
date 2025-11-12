{
  description = "demo NixOS";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs: {
    nixosConfigurations = {
      base = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          ./machines/base/configuration.nix
          ./modules/common.nix
        ];
      };
      base-vm = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          "${inputs.nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"
          ./machines/base-vm/configuration.nix
          ./modules/common.nix
        ];
      };
    };
  };
}
