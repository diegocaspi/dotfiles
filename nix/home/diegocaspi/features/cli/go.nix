{ lib, ... }:
{
  programs.go = {
    enable = lib.mkDefault true;
  };
}

