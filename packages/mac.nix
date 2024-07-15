{ pkgs, ... }:

{
  imports = [ ./common.nix ];
  home.packages = with pkgs; [
    # GUI Apps
    stats
    raycast
    tableplus
  ];
}
