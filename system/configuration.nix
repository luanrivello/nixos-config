{ pkgs, inputs, ... }:{
  imports = [
    ./hardware-configuration.nix
    ./boot/efi.nix

    ./desktop/hyprland.nix
    ./desktop/display-manager/sddm.nix

    ./modules/controller-remap.nix
    ./modules/networking.nix
    ./modules/bluetooth.nix
    ./modules/printer.nix
    ./modules/locale.nix
    ./modules/sound.nix
    ./modules/fonts.nix

    ./packages.nix

    ./user.nix
    inputs.home-manager.nixosModules.default
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  system.stateVersion = "24.05";
  system.autoUpgrade = {
    enable = false;
    dates = "weekly";
    flags = [
      "--install"
      #"--no-build-output"
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
    keyMap = "dvorak";
  };

  #services.envfs.enable = true;

  #disk mount
  #services.devmon.enable = true;
  #services.udisks2.enable = true;
  #services.gvfs.enable = true;

  systemd.services.NetworkManager-wait-online.enable = false;

}
