
{ ... }:
{
  boot.loader.timeout = 0;
  boot.kernelParams = [ 
    "loglevel=3" 
    "8250.nr_uarts=0"
    "amd_pstate=active" 
    "amdgpu.gfxoff=0"
    "libata.force=5:disable,6:disable"
  ];
}
