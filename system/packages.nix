{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  programs = {
    steam.enable = true;
    gamemode.enable = true;
    dconf.enable = true; #! GTK QT
  };

  environment.systemPackages = with pkgs; [
    protontricks
    xorg.xrandr
    killall
    wget
    git
    bc
    man
    file
    glibc
    udisks
    neovim
  ];
}
