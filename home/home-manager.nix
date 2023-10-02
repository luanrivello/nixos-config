{ pkgs, ... }:
let
  config = "~/.config";
in
{
  imports = [
    ./theme-eminence.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  
  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  home = {                          
    stateVersion = "23.11";         
                                    
    packages = with pkgs; [         
      #*Core                        
      alacritty                     
      neofetch                      
      ripgrep                      
      #ripgrep-all                  
      imagemagick                   
      nvimpager
      neovim                        
      gotop
      ncdu                          
      tldr                          
      eza                           
      bat                           
      fd                            
      git                           
                                    
      #*Internet                    
      brave                         
      librewolf                     
      tor-browser-bundle-bin        
      qbittorrent                   
      discord                       
      lbry                          
      #vscode

      #*Desktop
      arandr
      xorg.xkill
      xdg-utils
      polybar
      rofi
      feh
      #sxiv
      #nitrogen
      devour
      mpv
      (nnn.override { withNerdIcons = true; })
      ffmpeg
      ffmpegthumbnailer
      xdragon
      neo

      #*Utils
      keepassxc
      krita
      calibre
      epdfview
      onlyoffice-bin
      notion-app-enhanced
      gimp-with-plugins
      gcolor3
      gparted
      anki

    ];

  };
}
