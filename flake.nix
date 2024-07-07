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

        packages.homeConfigurations.personalMac = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/mac.nix ./programs/mac.nix ./files/mac.nix ];

          extraSpecialArgs = {
            username = "simsies";
            homeDirectory = "/Users/simsies";
            outputName = "personalMac"; # there's probably a better way to get this
          };
        };

        packages.homeConfigurations.mediaServer = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/rpi.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/home/jsimmons";
            outputName = "mediaServer"; # there's probably a better way to get this
          };
        };
        packages.homeConfigurations.gpuBox = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/linux.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jcpsimmons";
            homeDirectory = "/home/jcpsimmons";
            outputName = "gpuBox"; # there's probably a better way to get this
          };
        };
        packages.homeConfigurations.gtak = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/linux.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/home/jsimmons";
            outputName = "gtak"; # there's probably a better way to get this
          };
        };
      }
    );
}
