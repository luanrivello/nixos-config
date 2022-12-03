#* Edit this configuration file to define what should be installed on
#* your system.  Help is available in the configuration.nix(5) man page
#* and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

#? nixos-install

{
  #* Include the results of the hardware scan.
  imports = [ ./hardware-configuration.nix ];

  #! DONT CHANGE THIS VALUE
  system.stateVersion = "21.11"; 

  #* systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  #* GRUB 2 boot loader.
  boot.loader.grub = {
    enable = true;
    grub.version = 2;
    grub.device = "/dev/sda";
    grub.useOSProber = true;
    #TODO grub.theme = ;
  };

  #* Define your hostname.
  networking.hostName = "nexos"; 

  #* Enables wireless support via wpa_supplicant.
  #? networking.wireless.enable = true;  

  #* Set your time zone.
  time.timeZone = "Etc/GMT-3";

  #! The global useDHCP flag is deprecated, therefore explicitly set to false here.
  #! Per-interface useDHCP will be mandatory in the future, so this generated config
  #! replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s3.useDHCP = true;

  #* Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #* Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "dvorak";
  };

  #? Use wayland when supported ?
  #* Enable the X11 windowing system.
  services.xserver = {
    enable = true;

    #* Configure keymap in X11
    layout = "dvorak";
    xkbOptions = "caps:swapesc";

    #* Desktop Enviroment
    displayManager.lightdm.enable = true;
    #?displayManager.defaultSession = "xfce+bspwm";
    desktopManager.xfce.enable = true;
    #?windowManager.bspwm.enable = true;
  };

  #* Enable CUPS to print documents.
  #? services.printing.enable = true;

  #* Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  #TODO Bluetooth

  #* Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
  
  #* Shell
  programs.zsh.enable = true;

  #* Security
  # security.doas.enable = true;
  # security.sudo.enable = false;

  #* Define a user account. 
  #!Don't forget to set a password with ‘passwd’.
  users.users.skuld = {
    isNormalUser = true;
    initialPassword = "y";
    shell = pkgs.fish;

    extraGroups = [ 
      "wheel"         #! Enable ‘sudo/doas’ for the user. 
      "video" 
      "audio" 
      "networkmanager" 
      "lp" "scanner"  #! Printer
    ]; 
  };

  #* List packages installed in system profile. To search, run:
  #* $ nix search wget
  environment.systemPackages = with pkgs; [

    #*Terminal
    alacritty
    neovim
    wget
    git
    man

    #*Internet
    firefox
    #dolphin

    #*Fonts
    cascadia-code
    #nerdfonts

    #*Desktop
    xorg.xkill
    xorg.xrandr
    nitrogen
    #picom
    #polybar
    #rofi

  ];

  #! Some programs need SUID wrappers, can be configured further or are
  #! started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  #* List services that you want to enable:

  #* Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  #* Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  #! Or disable the firewall altogether.
  # networking.firewall.enable = false;

}
