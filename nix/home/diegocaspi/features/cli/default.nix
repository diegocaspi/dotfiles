{ pkgs, ... }:
{
  imports = [
    ./bun.nix
    ./docker.nix
    ./kube.nix
    ./neovim.nix
    ./git.nix
    ./zsh.nix
    ./zellij.nix
    ./direnv.nix
  ];

  home.packages = with pkgs; [
    aerospace
    eza
    btop
    devbox # to be deleted
    starship
    claude-code
    rustup
    devenv
  ];
}
