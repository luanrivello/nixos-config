{ pkgs, inputs, ... }:{
  imports = [
    ./hardware-configuration.nix
    ./boot/grub.nix
    #./boot/efi.nix

    ./desktop/hyprland.nix
    #./desktop/display-manager/ly.nix
    #./desktop/display-manager/bspwm.nix
    ./desktop/display-manager/sddm.nix

    ./modules/networking.nix
    ./modules/bluetooth.nix
    ./modules/openrgb.nix
    ./modules/printer.nix
    ./modules/locale.nix
    ./modules/sound.nix
    ./modules/fonts.nix
    ./modules/key.nix

    ./packages.nix

    ./user.nix
    inputs.home-manager.nixosModules.default
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  system.stateVersion = "24.05";
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
    flags = [
      "--install"
      "--no-build-output"
      "--flake" "/home/dareggon/nixos-config#nixos"
    ];
  };

  nix = {
    package = pkgs.nix;
    extraOptions = "experimental-features = nix-command flakes";

    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
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

  #environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;
  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak";
  };

  services.envfs.enable = true;

  #disk mount
  services.devmon.enable = true;
  #services.gvfs.enable = true;
  services.udisks2.enable = true;

  systemd.services.NetworkManager-wait-online.enable = false;

}
