#* USER CONFIGURATION
{ pkgs, ... }:
let 
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-22.11.tar.gz";
  dotfiles = "./nixos-config/user/.dotfiles";
in
{ 
  imports = [ 
    #./home-manager.nix
    (import "${home-manager}/nixos")
  ];

  #TODO dev enviroment
  #users.users.crash = {

  #* Define a user account. 
  #!Don't forget to set a password with ‘passwd’.
  users.users.skuld = {
    isNormalUser = true;
    initialPassword = "y";
    shell = pkgs.fish;

    extraGroups = [ 
      "wheel"         #! Enable ‘sudo/doas’ for the user. 
      "video" 
      "audio" 
      "networkmanager" 
      "lp" "scanner"  #! Printer
    ]; 
    
  };

  home-manager.users.skuld = { pkgs, ... }: {
    #* Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
    
    home = {
      stateVersion = "22.11";

      packages = with pkgs; [
        firefox
        neofetch
        stow
      ];

      file = {
        #ALIASES
        ".aliases".source = ${dotfiles}/enviroment/.aliases;
         
        #ALACRITTY
        #//".config/alacritty/alacritty.yml".source = ./dotfiles/alacritty.yml;

        #NEOVIM
        ".config/nvim/init.vim".source = ${dotfiles}/nvim/.config/nvim/init.vim
        
        #POLYBAR
        ".config/polybar/config.ini".source = ${dotfiles}/polybar/.config/polybar/config.ini
      };
    };
    
    services.polybar.enable = true;

  };
}