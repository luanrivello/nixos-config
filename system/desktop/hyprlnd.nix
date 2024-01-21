{ pkgs, lib, inputs, ... }:{
  #programs.sway.enable = true;
  #programs.hyprland.xwayland.enable = true;
  programs.hyprland.enable = true;
  programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;
}
