{ pkgs, lib, config, ... }:

{
    programs.zsh = {
      enable = true;
      enableCompletion = true;

      shellAliases = {
        vi = "nvim";
      };

      history = {
        save = 10000;
        share = true;
        size = 10000;
      };

      initExtra = ''
        if [[ -r "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
          source "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
        fi
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      '';

      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
        ];
      };


      zplug = {
        enable = true;
        plugins = [
	  {
	    name = "romkatv/powerlevel10k";
	    tags = [ "as:theme" "depth:1" ];
	  }
          {
            name = "zsh-users/zsh-autosuggestions";
          }
          {
            name = "zsh-users/zsh-history-substring-search";
          }
          {
            name = "lukechilds/zsh-nvm";
          }
          {
            name = "zsh-users/zsh-syntax-highlighting";
            tags = ["defer:2"];
          }
        ];
      };
    };
}
