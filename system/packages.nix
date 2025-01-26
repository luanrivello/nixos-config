{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  programs = {
    steam.enable = true;
    gamemode.enable = true;
    dconf.enable = true; #! GTK QT

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
    };

  };

  environment.systemPackages = with pkgs; [
    #protontricks
    #xorg.xrandr
    killall
    wget
    git
    #bc
    man
    file
    glibc
    udisks
    neovim
  ];
}
