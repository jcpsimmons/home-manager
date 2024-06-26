{ pkgs, ... }:

{
  imports = [ ../packages/mac.nix ];

  home.username = "simsies";
  home.homeDirectory = "/Users/simsies";
}
