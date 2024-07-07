{ pkgs, lib, ... }:
{
  services.trezord.enable = true;
  environment.systemPackages = with pkgs; [
    trezord
    trezorctl
    trezor-suite
  ];
}
