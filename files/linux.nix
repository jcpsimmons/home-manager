{ ... }:
{
  imports = [ ./common.nix ];
  home.file = {
    ".config/hypr" = {
      source = ../dotfiles/hypr;
      recursive = true;
    };
    ".config/waybar" = {
      source = ../dotfiles/waybar;
      recursive = true;
    };
  };
}
