{ ... }:

{
  # One-liner program enables
  programs.fzf.enable = true;
  programs.home-manager.enable = true;
  programs.go.enable = true;

  # Lengthier configs should have their own file
  # and be imported here.
  imports = [ ./zsh.nix ./wezterm.nix ./newsboat.nix ];
}
