{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      #(nerdfonts.override { fonts = [ "CascadiaCode" "FiraCode" ]; })
      nerd-fonts.caskaydia-cove
      nerd-fonts.fira-code
      noto-fonts-cjk-sans
      liberation_ttf
    ];

    fontconfig.defaultFonts = {
      serif = [ "CaskaydiaCove Nerd Font" "Noto Sans CJK" ];
      sansSerif = [ "CaskaydiaCove Nerd Font" "Noto Sans CJK" ];
      monospace = [ "FiraCode Nerd Font" "Noto Sans Mono CJK" ];
      emoji = [ "CaskaydiaCove Nerd Font" ];
    };
  };
}
