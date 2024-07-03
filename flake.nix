{
  description = "Josh's Home Manager Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, home-manager, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        # nix run home-manager -- switch --flake '.#workMac' -b bak
        packages.homeConfigurations.workMac = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [ ./home.nix ./packages/mac.nix ./programs/mac.nix ./files/mac.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/Users/jsimmons";
            outputName = "workMac"; # there's probably a better way to get this
          };
        };
      }
    );
}
