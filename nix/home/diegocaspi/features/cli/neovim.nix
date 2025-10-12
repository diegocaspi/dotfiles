{ lib, ... }:
{
  programs.neovim = {
    enable = lib.mkDefault true;
    vimAlias = true;
    withNodeJs = true;
  };
}
