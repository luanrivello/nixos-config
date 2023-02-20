#* DESKTOP ENVIRONMENT
{ ... }:

{
  #? Use wayland when supported ?
  #* Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver = {
    #* Configure keymap in X11
    layout = "us";
    xkbVariant = "dvorak";
    xkbOptions = "caps:swapescape";

    #* Desktop Enviroment
    displayManager.lightdm.enable = true;
    displayManager = {
      defaultSession = "none+bspwm";
    };

    windowManager.bspwm.enable = true;

    desktopManager.xterm.enable = true;
    extraConfig = ''
    XTerm.vt100.background: black
    XTerm.vt100.foreground: grey
    '';
  };
  
}