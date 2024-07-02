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
    cargo
    haskellPackages.ghcup
    pipx
    python3

    # Networking
    lsof
    nmap

    # Nix-Related
    nix-prefetch-git
    nil
    nixd
    nixpkgs-fmt

    # Media
    spotify-player
    yt-dlp

    # Misc
    btop
    killall
    gh
    typst
    (nerdfonts.override { fonts = [ "BigBlueTerminal" ]; })
    dosbox-staging
    tldr
    duf
    bat
    entr
    jq
    gping
    speedtest-cli
    dog
    ngrok
  ];
}
