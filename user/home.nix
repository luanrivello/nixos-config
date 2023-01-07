{ config, pkgs, ... }:

#? nix-channel --add https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz home-manager
#? nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.11.tar.gz home-manager
#? nix-channel --update
#? nix-shell '<home-manager>' -A install
#? /home/user/.config/nixpkgs/home.nix
#? home-manager switch

{

  #* Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    #! DONT CHANGE THIS VALUE 
    stateVersion = "22.11";

    username = "snow";
    homeDirectory = "/home/snow";

    keyboard = {
      layout = "dvorak";
      options = [ "caps:escape" ];
    };
    
    packages = with pkgs; [
      zsh
      alacritty
      nvim
      notepadqq
      neofetch
      cascadia-code
    ];
    
    file = {
      #ALIASES
      #//".aliases".source = ./dotfiles/.aliases;
       
      #ALACRITTY
      #//".config/alacritty/alacritty.yml".source = ./dotfiles/alacritty.yml;

      #NEOVIM
      #//".config/nvim/init.vim".source = ./dotfiles/init.vim;
    };
    
  };
  
}
