{ ... }:

{
  programs.wezterm = {
    enable = true;
    # colorSchemes =
    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = {}


      config.keys = {
          {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
          {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
      }
      config.color_scheme = 'Everforest Dark (Gogh)'

      config.font = wezterm.font 'JetBrainsMono Nerd Font'
      config.font_size = 16
      config.text_background_opacity = 1.0

      config.hide_tab_bar_if_only_one_tab = true

      config.window_background_opacity = 0.95
      config.macos_window_background_blur = 12
      config.window_decorations = "RESIZE"

      config.initial_cols = 120
      config.initial_rows = 40

      config.default_cursor_style = "BlinkingBlock"
      config.cursor_blink_rate = 200
      config.cursor_blink_ease_in = "Constant" 
      config.cursor_blink_ease_out = "Constant"

      config.text_blink_rate = 250

      return config
    '';
  };
}
