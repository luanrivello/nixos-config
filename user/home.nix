{ config, pkgs, ... }:

{
  # nix-channel --add https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz home-manager
  # nix-channel --update
  # nix-shell '<home-manager>' -A install
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    username = "snow";
    homeDirectory = "/home/snow";

    # You can update Home Manager without changing this value. 
    stateVersion = "21.11";

    keyboard = {
        layout = "dvorak";
        options = [ "caps:escape" ];
    };
    
    packages = with pkgs; [
        alacritty
    ];
    
    file = {
        #BASHRC
        ".bashrc".source = ./dotfiles/.bashrc;
        
        #ALIASES
        ".aliases".source = ./dotfiles/.aliases;
        
        #ALACRITTY
        ".config/alacritty/alacritty.yaml".source = ./dotfiles/.alacritty.yaml;

        #ALACRITTY
        ".config/nvim/init.vim".source = ./dotfiles/init.vim;

    };
  };
}
