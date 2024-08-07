{ pkgs, lib, inputs, ... }:{
  programs.sway.enable = true;
  programs.hyprland = {
    enable = true;
    #package = inputs.hyprland.packages."${pkgs.system}".hyprland;

    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar   #bar
    swayidle
    swaylock-effects
  ];
}
