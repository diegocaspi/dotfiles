{
  lib,
  ...
}:
{
  home = {
    username = "diegocaspi";
    stateVersion = lib.mkDefault "25.05";
  };

  programs = {
    home-manager.enable = true;
  };
}
