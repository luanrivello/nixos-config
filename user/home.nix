{ config, pkgs, ... }:

{
  # nix-channel --add https://github.com/nix-community/home-manager/archive/release-21.11.tar.gz home-manager
  # nix-channel --update
  # nix-shell '<home-manager>' -A install
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "snow";
  home.homeDirectory = "/home/snow";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    alacritty
  ];
  
  home.file = {
    ".aliases".text = ''
      #!/bin/sh

      #MyAlias
      #Basic Operation
      alias ll='ls -alFh'
      alias la='ls -A'
      alias l='clear && ls -CFlh'
      alias mv='mv -v'
      alias cp='cp -v'
      alias rm='rm -Iv'
      alias sudo='doas'
      alias update='nixos-channel --update && nixos-rebuild switch'

      #Operations
      alias umysite='sudo rsync -vr --delete-during --exclude '.git/' --exclude '.vscode/' --exclude 'README.md'--exclude '.gitignore' /run/media/thermal/Storage/codes/html-css-js/my-site/ /srv/http/ && systemctl restart httpd'
      alias brired='xrandr --output DisplayPort-0 --brightness 0.6 && xrandr --output HDMI-A-0 --brightness 0.6'
      alias brires='xrandr --output DisplayPort-0 --brightness 0.9 && xrandr --output HDMI-A-0 --brightness 0.9'

      #Bookmarks
      alias storage='cd /.../Storage'
      alias shows='cd /.../Storage/shows'
      alias codes='cd /.../Storage/codes'
      alias ccc='cd /.../Storage/ccc'
      alias media='cd /.../Storage/multimedia'
      alias desktop='cd /home/thermal/desktop/'
      alias mplayer='mplayer -fs -zoom -xy 3000:800'

      #Kitty
      alias icat="kitty +kitten icat"
      alias kdiff="kitty +kitten diff"

      #Ambient
      alias v="nvim"
      alias n="nnn -axSQ"
      alias nnn="nnn -Q"
      alias sxiv='sxiv -f -q -a'
      alias mpv='mpv -fs'
      alias mplayer='mplayer -fs'
      alias sxiv='sxiv -faq'
      alias matrix='cmatrix -bs'
      alias tar='tar -v'
    '';
    
    ".config/alacritty/alacritty.yaml".text = ''
    
    '';
  };
  
}
