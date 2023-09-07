{ pkgs, ... }:
let
  sddm-theme = "${import ./sddm-sugar-dark.nix { inherit pkgs; }}";
in
{
  services.displayManager = {
        sddm.enable = true;
        sddm.theme = sddm-theme;
  };

  environment.systemPackages = with pkgs.libsForQt5.qt5; [
    qtquickcontrols2
    qtgraphicaleffects
  ];
}