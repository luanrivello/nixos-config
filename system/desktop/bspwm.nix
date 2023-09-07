{ pkgs, ... }:
let
  sddm-theme = sddm-theme;
in
{
  services = {
    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      displayManager = {
        #lightdm.enable = true;
        #lightdm.greeters.slick.enable = true;
        #lightdm.greeters.slick.font.name = "Fira Code Nerd Font";
        #lightdm.background = "/usr/share/backgrounds/lightdm.png";
        sddm.enable = true;
        sddm.theme = "${import ./sddm-sugar-dark.nix { inherit pkgs; }}";

        defaultSession = "none+bspwm";
      };

      windowManager.bspwm.enable = true;
    };
  };

  #sddm
  environment.systemPackages = with pkgs.libsForQt5.qt5; [
    qtquickcontrols2
    qtgraphicaleffects
  ];
}

