#* USER CONFIGURATION
{ pkgs, ... }:
let
  #home-manager = builtins.fetchTarball {
  #  url = "https://github.com/nix-community/home-manager/archive/master.tar.gz";
  #  sha256 = "1hq625rvzamfkg2g1cn7jlp76kc4hxa8wk4l6y9xx19mdzz6yi21";
  #};
in
{
  imports = [
    #./home-manager.nix
    #(import "${home-manager}/nixos")
    #<home-manager/nixos>
  ];

  #TODO dev enviroment
  #users.users.crash = {

  #* Define a user account. 
  #!Don't forget to set a password with ‘passwd’.
  users.users.skuld = {
    isNormalUser = true;
    initialPassword = "y";
    shell = pkgs.zsh;

    extraGroups = [
      "wheel" #! Enable ‘sudo/doas’ for the user. 
      "video"
      "audio"
      "networkmanager"
      "lp"
      "scanner" #! Printer
    ];

  };
  
  home-manager.users.skuld = { pkgs, ... }:
    let
      home = "/home/skuld/";
      config = "/home/skuld/.config";
      dotfiles = "/home/skuld/nixos-config/user/.dotfiles";
    in
    {
      #* Let Home Manager install and manage itself.
      programs.home-manager.enable = true;

      nixpkgs.config.allowUnfree = true;
      home = {
        stateVersion = "22.11";

        packages = with pkgs; [
          #*Core
          alacritty
          neofetch
          ripgrep
          ripgrep-all
          neovim
          devour
          gotop #bashtop
          ncdu
          tldr
          exa
          bat
          fd

          #*Internet
          brave
          librewolf
          #tor-browser-bundle-bin
          #steam
          #discord
          #lbry
          #qbittorrent
          #vscode

          #*Desktop
          polybar
          rofi
          stow
          feh
          nitrogen
          xplr

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

        ];

        file = {
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

      #xsession.windowManager.bspwm.enable = true;

      #services.polybar.enable = true;
      #services.polybar.script = "polybar main &";

    };
}
