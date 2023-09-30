{
  description = "My NixOS Flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager }:
  let
    system = "x86_64-linux";
    hostname = "nexus";
    username = "spellblade";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in
  {
    nixosConfigurations = {
      ${hostname} = nixpkgs.lib.nixosSystem {
        inherit pkgs system;

        modules = [
          ./system/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.${username} = ./home/home-manager.nix;
            };
          }
        ];

      };
    };
  };
}