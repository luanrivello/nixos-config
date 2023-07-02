{ ... }:
{
  services.printing.enable = true;
  services.avahi.enable = true;
  services.avahi.nssdmdns = true;
  services.avahi.openFirewall = true;
}