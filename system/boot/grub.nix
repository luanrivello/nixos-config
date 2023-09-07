{ pkgs, ... }:
let
  grub-theme = "${import ./tartarus-grub.nix { inherit pkgs; }}";
in
{
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
    theme = grub-theme;
  };
}