{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.displayManager.ly = {
        enable = true;
        package = pkgs.ly;
        settings = {
          animate = false;
          #animation = "matrix";

          bigclock = false;
          clock = "%d/%m/%G %A %H:%M:%S";

          asterisk = " ";
          clear_password = true;

          vi_mode = true;
          vi_default_mode = "insert";

          bg = 1;
          fg = 8;
          border_fg = 8;
          box_title = "お帰り!";
          #initial_info_text = "null";

          #blank_box = true;
          hide_borders = false;
          margin_box_h = 4;
          margin_box_v = 2;

          #input_len = 34;
          max_desktop_len = 100; 
          max_login_len = 255;
          max_password_len = 255;

          auto_login_user = "dareggon";
          default_inputs = "password";

          load = true;
          save = true;

          hide_key_hints = false;
          shutdown_key = "F1";
          restart_key = "F2";
          #sleep_key = "F3";
          brightness_down_key = "";
          brightness_up_key = "";
          shutdown_cmd = "/run/current-system/sw/bin/shutdown now";
          restart_cmd = "/run/current-system/sw/bin/shutdown -r now";
          #sleep_cmd = "";
          #tty = 2;
          #numlock = true;

          hide_version_string = false;

          lang = "ja";
        };
  };

  environment.systemPackages = with pkgs; [
    xorg.xauth
  ];
}
