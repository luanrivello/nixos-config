#* Edit this configuration file to define what should be installed on
#* your system.  Help is available in the configuration.nix(5) man page
#* and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

#? nixos-install
#? nixos-rebuild switch
#? nix-env -iA <name>
#? nix-env -q
#? nix-channel --update
#? nixos-rebuild switch --upgrade
#? sudo nix-collect-garbage -d
#? nix-env --delete-generations 90d

{
  #* Import Modules
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./networking.nix
    ./desktop.nix
    #./user.nix
    ./sound.nix
    <home-manager/nixos>
  ];

  #! DONT CHANGE THIS VALUE
  system.stateVersion = "22.11"; #? Did you read the comment?

  #TODO system.autoUgrade = {
  #  enable = true;
  #  channel = "";
  #}
  nix = {
    #* Flakes
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";

    #* Garbage Collection
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
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

  #* Enable CUPS to print documents.
  #? services.printing.enable = true;

  #TODO Bluetooth
  #services.blueman.enable = true;

  #* Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

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

  #* List packages installed in system profile. To search, run:
  #* $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    #*Terminal
    alacritty
    neovim
    htop
    wget
    git
    man
    file
    stow
    killall

    #*Internet
    #firefox
    #dolphin

    #*Desktop
    xorg.xkill
    xorg.xrandr
    #picom
    #screenshoWiz

  ];

  #! Some programs need SUID wrappers, can be configured further or are
  #! started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

}
