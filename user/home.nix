{ pkgs, ... }:
let
  home = "/home/skuld/";
  config = "/home/skuld/.config";
  dotfiles = "/home/skuld/nixos-config/user/.dotfiles";
in
{
  programs.home-manager.enable = true; #? Let Home Manager install and manage itself.
  nixpkgs.config.allowUnfree = true;

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
    theme.package = "adw-gtk3-dark";  
    
    iconTheme.package = gruvboxPlus;
    iconTheme.name = "GruvboxPlus";
  };                                
                                    
  home = {                          
    stateVersion = "22.11";         
                                    
    packages = with pkgs; [         
      #*Core                        
      alacritty                     
      neofetch                      
      #ripgrep                      
      #ripgrep-all                  
      imagemagick                   
      neovim                        
      gotop #bashtop                
      ncdu                          
      tldr                          
      exa                           
      bat                           
      fd                            
      stow                          
      git                           
                                    
      #*Internet                    
      brave                         
      librewolf                     
      tor-browser-bundle-bin        
      discord                       
      lbry                          
      qbittorrent                   
      git
      #vscode

      #*Desktop
      polybar
      rofi
      #stow
      feh
      #sxiv
      #nitrogen
      devour
      mpv
      xdg-utils
      xorg.xkill
      (nnn.override { withNerdIcons = true; })
      nvimpager
      ffmpeg
      ffmpegthumbnailer
      xdragon
      neo


      #*Utils
      #onlyoffice-bin
      #epdfview
      #calibre
      #krita
      #gimp-with-plugins
      #gcolor3
      #notion-app-enhanced
      #keepassxc
      #gparted
      #anki

    ];

    file = {
      #"${home}/.config" = {
      #  recursive = true;
      #  source = "${dotfiles}";
      #}; 
      #ALIASES
      #"${home}/.aliases".source = "${dotfiles}/enviroment/.aliases";

      #ALACRITTY
      #//".config/alacritty/alacritty.yml".source = ./dotfiles/alacritty.yml;

      #NEOVIM
      #"${config}/nvim/init.vim".source = "${dotfiles}/nvim/.config/nvim/init.vim";

      #POLYBAR
      #"${config}/polybar/config.ini".source = "${dotfiles}/polybar/.config/polybar/config.ini";
    };

  };
}
