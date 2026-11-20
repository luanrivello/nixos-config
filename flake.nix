{
  description = "My NixOS Flake";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      #url = "github:nix-community/home-manager/release-26.05";
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sysc-greet = {
      url = "github:Nomadcxx/sysc-greet";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs:
  let
    hostname = "nexus";
    username = "dareggon";
  in
  {
    nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs hostname username; };

      modules = [
        ./system/configuration.nix
        inputs.home-manager.nixosModules.default
        inputs.sysc-greet.nixosModules.default
      ];
    };
  };
}
