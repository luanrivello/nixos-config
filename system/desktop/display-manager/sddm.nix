{ pkgs, lib, ... }:
let
  sugar-dark = "${import derivations/sddm-sugar-dark.nix { inherit pkgs; }}";
in
{
  services.xserver.enable = true;
  services.displayManager.sddm = {
        enable = true;
        package = pkgs.kdePackages.sddm;
        theme = "sddm-astronaut-theme";
        extraPackages = [ pkgs.sddm-astronaut ];
        wayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    (sddm-astronaut.override {
        embeddedTheme = "hyprland_kath";
        themeConfig = {
          Locale = "ja-JP";
          HeaderText = "お帰り!";
          DateFormat = "yyyy年 MMM dd日 dddd";
          HourFormat = "HH:mm";
          ForceHideCompletePassword = "true";
          HideVirtualKeyboard = "true";
          HideSystemButtons = "false";
          BackgroundColor="#000000";
          #BackgroundColor="#242455";
          #PartialBlur = "false";
          #FullBlur = "true";
          #BlurMax = "64";
          #Blur = "1.0";
        };
      }
    )
    kdePackages.qt6ct
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
  ];
}
