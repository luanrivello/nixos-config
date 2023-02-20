#* USER CONFIGURATION
{ pkgs, ... }:
let 
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-22.11.tar.gz";
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
    shell = pkgs.zsh;

    extraGroups = [ 
      "wheel"         #! Enable ‘sudo/doas’ for the user. 
      "video" 
      "audio" 
      "networkmanager" 
      "lp" "scanner"  #! Printer
    ]; 
    
  };

  home-manager.users.skuld = { pkgs, ... }: 
  let
    home = "/home/skuld/";
    config = "/home/skuld/.config";
    dotfiles = "/home/skuld/nixos-config/user/.dotfiles";
  in
  {
    #* Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
    
    home = {
      stateVersion = "22.11";

      packages = with pkgs; [
        #*Core
        alacritty
        neofetch
        ripgrep
        neovim
        gotop #bashtop
        ncdu
        tldr
        exa
        bat
        fd

        #*Internet
        librewolf 

        #*Desktop
        polybar
        rofi
        stow
        fish
        feh
      ];

      file = {
        #ALIASES
        #"${home}/.aliases".source = "${dotfiles}/enviroment/.aliases";
         
        #ALACRITTY
        #//".config/alacritty/alacritty.yml".source = ./dotfiles/alacritty.yml;

        #NEOVIM
        #"${config}/nvim/init.vim".source = "${dotfiles}/nvim/.config/nvim/init.vim";
        
        #POLYBAR
        #"${config}/polybar/config.ini".source = "${dotfiles}/polybar/.config/polybar/config.ini";
      };
    };
    
    #xsession.windowManager.bspwm.enable = true;
    
    #services.polybar.enable = true;
    #services.polybar.script = "polybar main &";

  };
}