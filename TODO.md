warning: Git tree '/home/dareggon/nixos-config' is dirty
building the system configuration...
warning: Git tree '/home/dareggon/nixos-config' is dirty
error:
       … while calling the 'head' builtin
         at «github:nixos/nixpkgs/02c087f3fe673c9e317f206a627cb6b910336dbe?narHash=sha256-IoNisKcGbUjdd45qCqywGMCYmZ5EnkxezvLII0FWwNA%3D»/lib/attrsets.nix:1711:13:
         1710|           if length values == 1 || pred here (elemAt values 1) (head values) then
         1711|             head values
             |             ^
         1712|           else

       … while evaluating the attribute 'value'
         at «github:nixos/nixpkgs/02c087f3fe673c9e317f206a627cb6b910336dbe?narHash=sha256-IoNisKcGbUjdd45qCqywGMCYmZ5EnkxezvLII0FWwNA%3D»/lib/modules.nix:1181:7:
         1180|     // {
         1181|       value = addErrorContext "while evaluating the option `${showOption loc}':" (
             |       ^
         1182|         # Apply the 'apply' function to the merged value. This allows options to

       … while evaluating the option `system.build.toplevel':

       … while evaluating definitions from `/nix/store/87lfqfz7mc5dm4w75qikxhd6lkr9jisr-source/nixos/modules/system/activation/top-level.nix':

       … while evaluating the option `warnings':

       … while evaluating definitions from `/nix/store/87lfqfz7mc5dm4w75qikxhd6lkr9jisr-source/nixos/modules/system/boot/systemd.nix':

       … while evaluating the option `systemd.services.home-manager-dareggon.serviceConfig':

       … while evaluating definitions from `/nix/store/5i00dnc7sxg3fgha0jdlnmfyxkjhs384-source/nixos':

       … while evaluating the option `home-manager.users.dareggon.home.file."/home/dareggon/.config/fontconfig/conf.d/10-hm-fonts.conf".source':

       … while evaluating definitions from `/nix/store/5i00dnc7sxg3fgha0jdlnmfyxkjhs384-source/modules/misc/xdg':

       … while evaluating the option `home-manager.users.dareggon.xdg.configFile."fontconfig/conf.d/10-hm-fonts.conf".source':

       … while evaluating definitions from `/nix/store/5i00dnc7sxg3fgha0jdlnmfyxkjhs384-source/modules/misc/fontconfig.nix':

       … while evaluating the option `home-manager.users.dareggon.fonts.fontconfig.configFile.fonts.source':

       … while evaluating definitions from `/nix/store/5i00dnc7sxg3fgha0jdlnmfyxkjhs384-source/modules/misc/fontconfig.nix':

       … while evaluating the option `home-manager.users.dareggon.fonts.fontconfig.configFile.fonts.settings':

       … while evaluating definitions from `/nix/store/5i00dnc7sxg3fgha0jdlnmfyxkjhs384-source/modules/misc/fontconfig.nix':

       … while evaluating the option `home-manager.users.dareggon.home.packages':

       … while evaluating definitions from `/nix/store/6g26blc5pxdnxsnhsvqddvhgry2q10i6-source/home/home-manager.nix':

       … while evaluating the module argument `inputs' in "/nix/store/6g26blc5pxdnxsnhsvqddvhgry2q10i6-source/home/home-manager.nix":

       … noting that argument `inputs` is not externally provided, so querying `_module.args` instead, requiring `config`

       (stack trace truncated; use '--show-trace' to show the full, detailed trace)

       error: attribute 'inputs' missing
       at «github:nixos/nixpkgs/02c087f3fe673c9e317f206a627cb6b910336dbe?narHash=sha256-IoNisKcGbUjdd45qCqywGMCYmZ5EnkxezvLII0FWwNA%3D»/lib/modules.nix:746:13:
          745|             "noting that argument `${name}` is not externally provided, so querying `_module.args` instead, requiring `config`"
          746|             config._module.args.${name}
             |             ^
          747|           )
Command 'nix --extra-experimental-features 'nix-command flakes' build --print-out-paths '.#nixosConfigurations."nexus".config.system.build.toplevel' --no-link' returned non-zero exit status 1.
