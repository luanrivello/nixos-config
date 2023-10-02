{ ... }:
{
  boot.loader = {
    system-boot.enable = true;
    efi.canTouchEfiVariable = true;
  };
}