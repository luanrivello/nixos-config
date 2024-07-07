{ pkgs, ... }:
let
  config = "~/.config";
in
{
  imports = [
    ./theme-eminence.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  home = {
    stateVersion = "23.11";

    packages = with pkgs; [
      #*Core
      alacritty
      neofetch
      ripgrep
      #ripgrep-all
      imagemagick
      neovim
      gotop
      ncdu
      tldr
      eza
      bat
      git
      fd

      #*Internet
      brave
      librewolf
      tor-browser-bundle-bin
      qbittorrent
      discord
      lbry
      vscode
      spotify

      #*Desktop
      arandr
      xorg.xkill
      xdg-utils
      polybar
      rofi
      #feh
      sxiv
      #nitrogen
      devour
      mpv
      (nnn.override { withNerdIcons = true; })
      ffmpeg
      ffmpegthumbnailer
      xdragon
      neo
      wl-gammactl
      gammastep

      dunst    #notification
      swww     #img and gif wallpaper
      mpvpaper #mpv wallpaper
      grim     #screenshot
      slurp    #select
      wl-clipboard  #clipboard
      wl-color-picker  #color-picker

      #*Utils
      keepassxc
      krita
      calibre
      epdfview
      onlyoffice-bin
      notion-app-enhanced
      #gimp-with-plugins
      gcolor3
      gparted
      anki
      calibre

      #*AI
      ollama

    ];

  };
}
