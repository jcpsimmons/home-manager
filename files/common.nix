{ pkgs, ... }:

{
  home.file = {
    # ".p10k.zsh".source = ../dotfiles/.p10k.zsh;
    ".zshenv".text = ''
      HISTSIZE=10000000
      SAVEHIST=10000000
      setopt HIST_EXPIRE_DUPS_FIRST
      setopt HIST_IGNORE_DUPS
      setopt HIST_IGNORE_ALL_DUPS
      setopt HIST_IGNORE_SPACE
      setopt HIST_FIND_NO_DUPS
      setopt HIST_SAVE_NO_DUPS

      ZSH_FZF_HISTORY_SEARCH_BIND='^f'
      ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES=1

      # Reverse tab cycle
      bindkey '^[[Z' reverse-menu-complete
    '';
    "DOSGAMES/README.md".text = ''
      DOSBOX will automatically mount this folder as C:\
      Place your DOS games here.
    '';

    ".config/nvim/init.lua".source =
      pkgs.fetchFromGitHub {
        owner = "jcpsimmons";
        repo = "neovim-config";
        rev = "main";
        sha256 = "0prr7ii6x8an1hfv9jsvx5ga2r8jlsw4xd4szns88gflwy1j3xm0";
      }
      + "/init.lua";

    ".scripts/coding-time-announce.sh" = {
      text = ''
        #!${pkgs.bash}/bin/bash
        ${pkgs.ponysay}/bin/ponysay "Hello Josh! Want to code? Teehee!!"
      '';
      executable = true;
    };
  };
}
