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
      lightdm.background = "/home/skuld/Interface/wallpapers/raining-gun_waifu2x_noise1_scale4x.png";

      defaultSession = "none+bspwm";
    };

    windowManager.bspwm.enable = true;

  };
}