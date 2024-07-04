{ pkgs, ... }:

{
  home.file = {
    ".p10k.zsh".source = ../dotfiles/.p10k.zsh;
    ".zshenv".text = ''
      source ~/.p10k.zsh
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

    ".config/nvim" = {
      source = ../dotfiles/nvim;
      recursive = true;

    };
    ".config/nvim/verse.sh" = {
      text = ''
        #!${pkgs.bash}/bin/bash

        # List of all NT books plus Psalms
        books=("Matthew" "Mark" "Luke" "John" "Acts" "Romans" "1Corinthians" "2Corinthians" "Galatians" "Ephesians" "Philippians" "Colossians" "1Thessalonians" "2Thessalonians" "1Timothy" "2Timothy" "Titus" "Philemon" "Hebrews" "James" "1Peter" "2Peter" "1John" "2John" "3John" "Jude" "Revelation" "Psalms")

        # Randomly select a book
        selected_book=''${books[RANDOM % ''${#books[@]}]}

        # Get a random verse from the selected book
        ${pkgs.kjv}/bin/kjv $selected_book |
        # Use cat to pass the output to the next command
        cat |
        # Use awk to prepend a random number followed by a tab to each line
        awk 'BEGIN {srand()} {print rand() "\t" $0}' |
        # Sort the lines based on the random number
        sort -k1,1n |
        # Remove the random number and tab, leaving only the original text
        cut -f2- |
        # Select the first line after sorting, which is effectively random
        head -n 1 |
        fold -w 49

      '';
      executable = true;
    };
  };
}

