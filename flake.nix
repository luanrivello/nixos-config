{
  description = "My NixOS Flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    hostname = "nexus";
    username = "dareggon";

    pkgs = import nixpkgs {
      #inherit system;
      config.allowUnfree = true;
    };
    #pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    nixosConfigurations.nexus = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      #inherit pkgs system;

      modules = [
        ./system/configuration.nix 
        inputs.home-manager.nixosModules.default

        #home-manager.nixosModules.home-manager {
        #  home-manager = {
        #    useGlobalPkgs = true;
        #    useUserPackages = true;
        #    users.${username} = ./home/home-manager.nix;
        #  };
        #}
      ];
    };
  };
}
