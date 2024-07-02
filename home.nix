{ ... }:
# let
#   system = builtins.currentSystem;
#   isMac = system == "x86_64-darwin" || system == "aarch64-darwin";
#   platformImports = if isMac then [ ./packages/mac.nix ] else [ ./packages/linux.nix ./services/linux.nix ];
# in
{
  home.stateVersion = "24.05";

  imports = [ ./packages/common.nix ./programs/common.nix ./files/common.nix ];

  nixpkgs.config.allowUnfree = true;
}
