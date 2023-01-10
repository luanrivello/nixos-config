#* NETWORKING 
{ config, pkgs, ... }:

{
  #* Define your hostname.
  networking.hostName = "nexos"; 

  #* Networking
  networking.networkmanager.enable = true;  
  #* Enables wireless support via wpa_supplicant.
  #? networking.wireless.enable = true;  

  #* Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #* Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  #* Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  #! Or disable the firewall altogether.
  # networking.firewall.enable = false;
}