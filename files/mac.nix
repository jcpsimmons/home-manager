{ ... }: {
  imports = [ ./common.nix ];

  home.file.".config/karabiner" = {
    source = ../dotfiles/karabiner;
    recursive = true;
  };
}
