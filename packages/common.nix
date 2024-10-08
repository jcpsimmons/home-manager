{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kjv

    # GUI Applications
    cool-retro-term
    vscode
    obsidian

    # Shell
    neovim
    tmux
    zellij
    zsh
    oh-my-zsh
    zsh-autocomplete
    zsh-autosuggestions
    zsh-syntax-highlighting
    tldr
    jq
    direnv

    # File Ops Tools
    tree
    git
    unzip
    ripgrep
    fzf
    bat
    entr
    duf

    # Process Handling
    btop
    killall

    # Networking
    gping
    speedtest-cli
    dog
    ngrok

    # Lang Specific
    bun
    deno
    cargo
    pipx
    python3
    nodePackages_latest.typescript-language-server
    vscode-langservers-extracted
    nodePackages.pnpm
    nodejs_22

    # Networking
    lsof
    nmap

    # Nix-Related
    nix-prefetch-git
    nil
    nixd
    nixpkgs-fmt
    nixfmt-rfc-style

    # Media
    spotify-player

    # Misc
    ponysay
    gh
    typst
    (nerdfonts.override {
      fonts = [
        "BigBlueTerminal"
        "JetBrainsMono"
      ];
    })
    dosbox-staging
    newsboat
  ];
}
