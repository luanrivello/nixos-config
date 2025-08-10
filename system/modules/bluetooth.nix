{ ... }:
{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.settings = {
    Experimental = true;
  };
  services.blueman.enable = true;
}
