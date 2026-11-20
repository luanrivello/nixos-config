{ pkgs, ... }:
{
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
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  system.stateVersion = "24.05";

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
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
    config = {
      font-name = "CaskaydiaCove Nerd Font";
      font-size = 14;
    };
    extraOptions = "--xkb-layout=dvorak";
  };

  #environment.binsh = "${pkgs.dash}/bin/dash";
  programs.zsh.enable = true;
  console = {
    keyMap = "dvorak";
  };

  services.envfs.enable = true;
}
