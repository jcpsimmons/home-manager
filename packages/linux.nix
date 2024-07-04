{ pkgs, ... }:


{
  imports = [ ./common.nix ];
  home.packages = with pkgs; [
    # Theme/UI Related
    hyprpaper
    hyprpicker
    hypridle
    hyprlock
    hyprcursor
    gnome.nautilus
    gnome.gnome-tweaks
    gnome.eog
    gnome.zenity
    nwg-look
    tokyo-night-gtk

    # Apps

    arandr
    foot
    wofi
    dolphin
    dunst
    gedit
    chromium
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
