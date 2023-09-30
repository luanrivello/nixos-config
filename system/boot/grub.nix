{ pkgs, ... }:
let
  tartarus = "${import derivations/tartarus-grub.nix { inherit pkgs; }}";
in
{
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
    theme = tartarus;
  };
}