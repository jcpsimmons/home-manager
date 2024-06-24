{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    dunst
    tree
    ffmpeg_7
    cool-retro-term
    gnome.nautilus
    gnome.gnome-tweaks
    gnome.eog
    gedit
    gnome.zenity
    tokyo-night-gtk
    neovim
    ripgrep
    lsof
    nmap
    spotify-player
    chromium
    btop
    killall
    cool-retro-term
    hyprpaper
    hyprpicker
    hypridle
    hyprlock
    hyprcursor
    fzf
    tmux
    git
    nix-prefetch-git
    libgcc
    gcc
    nwg-look
    nil
    nixpkgs-fmt
    unzip
    gh
    rofi
    brave
    arandr
    foot
    wofi
    dolphin
    vscode
    zsh
    oh-my-zsh
    playerctl
    networkmanager
    networkmanagerapplet
  ];
}
