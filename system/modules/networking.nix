{ ... }:
{
  networking.hostName = "nexus"; 

  networking.networkmanager.enable = true;  
  networking.nameservers = [ "9.9.9.9" "1.1.1.1" ]; 

  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 8080 ];

  #* Open ports in the firewall
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false; #! Or disable the firewall altogether.

  # networking.wireless.enable = true; #? Enables wireless support via wpa_supplicant.

  #* Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #* Enable the OpenSSH daemon
  # services.openssh.enable = true;

}
