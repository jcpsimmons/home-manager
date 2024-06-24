{ pkgs, ... }:

{
  home.stateVersion = "24.05";

   imports = [
     ./modules/zsh
     ./modules/git
     ./modules/foot
     ./modules/gtk
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
  home.file.".config/waybar" = {
    source = ./dotfiles/.config/waybar;
    recursive = true;
  };
  programs.home-manager.enable = true;
  programs.fzf.enable = true;
  services.playerctld.enable = true;
}
