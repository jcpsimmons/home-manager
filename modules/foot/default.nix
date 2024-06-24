{ pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Hack Nerd Font Mono:size=8";
        pad = "12x12";
        dpi-aware = "yes";
      };
    };
  };
}
