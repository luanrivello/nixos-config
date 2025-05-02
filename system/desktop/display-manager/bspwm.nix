{ pkgs, ... }:
{
  services = {
    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      desktopManager.wallpaper.mode = "fill";

      displayManager.defaultSession = "none+bspwm";

      windowManager.bspwm.enable = true;

    };
  };
}

