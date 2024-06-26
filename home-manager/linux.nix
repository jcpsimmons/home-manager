{ pkgs, ... }:

{
  imports = [ ../packages/common.nix ../packages/linux.nix ./programs/common.nix ];
  home.username = "jsimmons";
  home.homeDirectory = "/Users/jsimmons";

  home.file.".config/hypr" = {
    source = ./dotfiles/.config/hypr;
    recursive = true;
  };
  home.file.".config/waybar" = {
    source = ./dotfiles/.config/waybar;
    recursive = true;
  };

  services.playerctld.enable = true;
}
