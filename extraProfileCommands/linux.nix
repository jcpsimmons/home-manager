{ ... }:

{
  # Show applications in launcher
  # Recache fonts so they show up without reboot
  home.extraProfileCommands = ''
    if [[ -d "$out/share/applications" ]] ; then
      ${pkgs.desktop-file-utils}/bin/update-desktop-database $out/share/applications
    fi
    
    fc-cache --force -r
  '';
}
