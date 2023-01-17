
#* HOME-MANAGER CONFIGURATION
{ pkgs, ... }:

#? sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.11.tar.gz home-manager
#? nix-channel --update
#? /home/user/.config/nixpkgs/home.nix
#? home-manager switch

{ 
  imports = [ 
    <home-manager/nixos>
  ];
  
  home-manager.users.skuld = {pkgs, ... }: {
    #* Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
  }
}