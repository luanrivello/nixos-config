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
      AutoConnect = true;
    };
  };
  services.blueman.enable = true;
}
