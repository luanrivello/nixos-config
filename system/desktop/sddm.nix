{ pkgs, lib, ... }:
let
  sugar-dark = "${import derivations/sddm-sugar-dark.nix { inherit pkgs; }}";
in
{
  services.xserver.enable = true;
  services.displayManager = {
        sddm.enable = true;
        sddm.theme = "sddm-astronaut-theme";
        sddm.wayland.enable = true;
  };

  environment.systemPackages = with pkgs.libsForQt5.qt5; [
    qtquickcontrols2
    qtgraphicaleffects
  ];
}
