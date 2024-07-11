{ ... }:

{
  programs.wezterm = {
    enable = true;
    # colorSchemes =
    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = {}

      config.color_scheme = 'Homebrew (Gogh)'

      config.font = wezterm.font 'BigBlueTermPlus Nerd Font'
      config.font_size = 20
      config.line_height = 1.07
      config.text_background_opacity = 1.0

      config.hide_tab_bar_if_only_one_tab = true

      config.window_background_opacity = 0.75
      config.macos_window_background_blur = 12

      config.initial_cols = 120
      config.initial_rows = 40

      config.window_decorations = "RESIZE"

      config.text_blink_rate = 300

      return config
    '';
  };
}
