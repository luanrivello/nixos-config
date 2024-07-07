{ ... }:
{
  networking = {
    hostName = "nexus"; 

    wireless.enable = false;
    networkmanager.enable = true;  
    networkmanager.dns = "none";  
    #ControlD Ads&Track, Quad9
    nameservers = [ "9.9.9.9" "149.112.112.112" "76.76.2.2" "76.76.10.2" 
                    "2620:fe::fe" "2620:fe::9" "2606:1a40::2" "2606:1a40:1:2"  
                  ]; 

    firewall.enable = true;
    firewall.allowedTCPPorts = [ 8080 ];
    #firewall.allowedUDPPorts = [ ... ];

    #* Configure network proxy if necessary
    #proxy.default = "http://user:password@proxy:port/";
    #proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  };
  #* Enable the OpenSSH daemon
  #services.openssh.enable = true;
}
