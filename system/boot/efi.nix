{ ... }:
{
  imports = [ ./args.nix ];

  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 10;
    efi.canTouchEfiVariables = true;
  };

  boot.initrd.systemd.enable = true;
  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "nvme"
    "ahci"
    "usbhid"
  ];
  boot.initrd.kernelModules = [ "vfat" "nls_cp437" "nls_iso8859_1" ];
}
