{ pkgs, ... }:
{
  services = {
    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      displayManager.defaultSession = "none+bspwm";

      windowManager.bspwm.enable = true;
    };
  };

}

