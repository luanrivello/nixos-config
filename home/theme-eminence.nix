{ pkgs }:
{
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "adwaita-dark";
  };

  gtk = {
    enable = true;
    cursorTheme.package = pkgs.bibata-cursors;
    cursorTheme.name = "Bibata-Modern-Classic";
    
    theme.package = pkgs.adw-gtk3;  
    theme.name = "adw-gtk3-dark";  
    
    iconTheme.package = pkgs.tela-icon-theme;
    iconTheme.name = "Tela-orange";
  };                                
}