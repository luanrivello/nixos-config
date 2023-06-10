#* DESKTOP ENVIRONMENT
{ ... }:
{
  #* Enable the X11 windowing system
  services.xserver.enable = true;
  services.xserver = {
    #* Configure keymap in X11
    layout = "us";
    xkbVariant = "dvorak";
    xkbOptions = "caps:swapescape";

    #* Desktop Enviroment
    displayManager = {
      lightdm.enable = true;
      lightdm.greeters.slick.enable = true;
      lightdm.background = "/usr/share/backgrounds/lightdm.jpg";

      defaultSession = "none+bspwm";
    };

    windowManager.bspwm.enable = true;

  };
}