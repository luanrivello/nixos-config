{ ... }:
{
  #sound.enable = true;
  security.rtkit.enable = true;
  services.pulseaudio.enable = false;

  services.pipewire.enable = true;
  services.pipewire = {
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };
}
