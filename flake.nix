{
  description = "My NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/master";
    #home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    #stylix.url = "github:danth/stylix";

  };

  outputs = { nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    hostname = "nexus";
    username = "dareggon";

    #pkgs = import nixpkgs {
    #  #inherit system;
    #  config.allowUnfree = true;
    #};
    #pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    nixosConfigurations.nexus = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      #inherit pkgs system;

      modules = [
        ./system/configuration.nix 
        inputs.home-manager.nixosModules.default
        #inputs.stylix.nixosModules.stylix

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
