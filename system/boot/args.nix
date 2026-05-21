
{ ... }:
{
  boot.loader.timeout = 5;
  boot.kernelParams = [ 
    "lz4"
    "loglevel=3" 
    "8250.nr_uarts=0"
    "amd_pstate=active" 
  ];
}
