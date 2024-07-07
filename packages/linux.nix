{ pkgs, ... }:


{
  imports = [ ./common.nix ];
  home.packages = with pkgs; [
    # Theme/UI Related
    gnome.nautilus
    gnome.gnome-tweaks
    gnome.eog
    gnome.zenity
    nwg-look
    tokyo-night-gtk
    wofi
    waybar

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
