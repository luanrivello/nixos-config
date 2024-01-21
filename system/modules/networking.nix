{ ... }:
{
  networking = {
    hostName = "nexus"; 

    wireless.enable = false;
    networkmanager.enable = true;  
    nameservers = [ "9.9.9.9" "1.1.1.1" ]; 

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
