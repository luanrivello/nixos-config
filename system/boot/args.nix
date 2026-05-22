
{ ... }:
{
  boot.loader.timeout = 5;
  boot.kernelParams = [ 
    "loglevel=3" 
    "8250.nr_uarts=0"
    "amd_pstate=active" 
  ];
}
