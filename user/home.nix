{ config, pkgs, ... }:

{
  # nix-channel --add https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz home-manager
  # nix-channel --update
  # nix-shell '<home-manager>' -A install
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "snow";
  home.homeDirectory = "/home/snow";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    alacritty
  ];
  
  home.file = {
    ".config/alacritty/alacritty.yaml".text = ''
    
    ''
  }
  
}