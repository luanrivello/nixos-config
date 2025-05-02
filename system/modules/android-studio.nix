{ pkgs, lib, ... }:
{
  programs.adb.enable = true;
  users.users.dareggon.extraGroups = ["adbusers"]

  environment.systemPackages = with pkgs; [
    android-tools
    android-studio
    android-udev-rules
  ];
}
