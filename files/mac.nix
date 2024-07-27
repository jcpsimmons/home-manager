{ ... }: {
  imports = [ ./common.nix ];

  ".config/karabiner" = {
    source = ../dotfiles/karabiner;
    recursive = true;
  };
}
