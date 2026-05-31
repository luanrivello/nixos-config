{ pkgs, lib, ... }:
{
  services.greetd = {
    enable = true;

    settings.default_session = {
      user = "greeter";
      command = ''
      ${pkgs.tuigreet}/bin/tuigreet \
          --time \
          --remember \
          --remember-session \
          --user-menu \
          --width 80 \
          --window-padding 1 \
          --container-padding 2 \
          --prompt-padding 2 \
          --greeting "お帰り!" \
          --theme 'border=white;text=white;prompt=white;time=white;action=white;button=white;container=black;input=white'
      '';
    };
  };
}
