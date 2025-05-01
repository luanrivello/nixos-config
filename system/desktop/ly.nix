{ pkgs, lib, ... }:
{
  #services.xserver.enable = true;
  services.displayManager.ly = {
        enable = true;
        package = pkgs.ly;
        settings = {
          save = true;
          animatie = true;
          animation = 0;
          asterisk = "X";
        };
  };
}
