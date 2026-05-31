{ pkgs, ... }:
let
  config = "~/.config";
in
{
  imports = [
    ./themes/eminence.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    setSessionVariables = true;
  };

  home = {
    stateVersion = "24.05";

    packages = with pkgs; [
      #*Core
      nixd
      #hakuneko
      alacritty
      #neofetch
      fastfetch
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
      #firefox
      librewolf
      tor-browser
      qbittorrent
      discord
      #lbry
      #vscode
      #spotify

      #*Desktop
      arandr
      xkill
      xdg-utils
      #polybar
      rofi
      #feh
      sxiv
      #nitrogen
      devour
      mpv
      (nnn.override { withNerdIcons = true; })
      ffmpeg
      ffmpegthumbnailer
      dragon-drop
      neo
      #wl-gammactl
      gammastep
      bluetui

      dunst           #notification
      #awww            #img and gif wallpaper
      #hyprpaper       #hyprland wallpaper
      mpvpaper        #mpv wallpaper
      grim            #screenshot
      slurp           #select
      wl-clipboard    #clipboard
      wl-color-picker #color-picker

      #*Utils
      keepassxc
      krita
      calibre
      qpdfview
      thunderbird
      #onlyoffice-desktopediotors
      #jetbrain.idea-community-src
      notion-app-enhanced
      #gimp-with-plugins
      gcolor3
      gparted
      #anki
      #ardour
      heroic
      protonplus

      #*AI
      #ollama
      #code-cursor
      #goose-cli

    ];

  };
}
