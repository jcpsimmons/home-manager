{ pkgs, ... }:
let
  system = builtins.currentSystem;
  isMac = system == "x86_64-darwin" || system == "aarch64-darwin";
  platformImports = if isMac then [ ./home-manager/mac.nix ] else [ ./home-manager/linux.nix ];
in
{
  home.stateVersion = "24.05";

  imports = platformImports;

  home.file.".p10k.zsh".source = ./dotfiles/.p10k.zsh;
  home.file.".config/nvim" = {
    source = ./dotfiles/nvim;
    recursive = true;
  };


  programs.fzf.enable = true;
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
