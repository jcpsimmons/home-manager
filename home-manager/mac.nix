{ pkgs, ... }:

{
  imports = [ ../packages/mac.nix ../packages/common.nix ./programs/common.nix ./files/common.nix ];

  home.username = "simsies";
  home.homeDirectory = "/Users/simsies";
}
