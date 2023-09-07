{ ... }:
{
  services = {
    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      displayManager = {
        lightdm.enable = true;
        lightdm.greeters.slick.enable = true;
        lightdm.greeters.slick.font.name = "Fira Code Nerd Font";
        lightdm.background = "/usr/share/backgrounds/lightdm.png";

        defaultSession = "none+bspwm";
      };

      windowManager.bspwm.enable = true;
    };

  };
}

