{ pkgs, ... }:
{
  services = {
    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      services.xserver.desktopManager.wallpaper.mode = "fill";

      displayManager.defaultSession = "none+bspwm";
      displayManager.setupCommands = "";

      windowManager.bspwm.enable = true;
    };
  };

}

