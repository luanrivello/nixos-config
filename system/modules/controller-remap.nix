{ config, pkgs, ... }:

{
  services.udev.extraHwdb = ''
  evdev:name:8BitDo Pro 3*:
  KEYBOARD_KEY_130=btn_east
  KEYBOARD_KEY_131=btn_south
  KEYBOARD_KEY_133=btn_north
  KEYBOARD_KEY_134=btn_west
  '';
}

