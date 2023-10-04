{ config, pkgs, ... }:

#? nixos-install
#? nixos-rebuild switch
#? nix-shell -p
#? nix-env -iA <name>
#? nix-env -q
#? nix-env --delete-generations 90d
#? nix-store --gc 
#? sudo nix-collect-garbage -d
#? nix-channel --update
#? nixos-rebuild switch --upgrade
#? sudo nixos-rebuild switch --flake '.#nexos'

{
  imports = [
    ./hardware-configuration.nix
    ./boot/grub.nix
    ./desktop/bspwm.nix
    ./desktop/sddm.nix
    ./modules/openrgb.nix
    ./modules/printer.nix
    ./modules/sound.nix
    ./modules/networking.nix
    ./user.nix
  ];

  system.stateVersion = "23.11";
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";

    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "+5";
    };
  };

  time.timeZone = "Etc/GMT+3";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LANGUAGE = "en_US.UTF-8";
    #LC_ALL = "en_US.UTF-8";
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "ja_JP.UTF-8";
  };

  environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;
  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak";
  };

  security = {
    sudo.enable = false;
    doas.enable = true;

    doas.extraRules = [{
      groups = [ "wheel" ];
      keepEnv = true;
    }];
  };

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "CascadiaCode" "FiraCode" ]; })
      ibm-plex
    ];
    fontconfig.defaultFonts = {
      serif = [ "Caskaydia Cove Nerd Font" "IBM Plex Serif" ];
      sansSerif = [ "Caskaydia Cove Nerd Font" "IBM Plex Sans" ];
      monospace = [ "Fira Code Nerd Font" "IBM Plex Mono" ];
    };
  };

  nixpkgs.config.allowUnfree = true;
  programs = {
    steam.enable = true;
    dconf.enable = true; #! GTK QT
  };
  environment.systemPackages = with pkgs; [
    xorg.xrandr
    wget
    git
    bc
    man
    file
    neovim
    killall
  ];

}
