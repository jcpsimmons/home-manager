Clone this in ~/.config then run the following:

nix run home-manager -- switch --flake '.#yourOutputMachineName' -b bak

For subsequent updates you can run `hms` from the flake dir to update.
