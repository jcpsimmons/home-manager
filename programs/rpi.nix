{ ... }:

{
  imports = [ ./linux.nix ];
  programs.zsh.shellAliases = {
    fanOn = "pinctrl FAN_PWM op dl";
    fanOff = "pinctrl FAN_PWM op dh";
  };
}
