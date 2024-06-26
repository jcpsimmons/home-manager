{ pkgs, ... }:

# Add cross-compatible packages to ./mac.nix
# These are linux-only packages

{
  imports = [ ./common.nix ];
  home.packages = with pkgs; [
    dunst
    gnome.nautilus
    gnome.gnome-tweaks
    gnome.eog
    gedit
    gnome.zenity
    tokyo-night-gtk
    chromium
    hyprpaper
    hyprpicker
    hypridle
    hyprlock
    hyprcursor
    libgcc
    gcc
    nwg-look
    unzip
    rofi
    brave
    arandr
    foot
    wofi
    dolphin
    vscode
    playerctl
    networkmanager
    networkmanagerapplet
  ];
}
