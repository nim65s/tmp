# démos NixOS

```
nix build .#nixosConfigurations.base.config.system.build.toplevel
nix build .#nixosConfigurations.base-vm.config.system.build.vm
nix build .#nixosConfigurations.base-vm-pi.config.system.build.vm
nix build .#nixosConfigurations.base-pi.config.system.build.sdImage
```
