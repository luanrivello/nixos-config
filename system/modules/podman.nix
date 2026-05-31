{ pkgs, ... }:
{
  virtualisation.podman = {
    enable = true;
    dockerCompat = true; # provides a docker socket compatibility layer
    defaultNetwork.settings.dns_enabled = true;
  };

  environment.systemPackages = with pkgs; [
    podman
    podman-compose
  ];
}
