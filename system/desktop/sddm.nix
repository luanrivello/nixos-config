{ pkgs, ... }:
let
  sugar-dark = "${import derivations/sddm-sugar-dark.nix { inherit pkgs; }}";
in
{
  services.xserver.displayManager = {
        sddm.enable = true;
        sddm.theme = sugar-dark;
  };

  environment.systemPackages = with pkgs.libsForQt5.qt5; [
    qtquickcontrols2
    qtgraphicaleffects
  ];
}