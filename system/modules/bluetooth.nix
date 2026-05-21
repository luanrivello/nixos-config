{ ... }:
{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.settings = {
    General = {
      Experimental = false;
      Enable = "Source,Sink,Media,Socket";
    };
    Policy = {
      AutoEnable = true;
      AutoConnect = false;
    };
  };
  services.blueman.enable = true;
}
