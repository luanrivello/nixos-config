{ ... }:
{
  services.displayManager = {
    lightdm.enable = true;
    lightdm.greeters.slick.enable = true;
    lightdm.greeters.slick.font.name = "Fira Code Nerd Font";
    lightdm.background = "/usr/share/backgrounds/lightdm.png";
  };
}
