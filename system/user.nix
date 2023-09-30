{ pkgs, ... }:
{
  users.users.dareggon = {
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
}
