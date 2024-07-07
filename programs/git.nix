{ pkgs, lib, config, ... }:

{
  programs.git = {
    enable = true;
    userName = "Josh Simmons";
    userEmail = "joshcsimmons@hey.com";
    extraConfig.push.default = "matching";
    ignores = [
      "node_modules"
      ".DS_Store"
    ];
    includes = [
      {
        contents.user = {
          email = "joshcsimmons@hey.com";
          name = "Josh Simmons";
        };
      };
    ];
  };
}
