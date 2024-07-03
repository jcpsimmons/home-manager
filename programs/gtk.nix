{ pkgs, ... }:

{
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
    "org/gnome/shell/extensions/user-theme" = {
      name = "Tokyonight-Dark-B-LB";
    };
  };
  gtk = {
    enable = true;

    theme = {
      package = pkgs.tokyo-night-gtk;
      name = "Tokyonight-Dark-B-LB";
    };

    iconTheme = {
      package = pkgs.yaru-theme;
      name = "Yaru-red";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
