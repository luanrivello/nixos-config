#* USER CONFIGURATION
{ config, pkgs, ... }:

{
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
}