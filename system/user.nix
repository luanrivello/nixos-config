#* USER CONFIGURATION
{ config, pkgs, ... }:
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
    shell = pkgs.fish;

    extraGroups = [ 
      "wheel"         #! Enable ‘sudo/doas’ for the user. 
      "video" 
      "audio" 
      "networkmanager" 
      "lp" "scanner"  #! Printer
    ]; 
    
    packages = with pkgs; [
      firefox
      neofetch
      stow
    ];

  };

  home-manager.users.skuld = {pkgs, ... }: {
    #* Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
    
    home = {
      stateVersion = "22.11";
    };

  };
}