{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI Applications
    cool-retro-term
    vscode
    obsidian

    # Shell
    neovim
    tmux
    zsh
    oh-my-zsh
    zsh-autocomplete
    zsh-autosuggestions
    zsh-syntax-highlighting

    # File Ops Tools
    tree
    git
    unzip
    ripgrep
    fzf

    # Lang Specific
    go
    bun
    deno

    # Networking
    lsof
    nmap

    # Nix-Related
    nix-prefetch-git
    nil
    nixd
    nixpkgs-fmt
    
    # Media
    ffmpeg_7
    spotify-player
    yt-dlp

    # Misc
    btop
    killall
    gh
    typst
    dosbox-staging
  ];
}
