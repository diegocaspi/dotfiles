{
  lib,
  pkgs,
  config,
  ...
}:
{
  users.users.diegocaspi = {
    name = "diegocaspi";
    home = lib.mkDefault "/Users/diegocaspi";
    shell = pkgs.zsh;
  };

  home-manager.users.diegocaspi = import ../../../../home/diegocaspi/${config.networking.hostName}.nix;
}
