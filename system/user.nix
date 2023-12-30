{ pkgs, ... }:
let
  username = "dareggon";
in
{
  users.users.${username} = {
    isNormalUser = true;
    initialPassword = "y";
    shell = pkgs.zsh;

    extraGroups = [
      "wheel" #! Root for the user
      "video"
      "audio"
      "networkmanager"
      "lp" "scanner" #! Printer
    ];
  };

  home-manager = {
    #extraSpecialArgs = { inherit inputs; };
    users.${username} = import ../home/home-manager.nix;
  };
  
}
