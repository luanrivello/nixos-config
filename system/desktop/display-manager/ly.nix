{ pkgs, lib, ... }:
{
  services.xserver.enable = true;
  services.displayManager.ly = {
        enable = true;
        package = pkgs.ly;
        settings = {
          load = true;
          save = true;
          animate = true;
          animation = "matrix";
          asterisk = "X";
          vi_mode = true;
          restart_cmd = "/run/current-system/sw/bin/shutdown -r now";
          shutdown_cmd = "/run/current-system/sw/bin/shutdown now";
          wayland_specifier = true;
          #wayland_cmd = "/etc/ly/wsetup.sh";
        };
  };

  environment.systemPackages = with pkgs; [
    xorg.xauth;
  ];
}
