{ pkgs, ... }:

{
  programs.go = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    initExtra = ''
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    test -f ~/.config/zsh/.p10k.zsh && source ~/.config/zsh/.p10k.zsh

    export PATH=$HOME/go/bin:$PATH
    '';
    oh-my-zsh = {
      enable = true;
      plugins = [
      "git"
      "fzf"
      ];
    };
    zplug = {
      enable = true;
      plugins = [
        { name = "hlissner/zsh-autopair"; }
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
      ];
    };
  };
}
