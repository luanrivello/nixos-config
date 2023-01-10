#* BOOT LOADER
{ config, pkgs, ... }:

{
  #* systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  #* GRUB 2 boot loader.
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
    useOSProber = true;
    #TODO grub.theme = ;
  };

}