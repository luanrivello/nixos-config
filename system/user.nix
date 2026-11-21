{ pkgs, inputs, username, ... }:
{
  users.users.${username} = {
    isNormalUser = true;
    initialHashedPassword = "$6$G5G1lL3liF17JgE2$ocsn097CmpH5tSbMxQ4N7UxexRUQnlMIDRAGQS8PPYnsTJbSugM06TWh81StG/z80kvX2MWQZCAZMeZp1gcI6.";
    shell = pkgs.zsh;

    extraGroups = [
      "wheel" #! Root for the user
      "video"
      "networkmanager"
      "lp" "scanner" #! Printer
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users.${username} = ../home/home-manager.nix;
  };
}
