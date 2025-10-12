{
  lib,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    zsh-syntax-highlighting
    zsh-autosuggestions
  ];

  programs = {
    yazi = {
      enable = lib.mkDefault true;
    };

    atuin = {
      enable = lib.mkDefault true;
      settings = {
        auto_sync = true;
        sync_frequency = "5m";
        style = "compact";
      };
    };

    zoxide = {
      enable = true;
    };
  };
}
