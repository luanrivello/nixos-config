{ pkgs, lib, ... }:
{
  services.xserver.enable = true;
  services.displayManager.ly = {
        enable = true;
        package = pkgs.ly;
        settings = {
          animate = false;
          #animation = "matrix";
          clock = "%d/%m/%G %A %H:%M:%S";
          bigclock = false;
          #asterisk = "o";
          clear_password = true;
          #vi_mode = true;
          bg = 1;
          fg = 8;
          border_fg = 8;
          box_title = "お帰り!";
          #initial_info_text = "null";
          #blank_box = true;
          hide_borders = false;
          #margin_box_h = 2;
          #margin_box_v = 1;
          #input_len = 34;
          #max_desktop_len = 100;
          #max_login_len = 255;
          #max_password_len = 255;
          default_inputs = "password";
          load = true;
          save = true;
          hide_key_hints = false;
          shutdown_key = "F1";
          restart_key = "F2";
          #sleep_key = "F3";
          restart_cmd = "/run/current-system/sw/bin/shutdown -r now";
          shutdown_cmd = "/run/current-system/sw/bin/shutdown now";
          #sleep_cmd = "";
          lang = "jp";
          tty = 2;
          #numlock = true;
        };
  };

  environment.systemPackages = with pkgs; [
    xorg.xauth
  ];
}
