{ config, pkgs, ... }:

#? nixos-install
#? nixos-rebuild switch
#? nix-shell -p
#? nix-env -iA <name>
#? nix-env -q
#? nix-env --delete-generations 90d
#? sudo nix-collect-garbage -d
#? nix-channel --update
#? nixos-rebuild switch --upgrade
#? sudo nixos-rebuild switch --flake '.#nexos'

{
  #* Import Modules
  imports = [
    ./hardware-configuration.nix
    ./boot/grub.nix
    ./desktop/bspwm.nix
    ./modules/printer.nix
    ./modules/sound.nix
    ./networking.nix
    ./user.nix
  ];

  #! DONT CHANGE THIS VALUE
  system.stateVersion = "22.11"; #? Did you read the comment?
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  nix = {
    #* Flakes
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";

    #* Garbage Collection
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 40d";
    };
  };

  #* Set your time zone.
  time.timeZone = "Etc/GMT-3";

  #* Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak";
  };

  #* Shell
  environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;

  #* Security
  security.sudo.enable = false;
  security.doas.enable = true;
  security.doas.extraRules = [{
    groups = [ "wheel" ];
    keepEnv = true;
  }];

  #*Fonts
  fonts = {
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "CascadiaCode" "FiraCode" ]; })
      ibm-plex
    ];
    enableDefaultFonts = true;
    fontconfig.defaultFonts = {
      serif = [ "Caskaydia Cove Nerd Font" "IBM Plex Serif" ];
      sansSerif = [ "Caskaydia Cove Nerd Font" "IBM Plex Sans" ];
      monospace = [ "Fira Code Nerd Font" "IBM Plex Mono" ];
    };
  };

  #* Packages
  nixpkgs.config.allowUnfree = true;
  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    #alacritty
    #neovim
    htop
    wget
    git
    man
    file
    #stow
    killall
  ];
}
