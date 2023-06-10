#* USER CONFIGURATION
{ pkgs, ... }:
{
  #* Define a user account
  #!Don't forget to set a password with ‘passwd’
  users.users.skuld = {
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
