{ pkgs, ... }:


{
  imports = [ ./common.nix ];
  home.packages = with pkgs; [
    # Apps
    arandr
    wofi
    kitty
    dolphin
    dunst
    gedit
    rofi
    brave

    # Lang-Specific
    libgcc
    gcc

    # Services
    playerctl
    networkmanager
    networkmanagerapplet
  ];
}
