{ pkgs, inputs, ... }:{
  imports = [
    ./hardware-configuration.nix
    ./boot/efi.nix

    ./desktop/hyprland.nix
    ./desktop/display-manager/sysc-greet.nix

    ./modules/controller-remap.nix
    ./modules/networking.nix
    ./modules/bluetooth.nix
    ./modules/printer.nix
    ./modules/podman.nix
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
    enable = true;
    dates = "weekly";
    flags = [
      "--flake" "/home/dareggon/nixos-config#nexus"
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

  services.kmscon = {
    enable = true;
    fonts = [{
      name = "CaskaydiaCove Nerd Font";
      package = pkgs.nerd-fonts.caskaydia-cove;
    }];
    extraConfig = ''
    font-size=14
    '';
    extraOptions = "--xkb-layout=dvorak";
  };

  #environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;
  console = {
    keyMap = "dvorak";
  };

  services.envfs.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;

}
