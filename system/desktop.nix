{ ... }:
{
  services = {
    picom.enable = true;

    xserver.enable = true;
    xserver = {
      layout = "us";
      xkbVariant = "dvorak";
      xkbOptions = "caps:swapescape";

      displayManager = {
        lightdm.enable = true;
        lightdm.greeters.slick.enable = true;
        lightdm.greeters.slick.font.name = "Fira Code Nerd Font";
        lightdm.background = "/usr/share/backgrounds/lightdm.png";

        defaultSession = "none+bspwm";
      };

      windowManager.bspwm.enable = true;
    };

    picom.seettings = {
      #################################
      #          Animations           #
      #################################
      transition-length = 300;
      transition-pow-x = 0.1;
      transition-pow-y = 0.1;
      transition-pow-w = 0.1;
      transition-pow-h = 0.1;
      size-transition = true;


      #################################
      #             Corners           #
      #################################
      # requires: https://github.com/sdhand/compton or https://github.com/jonaburg/picom
      corner-radius = 10.0;
      rounded-corners-exclude = [
        #"window_type = 'normal'",
        "class_g = 'URxvt'"
        "class_g = 'XTerm'"
        "class_g = 'kitty'"
        "class_g = 'Alacritty'"
        "class_g = 'Polybar'"
        "class_g = 'code-oss'"
        #"class_g = 'TelegramDesktop'",
      ];
      round-borders = 1;
      round-borders-exclude = [
        #"class_g = 'TelegramDesktop'",
      ];

      #################################
      #             Shadows           #
      #################################


      # Enabled client-side shadows on windows. Note desktop windows 
      # (windows with '_NET_WM_WINDOW_TYPE_DESKTOP') never get shadow, 
      # unless explicitly requested using the wintypes option.
      #
      # shadow = false
      shadow = false;

      # The blur radius for shadows, in pixels. (defaults to 12)
      # shadow-radius = 12
      shadow-radius = 7;

      # The opacity of shadows. (0.0 - 1.0, defaults to 0.75)
      # shadow-opacity = .75

      # The left offset for shadows, in pixels. (defaults to -15)
      # shadow-offset-x = -15
      shadow-offset-x = -7;

      # The top offset for shadows, in pixels. (defaults to -15)
      # shadow-offset-y = -15
      shadow-offset-y = -7;

      # Avoid drawing shadows on dock/panel windows. This option is deprecated,
      # you should use the *wintypes* option in your config file instead.
      #
      # no-dock-shadow = false

      # Don't draw shadows on drag-and-drop windows. This option is deprecated, 
      # you should use the *wintypes* option in your config file instead.
      #
      # no-dnd-shadow = false

      # Red color value of shadow (0.0 - 1.0, defaults to 0).
      # shadow-red = 0

      # Green color value of shadow (0.0 - 1.0, defaults to 0).
      # shadow-green = 0

      # Blue color value of shadow (0.0 - 1.0, defaults to 0).
      # shadow-blue = 0

      # Do not paint shadows on shaped windows. Note shaped windows 
      # here means windows setting its shape through X Shape extension. 
      # Those using ARGB background is beyond our control. 
      # Deprecated, use 
      #   shadow-exclude = 'bounding_shaped'
      # or 
      #   shadow-exclude = 'bounding_shaped && !rounded_corners'
      # instead.
      #
      # shadow-ignore-shaped = ' 

      # Specify a list of conditions of windows that should have no shadow.
      #
      # examples:
      #   shadow-exclude = "n:e:Notification";
      #
      # shadow-exclude = []
      shadow-exclude = [
        "name = 'Notification'"
        "class_g = 'Polybar'"
        "_GTK_FRAME_EXTENTS@:c"
      ];

      # Specify a X geometry that describes the region in which shadow should not
      # be painted in, such as a dock window region. Use 
      #    shadow-exclude-reg = "x10+0+0"
      # for example, if the 10 pixels on the bottom of the screen should not have shadows painted on.
      #
      # shadow-exclude-reg = "" 

      # Crop shadow of a window fully on a particular Xinerama screen to the screen.
      # xinerama-shadow-crop = false
    };
  };
}

