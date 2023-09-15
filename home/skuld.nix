{ pkgs, ... }:
let
  home = "/home/skuld/";
  config = "/home/skuld/.config";
  dotfiles = "/home/skuld/nixos-config/user/.dotfiles";
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
    stateVersion = "22.11";         
                                    
    packages = with pkgs; [         
      #*Core                        
      alacritty                     
      neofetch                      
      #ripgrep                      
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
                                    
      #*X

      #*Internet                    
      brave                         
      librewolf                     
      tor-browser-bundle-bin        
      qbittorrent                   
      discord                       
      lbry                          
      #vscode

      #*Desktop
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
      #keepassxc
      #krita
      #calibre
      #epdfview
      #onlyoffice-bin
      #notion-app-enhanced
      #gimp-with-plugins
      #gcolor3
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
