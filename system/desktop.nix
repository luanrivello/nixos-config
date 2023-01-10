#* DESKTOP ENVIRONMENT
{ config, pkgs, ... }:
{
  imports = [ ];
  
  #? Use wayland when supported ?
  #* Enable the X11 windowing system.
  services.xserver = {
    enable = true;

    #* Configure keymap in X11
    layout = "us";
    xkbVariant = "dvorak";
    xkbOptions = "caps:swapescape";

    #* Desktop Enviroment
    displayManager.lightdm.enable = true;
    displayManager.defaultSession = "xfce+bspwm";
    #?displayManager.sessionCommands = ''
    #!/bin/sh
    #/home/snow/.config/autostart/startup
    #'';
    desktopManager.xfce.enable = true;
    desktopManager.xfce.enableXfwm = false;
    windowManager.bspwm.enable = true;
    windowManager.bspwm.configFile = "/home/skuld/.config/bspwm/bspwmrc";
  };
  services.xrdp.defaultWindowManager = "bspwm";

}