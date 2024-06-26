{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    ffmpeg_7
    cool-retro-term
    neovim
    ripgrep
    lsof
    nmap
    spotify-player
    btop
    killall
    cool-retro-term
    fzf
    tmux
    git
    nix-prefetch-git
    nil
    nixd
    nixpkgs-fmt
    unzip
    gh
    vscode
    zsh
    oh-my-zsh
  ];
}
