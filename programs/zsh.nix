{ pkgs, outputName, homeDirectory, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    initExtra = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      test -f ~/.config/zsh/.p10k.zsh && source ~/.config/zsh/.p10k.zsh

      export PATH=$HOME/go/bin:$PATH

      if [ -f $HOME/.workconfig ]; then
        source $HOME/.workconfig
      fi

      if [ -f $HOME/.tokens ]; then
        source $HOME/.tokens
      fi
    '';

    shellAliases = {
      nv = "nvim";
      cdg = "cd ~/Documents/github";
      portsinuse = "sudo lsof -i -P -n | grep LISTEN";
      verse = "sh $HOME/.config/nvim/verse.sh";

      gmcsg = "gcmsg"; # I always mistype this

      # Mac only, brew install switchaudio-osx
      mon = "SwitchAudioSource -s \"Studio Display Speakers\" && SwitchAudioSource -t input -s \"Studio Display Microphone\"";
      mic = "SwitchAudioSource -s \"Yeti Stereo Microphone\" && SwitchAudioSource -t input -s \"Yeti Stereo Microphone\"";
      phones = "SwitchAudioSource -s \"Josh’s AirPods Max - Find My\" && SwitchAudioSource -t input -s \"Josh’s AirPods Max - Find My\"";
      mix = "SwitchAudioSource -s \"Josh’s AirPods Max - Find My\" && SwitchAudioSource -t input -s \"Yeti Stereo Microphone\"";
      inithms = "nix run home-manager -- switch --flake '.#${outputName}' -b bak";
      hms = "home-manager switch --flake ${homeDirectory}/.config/home-manager/#${outputName} -b bak";
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
