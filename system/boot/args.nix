
{ ... }:
{
  boot.loader.timeout = 0;
  boot.consoleLogLevel = 3;
  boot.kernelParams = [
    "8250.nr_uarts=0"
    "amd_pstate=active"
    "amdgpu.ppfeaturemask=0xfff73fff"
    "ahci.mask_port_map=0000:04:00.1=0x0f"
    "thermal.off=1"
  ];
}
