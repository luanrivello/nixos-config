{ config, pkgs, inputs, ... }:{
  imports = [
    ./hardware-configuration.nix
    ./boot/grub.nix
    ./desktop/bspwm.nix
    ./desktop/sddm.nix
    ./modules/openrgb.nix
    ./modules/printer.nix
    ./modules/sound.nix
    ./modules/networking.nix
    ./modules/bluetooth.nix
    ./user.nix
    inputs.home-manager.nixosModules.default
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
      dates = "daily";
      options = "--delete-older-than +5";
    };
  };

  security = {
    sudo.enable = false;
    doas.enable = true;

    doas.extraRules = [{
      groups = [ "wheel" ];
      keepEnv = true;
    }];
  };

  environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;
  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak";
  };

  services.envfs.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;

  nixpkgs.config.allowUnfree = true;
  programs = {
    steam.enable = true;
    dconf.enable = true; #! GTK QT
  };
  environment.systemPackages = with pkgs; [
    xorg.xrandr
    killall
    wget
    git
    bc
    man
    file
    glibc
    udisks
    neovim
    calibre
  ];

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

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "CascadiaCode" "FiraCode" ]; })
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
