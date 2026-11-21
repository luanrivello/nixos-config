{ ... }:
{
  imports = [ ./args.nix ];

  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 10;
    efi.canTouchEfiVariables = true;
  };

  boot.initrd.systemd.enable = true;
  boot.initrd.systemd.tpm2.enable = false;
  systemd.tpm2.enable = false;

  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "nvme"
    "ahci"
    "usbhid"
  ];
}
