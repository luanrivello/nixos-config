{ hostname, ... }:
{
  networking = {
    hostName = hostname;

    networkmanager = {
      enable = true;
      dns = "none";
    };

    #ControlD Ads&Track, Quad9
    nameservers = [
      "76.76.2.2#p2.freedns.controld.com"
      "76.76.10.2#p2.freedns.controld.com"
      "2606:1a40::2#p2.freedns.controld.com"
      "2606:1a40:1::2#p2.freedns.controld.com"
      "9.9.9.9#dns.quad9.net"
      "149.112.112.112#dns.quad9.net"
      "2620:fe::fe#dns.quad9.net"
      "2620:fe::9#dns.quad9.net"
    ];

    firewall.enable = true;
    #firewall.allowedTCPPorts = [ 8080 ];
    #firewall.allowedUDPPorts = [ ... ];

    #* Configure network proxy if necessary
    #proxy.default = "http://user:password@proxy:port/";
    #proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  };

  #* Enable the OpenSSH daemon
  #services.openssh.enable = true;

  services.resolved = {
    enable = true;
    dnsovertls = "true";
    domains = [ "~." ];
  };

  systemd.services.NetworkManager-wait-online.enable = false;
}
