{ pkgs, ... }:
let
  tartarus = "${import derivations/tartarus-grub.nix { inherit pkgs; }}";
in
{
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;

    copyKernels = true;
    efiSupport = true;
    efiInstallAsRemovable = true;

    theme = tartarus;
    splashMode = "normal";
    gfxmodeEfi = "1280x720";
    fontSize = 60;

  };
}
