#* Edit this configuration file to define what should be installed on
#* your system.  Help is available in the configuration.nix(5) man page
#* and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

#? nixos-install
#? nixos-rebuild switch
#? nix-env -iA <name>
#? nix-env -q
#? nix-channel --update
#? nixos-rebuild switch --upgrade
#? sudo nix-collect-garbage -d
#? nix-env --delete-generations 90d

{
  #* Include the results of the hardware scan.
  imports = [ ./hardware-configuration.nix ];

  #! DONT CHANGE THIS VALUE
  system.stateVersion = "21.11"; 
  #TODO system.autoUgrade = {
  #  enable = true;
  #  channel = "";
  #}
  #TODO Garbage Collection
  #nix = {
  #  settings.auto-optimise-store = true;
  #  gc = {
  #    automatic = true;
  #    dates = "weekly";
  #    options = "--delete-older-than 60d";
  #  };
  #};

  #* systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  #* GRUB 2 boot loader.
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
    useOSProber = true;
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
    xkbOptions = "caps:swapescape";

    #* Desktop Enviroment
    displayManager.lightdm.enable = true;
    #?displayManager.defaultSession = "xfce+bspwm";
    #?displayManager.sessionCommands = ''
    #!/bin/sh
    #/home/snow/.configo/autostart/startup
    #'';
    desktopManager.xfce.enable = true;
    #desktopManager.xfce.enableXfwm = false;
    windowManager.bspwm.enable = true;
  };
  #services.xrdp.defaultWindowManager = "bspwm";

  #* Enable CUPS to print documents.
  #? services.printing.enable = true;

  #* Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  #TODO Bluetooth
  #services.blueman.enable = true;

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

  #TODO dev enviroment
  #users.users.crash = {
  #  isNormalUser = true;
  #  initialPassword = "y";
  #  shell = pkgs.fish;
  #
  #  extraGroups = [ 
  #    "wheel"         #! Enable ‘sudo/doas’ for the user. 
  #    "video" 
  #    "audio" 
  #    "networkmanager" 
  #    "lp" "scanner"  #! Printer
  #  ]; 
  #};
  

  #* List packages installed in system profile. To search, run:
  #* List packages installed in system profile. To search, run:
  #* $ nix search wget
  #TODO eviroment variables
  #enviroment.variables = {
  #  TERMINAL = "alacritty";
  #  EDITOR = "nvim";
  #  VISUAL = "nvim";
  #};
  #* Dash shell
  #environment.binsh = "${pkgs.dash}/bin/dash";
  #environment.binsh = "${pkgs.zsh}/bin/zsh";
  environment.systemPackages = with pkgs; [

    #*Terminal
    alacritty
    neovim
    htop
    wget
    git
    man
    stow
    killall

    #*Internet
    firefox
    #dolphin

    #*Fonts
    cascadia-code
    #Fira Code
    #nerdfonts
    #noto-fonts-cjk

    #*Desktop
    xorg.xkill
    xorg.xrandr
    nitrogen
    #picom
    polybar
    rofi
    #screenshoWiz

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
