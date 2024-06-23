{ pkgs, ... }:

{
  home.stateVersion = "24.05";

   imports = [
     ./modules/zsh
     ./modules/git
   ];

  home.username = "jsimmons";
#  home.homeDirectory = "/Users/jsimmons";
  home.file.".p10k.zsh".source = ./dotfiles/.p10k.zsh;
  home.file.".config/nvim" = {
    source = ./dotfiles/.config/nvim;
    recursive = true;
  };
  home.file.".config/hypr" = {
    source = ./dotfiles/.config/hypr;
    recursive = true;
  };
  programs.home-manager.enable = true;
  programs.fzf.enable = true;
}
