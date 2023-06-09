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
      hostname = "nexos";
      user = "skuld";

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      
      #lib = nixpkgs.lib;

    in
    {
      nixosConfigurations = {
        ${hostname} = nixpkgs.lib.nixosSystem {
          inherit pkgs system;
          modules = [
            ./system/configuration.nix
          ];
        };
      };

      homeConfigurations = {
        ${user} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./system/user.nix
          ];
        };
      };

    };
}
