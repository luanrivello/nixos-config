{ pkgs, ... }:
{
  services.sysc-greet = {
    enable = true;
    compositor = "hyprland";  # or "hyprland" or "sway"
  };
}
