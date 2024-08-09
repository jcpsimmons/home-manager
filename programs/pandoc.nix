{ pkgs, ... }:
{
  programs.pandoc = {
    enable = true;
    defaults = {
      pdf-engine = "${pkgs.tectonic}/bin/tectonic";
    };
  };
}
