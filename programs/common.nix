{ pkgs, ... }:

{
  programs.fzf.enable = true;
  programs.home-manager.enable = true;
  programs.go.enable = true;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    initExtra = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      test -f ~/.config/zsh/.p10k.zsh && source ~/.config/zsh/.p10k.zsh

      export PATH=$HOME/go/bin:$PATH

      if [ -f "~/.workconfig" ]; then
        source ~/.workconfig
      fi

      if [ -f "~/.tokens" ]; then
        source ~/.tokens
      fi
    '';

    shellAliases = {
      nv = "nvim";
      cdg = "cd ~/Documents/github";
      portsinuse = "sudo lsof -i -P -n | grep LISTEN";

      # Mac only, brew install switchaudio-osx
      mon = "SwitchAudioSource -s \"Studio Display Speakers\" && SwitchAudioSource -t input -s \"Studio Display Microphone\"";
      mic = "SwitchAudioSource -s \"Yeti Stereo Microphone\" && SwitchAudioSource -t input -s \"Yeti Stereo Microphone\"";
      phones = "SwitchAudioSource -s \"Josh’s AirPods Max - Find My\" && SwitchAudioSource -t input -s \"Josh’s AirPods Max - Find My\"";
      mix = "SwitchAudioSource -s \"Josh’s AirPods Max - Find My\" && SwitchAudioSource -t input -s \"Yeti Stereo Microphone\"";
    };

    history = {
      save = 10000;
      share = true;
      size = 10000;
    };

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
        {
          name = "lukechilds/zsh-nvm";
        }
      ];
    };
  };
}
