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

        packages.homeConfigurations.workMac = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [ ./home.nix ./packages/mac.nix ./programs/mac.nix ./files/mac.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/Users/jsimmons";
            outputName = "workMac";
          };
        };

        packages.homeConfigurations.personalMac = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/mac.nix ./programs/mac.nix ./files/mac.nix ];

          extraSpecialArgs = {
            username = "simsies";
            homeDirectory = "/Users/simsies";
            outputName = "personalMac";
          };
        };

        packages.homeConfigurations.mediaServer = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/rpi.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/home/jsimmons";
            outputName = "mediaServer";
          };
        };
        packages.homeConfigurations.gpuBox = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/linux.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jcpsimmons";
            homeDirectory = "/home/jcpsimmons";
            outputName = "gpuBox";
          };
        };
        packages.homeConfigurations.gtak = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ./packages/linux.nix ./programs/linux.nix ./files/linux.nix ];

          extraSpecialArgs = {
            username = "jsimmons";
            homeDirectory = "/home/jsimmons";
            outputName = "gtak";
          };
        };
      }
    );
}
