{ pkgs, lib, username, ... }:
{
  programs.adb.enable = true;
  users.users.${username}.extraGroups = ["adbusers"];

  environment.systemPackages = with pkgs; [
    android-tools
    android-studio
    android-udev-rules
  ];
}
