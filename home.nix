{ username, homeDirectory, ... }:
{
  home.stateVersion = "24.05";
  home.username = username;
  home.homeDirectory = homeDirectory;

  imports = [ ./packages/common.nix ./programs/common.nix ./files/common.nix ];

  nixpkgs.config.allowUnfree = true;
}
